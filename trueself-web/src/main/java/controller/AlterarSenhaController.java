package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import dao.UsuarioDao;
import model.Usuario;

@Controller
@Path("/alterarSenha")
public class AlterarSenhaController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDao dao;

	@Get("/alterar")
	public void alterar() {
		result.include("usuario", IndexController.getUsuarioLogado());
	}

	@Get("/alterarSenha")
	public void alterarSenha(Usuario usuario) {
		IndexController.getUsuarioLogado().setSenha(usuario.getSenha());
		IndexController.getUsuarioLogado().setConfirmaSenha(usuario.getConfirmaSenha());
		dao.salvar(IndexController.getUsuarioLogado());
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.redirectTo(HomeController.class).home();
	}

	@Get("/busca")
	public void busca(String nome) {
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.include("nome", nome);
		result.include("usuarios", dao.listarPesquisa(nome));
		result.redirectTo(BuscaController.class).busca();
	}
	
	@Get("/home")
	public void home() {
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.redirectTo(HomeController.class).home();
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
