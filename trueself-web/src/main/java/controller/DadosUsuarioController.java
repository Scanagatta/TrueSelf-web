package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import dao.UsuarioDao;
import model.Empresa;
import model.Pessoa;
import model.Usuario;

@Controller
@Path("/dadosUsuario")
public class DadosUsuarioController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDao dao;

	@Get("/empresa")
	public void empresa() {
	}

	@Get("/perfil")
	public void perfil() {
	}

	@Get("/homePessoa")
	public void homePessoa() {
		result.include("pessoaLogada", IndexController.getPessoaLogada());
		result.redirectTo(HomeController.class).home();
	}

	@Get("/homeEmpresa")
	public void homeEmpresa() {
		result.include("empresaLogada", IndexController.getEmpresaLogada());
		result.redirectTo(HomeController.class).home();
	}

	@Post("/alterarPessoa")
	public void alterarPessoa(Pessoa pessoa) {
		dao.salvar(pessoa);
		result.include("pessoaLogada", IndexController.getPessoaLogada());
		result.redirectTo(HomeController.class).home();
	}

	@Post("/alterarEmpresa")
	public void alterarEmpresa(Empresa empresa) {
		dao.salvar(empresa);
		result.include("empresaLogada", IndexController.getEmpresaLogada());
		result.redirectTo(HomeController.class).home();
	}

	@Get("/sair")
	public void sair() {
		result.redirectTo(IndexController.class).index();
	}

	@Get("/alterarSenha")
	public void alterarSenha() {
		result.redirectTo(AlterarSenhaController.class).alterar();
	}

}
