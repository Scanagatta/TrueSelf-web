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
}
