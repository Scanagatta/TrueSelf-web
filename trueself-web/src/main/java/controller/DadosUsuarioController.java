package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import dao.UsuarioDao;
import model.Usuario;

@Controller
@Path("/dadosUsuario")
public class DadosUsuarioController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDao dao;

	@Get("/perfil")
	public void perfil() {
	}

	@Get("/home")
	public void home() {
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

	@Post("/alterar")
	public void alterar(Usuario usuario) {
		usuario.setCodigo(IndexController.getUsuarioLogado().getCodigo());
		usuario.setSenha(IndexController.getUsuarioLogado().getSenha());
		dao.salvar(usuario);
		IndexController.setUsuarioLogado(usuario);

		result.include("usuarioLogado", IndexController.getUsuarioLogado());
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