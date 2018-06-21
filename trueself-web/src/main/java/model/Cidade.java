package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import dao.MeuCodigo;

@Entity
@NamedQueries({
		@NamedQuery(name = Cidade.PESQUISAR_POR_ESTADO, query = "select codigo, nome, estado from Cidade where estado = ?1") })
public class Cidade implements MeuCodigo {

	public static final String PESQUISAR_POR_ESTADO = "pesquisaCodigoCidade";

	@Id
	private Integer codigo;
	@Column
	private String nome;
	@ManyToOne
	private Estado estado;

	public Cidade() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cidade(Integer codigo, String nome, Estado estado) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.estado = estado;
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

	public Estado getEstado() {
		return estado;
	}

	public void setEstado(Estado estado) {
		this.estado = estado;
	}

}