package model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import dao.MeuCodigo;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@NamedQueries({ @NamedQuery(name = Usuario.PESQUISAR_LOGIN, query = "select email from Usuario where email = ?1"),
		@NamedQuery(name = Usuario.PESQUISAR_SENHA, query = "select senha from Usuario where email = ?1"),
		@NamedQuery(name = Usuario.PESQUISAR_CODIGO, query = "select codigo from Usuario where email = ?1"),
		@NamedQuery(name = Usuario.PESQUISAR_NOMES, query = "select codigo from Usuario where nome like ?1") })

public class Usuario implements MeuCodigo {

	public static final String PESQUISAR_LOGIN = "pesquisaLogin";
	public static final String PESQUISAR_SENHA = "pesquisaSenha";
	public static final String PESQUISAR_CODIGO = "pesquisaCodigo";
	public static final String PESQUISAR_NOMES = "pesquisaPorNome";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codigo;
	@Column(nullable = false)
	private String nome;
	@Column(nullable = false)
	private String email;
	@Column(nullable = false)
	private String senha;

	@Transient
	private String confirmaSenha;
	@Transient
	private String senhaAntiga;

	@Column
	private String telefone;
	@ManyToOne
	private Cidade cidade;
	@Column(nullable = false)
	private Integer qtdNeutro;
	@Column(nullable = false)
	private Integer qtdDemonio;
	@Column(nullable = false)
	private Integer qtdAnjo;
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Comentario> comentarios;

	@Column
	private String sexo;
	@Column
	private LocalDate dataNascimento;
	@Column
	private String estadoCivil;

	public Usuario() {
		// inicializar as quantidades com zero, se n elas n aparecem
		setQtdAnjo(0);
		setQtdDemonio(0);
		setQtdNeutro(0);
		comentarios = new ArrayList<Comentario>();
	}

	public Usuario(Integer codigo, String nome, String email, String senha, String confirmaSenha, String senhaAntiga,
			String telefone, Cidade cidade, Integer qtdNeutro, Integer qtdDemonio, Integer qtdAnjo,
			List<Comentario> comentarios, String sexo, LocalDate dataNascimento, String estadoCivil) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.confirmaSenha = confirmaSenha;
		this.senhaAntiga = senhaAntiga;
		this.telefone = telefone;
		this.cidade = cidade;
		this.qtdNeutro = qtdNeutro;
		this.qtdDemonio = qtdDemonio;
		this.qtdAnjo = qtdAnjo;
		this.comentarios = comentarios;
		this.sexo = sexo;
		this.dataNascimento = dataNascimento;
		this.estadoCivil = estadoCivil;
	}

	public void adicionarComentario(Comentario comentario) {
		comentarios.add(comentario);
	}

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
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

	public String getConfirmaSenha() {
		return confirmaSenha;
	}

	public void setConfirmaSenha(String confirmaSenha) {
		this.confirmaSenha = confirmaSenha;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public Cidade getCidade() {
		return cidade;
	}

	public void setCidade(Cidade cidade) {
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

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public LocalDate getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(LocalDate dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getSenhaAntiga() {
		return senhaAntiga;
	}

	public void setSenhaAntiga(String novaSenha) {
		this.senhaAntiga = novaSenha;
	}

}
