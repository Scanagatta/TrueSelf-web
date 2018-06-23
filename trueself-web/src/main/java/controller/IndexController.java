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

	@Get("/busca")
	public void busca(String nome) {
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.include("nome", nome);
		result.include("usuarios", dao.listarPesquisa(nome));
		result.redirectTo(BuscaController.class).busca();
	}

	@Post("/login")
	public void login(Usuario usuario) {
		if (dao.pesquisarLogin(usuario.getEmail()) != null) {
			if (dao.pesquisarSenha(usuario.getEmail()).equals(usuario.getSenha())) {

				usuarioLogado = dao.pesquisarUsuario(usuario.getEmail());
				// usuarioLogado.getCidade().setEstado(estadoDao.pesquisarEstado(usuarioLogado.getCidade().getCodigo()));
				// usuarioLogado.setCidade(cidadeDao.pesquisarCidade(usuarioLogado.getCidade().getCodigo()));

				result.include("usuarioLogado", usuarioLogado);
				result.redirectTo(HomeController.class).home();

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
				result.include("usuarioLogado", usuarioLogado);
				result.redirectTo(HomeController.class).home();
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

	public static Usuario getUsuarioLogado() {
		return usuarioLogado;
	}

	public static void setUsuarioLogado(Usuario usuarioLogado) {
		IndexController.usuarioLogado = usuarioLogado;
	}

}
