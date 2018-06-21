package dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import org.jboss.logging.Param;

import model.Usuario;

@ApplicationScoped
public class UsuarioDao extends GenericDAO<Usuario> {

	public UsuarioDao() {
	}

	public String pesquisarLogin(String email) {
		conectar();
		try {
			TypedQuery<String> tq = em.createNamedQuery(Usuario.PESQUISAR_LOGIN, String.class);
			tq.setParameter(1, email);
			return tq.getSingleResult();
		} catch (NoResultException e) {
			return null;

		} finally {
			desconectar();
		}
	}

	public String pesquisarSenha(String email) {
		conectar();
		try {
			TypedQuery<String> tq = em.createNamedQuery(Usuario.PESQUISAR_SENHA, String.class);
			tq.setParameter(1, email);
			return tq.getSingleResult();
		} catch (NoResultException e) {
			return null;
		} finally {
			desconectar();
		}
	}

	// metodo que descobre o codigo do usuario atraves do email dele
	// e procura esse usuario pelo codigo colocando no objeto com o find
	public Usuario pesquisarUsuario(String email) {
		conectar();
		try {
			TypedQuery<Integer> tq = em.createNamedQuery(Usuario.PESQUISAR_CODIGO, Integer.class);
			tq.setParameter(1, email);
			Usuario usuario = em.find(Usuario.class, tq.getSingleResult());

			return usuario;
		} catch (NoResultException e) {
			return null;
		} finally {
			desconectar();
		}
	}
	

	public List<Usuario> listarPesquisa(String nome){
		conectar();
		try {
			TypedQuery<Usuario> tq = em.createNamedQuery(Usuario.PESQUISAR_NOMES, Usuario.class);
			tq.setParameter(1, nome);
			return tq.getResultList();
		} catch (NoResultException e) {
			return null;
		} finally {
			desconectar();
		}
	}

}
