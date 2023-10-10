const imagensAmpliaveis = document.querySelectorAll('.imagem-ampliavel');
imagensAmpliaveis.forEach(function(imagemAmpliavel) {
  imagemAmpliavel.addEventListener('click', function() {
    if (imagemAmpliavel.classList.contains('ampliada')) {
      imagemAmpliavel.classList.remove('ampliada');
    } else {
      imagemAmpliavel.classList.add('ampliada');
    }
  });
});

