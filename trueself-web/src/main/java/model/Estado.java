package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import dao.MeuCodigo;

@SuppressWarnings("serial")
@Entity
public class Estado implements MeuCodigo {

	@Id
	private Integer codigo;
	@Column
	private String nome;

	public Estado() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Estado(Integer codigo, String nome) {
		super();
		this.codigo = codigo;
		this.nome = nome;
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

}
