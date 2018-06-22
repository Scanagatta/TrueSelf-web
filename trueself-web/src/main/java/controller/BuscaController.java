package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import dao.UsuarioDao;
import model.Usuario;

@Controller
@Path("/busca")
public class BuscaController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDao dao;

	@Get("/busca")
	public void busca() {
	}
	
	@Get("/pesquisa")
	public void pesquisa(String nome) {
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.include("nome", nome);
		result.include("usuarios", dao.listarPesquisa(nome));
		result.redirectTo(BuscaController.class).busca();
	}

	@Get("/alterarSenha")
	public void alterarSenha() {
		result.redirectTo(AlterarSenhaController.class).alterar();
	}

	@Get("/home")
	public void home() {
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.redirectTo(HomeController.class).home();
	}
	
	@Get("/visitante")
	public void visitante(Usuario visitado) {
		if(IndexController.getUsuarioLogado().equals(visitado)) {
			result.redirectTo(this).home();
		} else {
			System.out.println(visitado.getNome());
			result.include("usuarioLogado", IndexController.getUsuarioLogado());
			result.include("visitado", visitado);
			result.redirectTo(PerfilVisitanteController.class).perfilVisitante();
		}
	}

	@Get("/perfil")
	public void perfil() {
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.redirectTo(DadosUsuarioController.class).perfil();
	}

	@Get("/sair")
	public void sair() {
		result.redirectTo(IndexController.class).index();
	}
}
