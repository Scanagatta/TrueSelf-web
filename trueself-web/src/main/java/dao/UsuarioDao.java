package dao;

import java.util.List;

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

	// metodo que descobre o codigo do usuario atraves do email dele
	// e procura esse usuario pelo codigo colocando no objeto com o find
	public Usuario pesquisarUsuario(String email) {
		conectar();
		try {
			CidadeDao cidadeDao = new CidadeDao();
			EstadoDao estadoDao = new EstadoDao();

			TypedQuery<Integer> tq = em.createNamedQuery(Usuario.PESQUISAR_CODIGO, Integer.class);
			tq.setParameter(1, email);
			Usuario usuario = em.find(Usuario.class, tq.getSingleResult());
			
			usuario.getCidade().setEstado(estadoDao.pesquisarEstado(usuario.getCidade().getCodigo()));
			usuario.setCidade(cidadeDao.pesquisarCidade(usuario.getCidade().getCodigo()));
			return usuario;
		} catch (NoResultException e) {
			return null;
		} finally {
			desconectar();
		}
	}
	
	public Usuario pesquisarUsuarioPorCodigo(Integer codigo) {
		conectar();
		try {
			TypedQuery<Usuario> tq = em.createNamedQuery(Usuario.PESQUISAR_POR_CODIGO, Usuario.class);
			tq.setParameter(1, codigo);
			return tq.getSingleResult();
		} catch (NoResultException e) {
			return null;
		} finally {
			desconectar();
		}
	}

	public List<Usuario> listarPesquisa(String nome) {
		conectar();
		List<Usuario> result = null;
		try {

			result = em.createQuery("select us from Usuario us where lower(us.nome) LIKE :nome", Usuario.class)
					.setParameter("nome", "%" + nome + "%").getResultList();
			return result;

		} catch (NoResultException e) {
			return null;
		} finally {
			desconectar();
		}
	}

}
