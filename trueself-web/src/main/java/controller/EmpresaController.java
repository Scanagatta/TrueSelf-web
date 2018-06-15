package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;

@Controller
@Path("/empresa")
public class EmpresaController {

	@Inject
	private Result result;

	// tem que ter sempre esse primeiro metodo em branco é a primeira URL
	// ele vai ir para a pag jsp onde de lá o form envia os dados para o metodo
	// cadastrar
//	@Get("/formulario")
//	public void formulario() {
//		result.include("confederacaos", Banco.confederacaos);
//
//	}
//
//	@Post("/cadastrar")
//	public void cadastrar(Equipe equipe) {
//		int posicao = -1;
//		for (int i = 0; i < Banco.equipes.size(); i++) {
//			Equipe e = Banco.equipes.get(i);
//			if (e.getCodigo().equals(equipe.getCodigo())) {
//				posicao = i;
//			}
//		}
//		for (Confederacao confederacao : Banco.confederacaos) {
//			if (confederacao.getCodigo().equals(equipe.getConfederacao().getCodigo())) {
//				equipe.setConfederacao(confederacao);
//				break;
//			}
//		}
//		if (posicao != -1) {
//			Banco.equipes.set(posicao, equipe);
//		} else {
//
//			Banco.equipes.add(equipe);
//		}
//
//		result.redirectTo(this).listar();
//
//	}
//
//	@Get("/listar")
//	public void listar() {
//		// seta na variavel do jsp a lista
//		result.include("equipes", Banco.equipes);
//
//	}
//
//	@Get("/listarPontos")
//	public void listarPontos() {
//		// seta na variavel do jsp a lista
//		result.include("equipes", Banco.equipes);
//
//	}
//
//	@Get("/editar/{codigo}")
//	public void editar(Long codigo) {
//		for (Equipe equipe : Banco.equipes) {
//			if (equipe.getCodigo().equals(codigo)) {
//				result.include("equipe", equipe);
//				break;
//			}
//		}
//		result.redirectTo(this).formulario();
//
//	}

}
