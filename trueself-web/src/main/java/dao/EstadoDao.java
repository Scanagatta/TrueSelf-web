package dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.persistence.NoResultException;

import model.Estado;
import model.Usuario;

@ApplicationScoped
public class EstadoDao extends GenericDAO<Estado> {

	public EstadoDao() {
	}

	// metodo que descobre o codigo do usuario atraves do email dele
	// e procura esse usuario pelo codigo colocando no objeto com o find
	public Estado pesquisarEstado(Integer codigo) {
		conectar();
		try {

			Estado estado = em.find(Estado.class, codigo);

			return estado;
		} catch (NoResultException e) {
			return null;
		} finally {
			desconectar();
		}
	}

	public List<Estado> listarEstados() {
		conectar();
		List<Estado> result = null;
		try {

			result = em.createQuery("select es from Estado es", Estado.class).getResultList();
			return result;

		} catch (NoResultException e) {
			return null;
		} finally {
			desconectar();
		}
	}

}
