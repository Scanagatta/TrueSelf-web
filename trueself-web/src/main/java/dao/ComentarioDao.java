package dao;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import model.Comentario;

public class ComentarioDao extends GenericDAO<Comentario> {

	public ComentarioDao() {
		// TODO Auto-generated constructor stub
	}

	public Comentario pesquisarComentario(Integer codigo) {
		conectar();
		try {
			TypedQuery<Comentario> tq = em.createNamedQuery(Comentario.GET_COMENTARIO, Comentario.class);
			tq.setParameter(1, codigo);
			return tq.getSingleResult();
		} catch (NoResultException e) {
			return null;
		} finally {
			desconectar();
		}
	}

}
