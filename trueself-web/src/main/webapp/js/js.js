/**
 * 
 */

function carregarImagem(valor){
	imagem = document.getElementById(imagem);
	if(valor == 1){
		imagem.src("https://png.icons8.com/color/50/000000/angel.png");
	} else if (valor == 2){
		imagem.src("https://png.icons8.com/color/50/000000/lucifer.png");
	} else {
		imagem.src("https://png.icons8.com/color/50/000000/question-mark.png");
	}
}