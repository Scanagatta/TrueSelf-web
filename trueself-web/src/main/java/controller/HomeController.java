package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import dao.EstadoDao;
import dao.UsuarioDao;
import model.Usuario;

@Controller
@Path("/home")
public class HomeController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDao dao;

	@Inject
	private EstadoDao estadoDao;

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
		result.include("estados", estadoDao.listarEstados());
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.redirectTo(DadosUsuarioController.class).perfil();

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