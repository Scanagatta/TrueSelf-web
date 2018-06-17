package model;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import dao.MeuCodigo;

@Entity
public class Pessoa extends Usuario implements MeuCodigo {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer codigo;
	@Column
	private String sexo;
	@Column
	private LocalDate dataNascimento;
	@Column
	private String estadoCivil;

	public Pessoa() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pessoa(String nome, String email, String senha, String telefone, String cidade, Integer qtdNeutro,
			Integer qtdDemonio, Integer qtdAnjo, List<Comentario> comentarios) {
		super(nome, email, senha, telefone, cidade, qtdNeutro, qtdDemonio, qtdAnjo, comentarios);
		// TODO Auto-generated constructor stub
	}

	public Pessoa(String sexo, LocalDate dataNascimento, String estadoCivil) {
		super();
		this.sexo = sexo;
		this.dataNascimento = dataNascimento;
		this.estadoCivil = estadoCivil;
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

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

}
