package dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

@RequestScoped
public abstract class GenericDAO<T extends MeuCodigo> {

	@Produces
	protected EntityManagerFactory emf;
	
	@Produces
	protected EntityManager em;
	
	public GenericDAO() {
	}

	public List<T> listar(String query, Class<T> classe) {
		conectar();
		try {
			return em.createNamedQuery(query, classe).getResultList();
		} finally {
			desconectar();
		}
	}
	
	public boolean excluir(Long codigo, Class<T> classe) {
		conectar();
		EntityTransaction et = em.getTransaction();
		try {
			et.begin();
			T objeto = em.find(classe, codigo);
			if (objeto != null) {
				em.remove(objeto);	
			}
			et.commit();
		} catch (Exception  e) {
			et.rollback();
			return false;
		} finally {
			desconectar();
		}
		return true;
	}

	public boolean salvar(T objeto) {
		conectar();
		EntityTransaction et = em.getTransaction();
		try {
			et.begin();
			if (objeto.getCodigo() == null) {
				em.persist(objeto); // insert	
			} else {
				em.merge(objeto); // update	
			}
			et.commit();
		} catch (Exception  e) {
			et.rollback();
			return false;
		} finally {
			desconectar();
		}
		return true;
	}
		
	protected void conectar() {
		emf = Persistence.createEntityManagerFactory("unidade");
		em = emf.createEntityManager();		
	}
	
	protected void desconectar() {
		em.close();
		emf.close();
	}

}
