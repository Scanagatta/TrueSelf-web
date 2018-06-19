package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import dao.UsuarioDao;

@Controller
@Path("/home")
public class HomeController {

	@Inject
	private Result result;
	
	@Inject
	private UsuarioDao dao;

	@Get("/home")
	public void home() {

	}

	@Get("/busca")
	public void busca(String nome) {
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.include("nome", nome);
		result.include("usuarios", dao.listarPesquisa(nome));
		result.redirectTo(BuscaController.class).busca();
	}
	
	@Get("/perfil")
	public void perfil() {
		if(IndexController.getUsuarioLogado().getTipo() == 1) {
			result.include("usuarioLogado", IndexController.getUsuarioLogado());
			result.redirectTo(DadosUsuarioController.class).perfil();
		} else if(IndexController.getUsuarioLogado().getTipo() == 2) {
			result.include("usuarioLogado", IndexController.getUsuarioLogado());
			result.redirectTo(DadosUsuarioController.class).empresa();
		}
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
