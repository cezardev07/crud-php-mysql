<?php 
    define("HOST", "localhost");  // Nome do host do banco de dados
    define("USER", "root");       // Usuário do banco de dados
    define("PASS", "");           // Senha do usuário
    define("BASE", "cadastro");   // Nome do banco de dados

    $conn = new mysqli(HOST, USER, PASS, BASE);
?>