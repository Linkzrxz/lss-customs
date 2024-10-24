<?php

$host = 'localhost';  
$dbname = 'nome_do_seu_banco';  
$username = 'root';  
$password = '';  

try {
   
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    
    
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    
    echo "Conexão bem-sucedida com o banco de dados!";
} catch (PDOException $e) {
   
    echo "Erro na conexão com o banco de dados: " . $e->getMessage();
}
?>