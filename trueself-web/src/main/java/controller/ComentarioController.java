package controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;

@Controller
@Path("/comentario")
public class ComentarioController {

//	@Inject
//	private Result result;
//
//	// tem que ter sempre esse primeiro metodo em branco � a primeira URL
//	// ele vai ir para a pag jsp onde de l� o form envia os dados para o metodo
//	// cadastrar
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
