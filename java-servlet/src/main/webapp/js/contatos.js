function validateForm() {
    const nomeElement = document.getElementById('validationCustomNome');
    const destinoElement = document.getElementById('validationCustomDestino');
    const telefoneElement = document.getElementById('validationCustomTelefone');
    const emailElement = document.getElementById('validationCustomEmail');
    const mensagemElement = document.getElementById('validationCustomMensagem');

    const regexNome = /^[a-zA-Z\s]+$/;
    const regexTelefone = /^[0-9]{2,}\s[0-9]{4,}-[0-9]{4}$/;
    const regexEmail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

    let isValid = true;

    if (!regexNome.test(nomeElement.value)) {
        isValid = false;
        nomeElement.classList.add('is-invalid');
    } else {
        nomeElement.classList.remove('is-invalid');
        nomeElement.classList.add('is-valid');
    }

    if (!regexNome.test(destinoElement.value)) {
        isValid = false;
        destinoElement.classList.add('is-invalid');
    } else {
        destinoElement.classList.remove('is-invalid');
        destinoElement.classList.add('is-valid');
    }

    if (!regexTelefone.test(telefoneElement.value)) {
        isValid = false;
        telefoneElement.classList.add('is-invalid');
    } else {
        telefoneElement.classList.remove('is-invalid');
        telefoneElement.classList.add('is-valid');
    }

    if (!regexEmail.test(emailElement.value)) {
        isValid = false;
        emailElement.classList.add('is-invalid');
    } else {
        emailElement.classList.remove('is-invalid');
        emailElement.classList.add('is-valid');
    }

    if (mensagemElement.value === '') {
        isValid = false;
        mensagemElement.classList.add('is-invalid');
    } else {
        mensagemElement.classList.remove('is-invalid');
        mensagemElement.classList.add('is-valid');
    }

    return isValid;
}


const form = document.querySelector('form');
form.addEventListener('submit', function (event) {
    if (!validateForm()) {
        event.preventDefault();
    }
});
