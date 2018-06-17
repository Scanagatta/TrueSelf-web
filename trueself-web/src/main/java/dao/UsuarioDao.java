package dao;

import javax.enterprise.context.ApplicationScoped;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

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
	
//	public Usuario pesquisarUsuario(String email) {
//		conectar();
//		try {
//			TypedQuery<Usuario> tq = em.createNamedQuery(Usuario.PESQUISAR_USUARIO, Usuario.class);
//			tq.setParameter(1, email);
//			return tq.getSingleResult();
//		} catch (NoResultException e) {
//			return null;
//		} finally {
//			desconectar();
//		}
//	}
}
