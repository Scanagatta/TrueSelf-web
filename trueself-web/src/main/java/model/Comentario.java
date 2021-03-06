package model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import dao.MeuCodigo;

@SuppressWarnings("serial")
@Entity
@NamedQueries({@NamedQuery(name = Comentario.GET_COMENTARIO, query = "from Comentario where codigo = ?1")})
	
public class Comentario implements MeuCodigo {

	public static final String GET_COMENTARIO = "pegaComentario";
	public static final String UPDATE_COMENTARIO = "atualizaComentario";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codigo;
	@Column
	private String comentario;
	// usuario que envia a mensagem
	// nao sei o que anotar
	@ManyToOne
	private Usuario usuarioEnvia;
	// usuario que recebe a mensagem
	@ManyToOne
	private Usuario usuarioRecebe;
	@Column
	private LocalDate data;
	// vai receber o index da imagem
	@Column
	private Integer classificacao;

	public Comentario() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Comentario(String comentario, Usuario usuarioEnvia, Usuario usuarioRecebe, LocalDate data,
			Integer classificacao) {
		super();
		this.comentario = comentario;
		this.usuarioEnvia = usuarioEnvia;
		this.usuarioRecebe = usuarioRecebe;
		this.data = data;
		this.classificacao = classificacao;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public Usuario getUsuarioEnvia() {
		return usuarioEnvia;
	}

	public void setUsuarioEnvia(Usuario usuarioEnvia) {
		this.usuarioEnvia = usuarioEnvia;
	}

	public Usuario getUsuarioRecebe() {
		return usuarioRecebe;
	}

	public void setUsuarioRecebe(Usuario usuarioRecebe) {
		this.usuarioRecebe = usuarioRecebe;
	}

	public LocalDate getData() {
		return data;
	}

	public void setData(LocalDate data) {
		this.data = data;
	}

	public Integer getClassificacao() {
		return classificacao;
	}

	public void setClassificacao(Integer classificacao) {
		this.classificacao = classificacao;
	}

	@Override
	public String toString() {
		return comentario;
	}

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

}
