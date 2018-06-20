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
@Path("/index")
public class IndexController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDao dao;

	private static Usuario usuarioLogado;

	@Get("/index")
	public void index() {
	}

	@Post("/login")
	public void login(Usuario usuario) {
		if (dao.pesquisarLogin(usuario.getEmail()) != null) {
			if (dao.pesquisarSenha(usuario.getEmail()).equals(usuario.getSenha())) {

				usuarioLogado = dao.pesquisarUsuario(usuario.getEmail());

				result.redirectTo(this).home();

			} else {
				String senha = "vazia";
				result.include("senhaIncorreta", senha);
				result.redirectTo(this).index();
			}
		} else {
			String email = "vazio";
			result.include("emailNaoExiste", email);
			result.redirectTo(this).index();
		}
	}

	@Post("/cadastrar")
	public void cadastrar(Usuario usuario) {
		if (dao.pesquisarLogin(usuario.getEmail()) == null) {
			if (usuario.getSenha().equals(usuario.getConfirmaSenha())) {
				dao.salvar(usuario);
				usuarioLogado = usuario;
				result.redirectTo(this).home();
			} else {
				String senha = "vazia";
				result.include("senhasDiferentes", senha);
				result.redirectTo(this).index();
			}
		} else {
			String email = "vazio";
			result.include("emailJaCadastrado", email);
			result.redirectTo(this).index();

		}
	}

	@Get("/home")
	public void home() {
		result.include("usuarioLogado", usuarioLogado);
		result.redirectTo(HomeController.class).home();

	}

	public static Usuario getUsuarioLogado() {
		return usuarioLogado;
	}

}
