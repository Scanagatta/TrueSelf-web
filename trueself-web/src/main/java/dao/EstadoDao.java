package dao;

import javax.enterprise.context.ApplicationScoped;
import javax.persistence.NoResultException;

import model.Estado;

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

}
