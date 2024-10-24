CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    endereco VARCHAR(200)
);

CREATE TABLE Funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    telefone VARCHAR(15),
    email VARCHAR(100),
    salario DECIMAL(10, 2)
);

CREATE TABLE Veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano INT NOT NULL,
    cor VARCHAR(20),
    preco DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) DEFAULT 'Disponível'  -- Definindo o valor padrão
);

CREATE TABLE Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_funcionario INT,
    id_veiculo INT,
    data_venda DATE NOT NULL,
    valor_venda DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo)
);

CREATE TABLE Manutencoes (
    id_manutencao INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo INT,
    descricao TEXT,
    data_manutencao DATE NOT NULL,
    custo DECIMAL(10, 2),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo)
);
