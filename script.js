function calcularsoma() {
    var num1 = parseInt(document.getElementById("num1").value); //pega só o valor numérico do imput
    var num2 = parseInt(document.getElementById("num2").value); //pega só o valor numérico do imput
    var resultado = document.getElementById("resultado"); //só pra pegar o valor do "p"
    var feliz = document.getElementById("feliz");
    var java = document.getElementById("java");

    var soma = num1 + num2;

    if (feliz.checked == true) {
        alert("muito bem, vc fez a escolha certa")
        
    } else if (java.checked == true) {
        alert("é sério q vc escolheu java? 0-0")
    }

    resultado.innerHTML = "O resultado da soma foi: " + soma; //(variável q quer escrever)innerHTML acrescenta (+=) ou substitui (=) um texto do site
    //window.location.assign(coloque tua url) isso troca de página
    //window.alert ("mensagem q quiser") mostra mensagem na tela
    //window.confirm("mensagem q quiser") isso é um alert com botão de ok e cancelar
    //window.prompt("mensagem q quiser") um alert em q o usuário envia um valor

}