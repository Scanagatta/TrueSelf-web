package model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

import dao.MeuCodigo;

@Entity
@NamedQueries({ @NamedQuery(name = Usuario.PESQUISAR_LOGIN, query = "select email from Usuario where email = ?1"),
		@NamedQuery(name = Usuario.PESQUISAR_SENHA, query = "select senha from Usuario where email = ?1"),
		@NamedQuery(name = Usuario.PESQUISAR_CODIGO, query = "select codigo from Usuario where email = ?1") })

public class Usuario implements MeuCodigo {

	public static final String PESQUISAR_LOGIN = "pesquisaLogin";
	public static final String PESQUISAR_SENHA = "pesquisaSenha";
	public static final String PESQUISAR_CODIGO = "pesquisaCodigo";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codigo;
	@Column(nullable = false)
	private String nome;
	@Column(nullable = false)
	private String email;
	@Column(nullable = false)
	private String senha;
	@Column(nullable = false)
	private String confirmaSenha;
	@Column
	private String telefone;
	@Column
	private String cidade;
	@Column(nullable = false)
	private Integer qtdNeutro;
	@Column(nullable = false)
	private Integer qtdDemonio;
	@Column(nullable = false)
	private Integer qtdAnjo;
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Comentario> comentarios;
	@Column(nullable = false)
	private Integer tipo;

	public Usuario() {
		// inicializar as quantidades com zero, se n elas n aparecem
		setQtdAnjo(0);
		setQtdDemonio(0);
		setQtdNeutro(0);
		comentarios = new ArrayList<Comentario>();
	}

	public Usuario(String nome, String email, String senha, String telefone, String cidade, Integer qtdNeutro,
			Integer qtdDemonio, Integer qtdAnjo, List<Comentario> comentarios) {
		super();
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.telefone = telefone;
		this.cidade = cidade;
		this.qtdNeutro = qtdNeutro;
		this.qtdDemonio = qtdDemonio;
		this.qtdAnjo = qtdAnjo;
		this.comentarios = comentarios;
	}

	public void adicionarComentario(Comentario comentario) {
		comentarios.add(comentario);
	}

	@Override
	public String toString() {
		return nome;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public Integer getQtdNeutro() {
		return qtdNeutro;
	}

	public void setQtdNeutro(Integer qtdNeutro) {
		this.qtdNeutro = qtdNeutro;
	}

	public Integer getQtdDemonio() {
		return qtdDemonio;
	}

	public void setQtdDemonio(Integer qtdDemonio) {
		this.qtdDemonio = qtdDemonio;
	}

	public Integer getQtdAnjo() {
		return qtdAnjo;
	}

	public void setQtdAnjo(Integer qtdAnjo) {
		this.qtdAnjo = qtdAnjo;
	}

	public List<Comentario> getComentarios() {
		return comentarios;
	}

	public void setComentarios(List<Comentario> comentarios) {
		this.comentarios = comentarios;
	}

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public String getConfirmaSenha() {
		return confirmaSenha;
	}

	public void setConfirmaSenha(String confirmaSenha) {
		this.confirmaSenha = confirmaSenha;
	}

	public Integer getTipo() {
		return tipo;
	}

	public void setTipo(Integer tipo) {
		this.tipo = tipo;
	}

}
