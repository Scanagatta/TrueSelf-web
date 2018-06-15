package model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import dao.MeuCodigo;

@Entity
public class Empresa extends Usuario implements MeuCodigo{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer codigo;
	@Column
	private String fundador;
	@Column
	private String site;
	@Column
	private String rua;
	@Column
	private String numero;
	
	public Empresa() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Empresa(String nome, String email, String senha, String telefone, String cidade, Integer qtdNeutro,
			Integer qtdDemonio, Integer qtdAnjo, List<Comentario> comentarios) {
		super(nome, email, senha, telefone, cidade, qtdNeutro, qtdDemonio, qtdAnjo, comentarios);
		// TODO Auto-generated constructor stub
	}

	public Empresa(String fundador, String site, String rua) {
		super();
		this.fundador = fundador;
		this.site = site;
		this.rua = rua;
	}

	public String getFundador() {
		return fundador;
	}

	public void setFundador(String fundador) {
		this.fundador = fundador;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

}