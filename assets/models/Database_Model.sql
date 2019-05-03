CREATE TABLE `Telefone`
(
  `id` integer PRIMARY KEY,
  `numero` varchar(255) NOT NULL,
  `codigo` integer
);

CREATE TABLE `Pais`
(
  `id` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `codigo_telefone` integer UNIQUE NOT NULL
);

CREATE TABLE `Estado`
(
  `id` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `pais` integer
);

CREATE TABLE `Cidade`
(
  `id` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `estado` integer
);

CREATE TABLE `Address`
(
  `id` integer PRIMARY KEY,
  `rua` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `numero` integer,
  `complemento` varchar(255),
  `cidade` integer
);

CREATE TABLE `Centro_de_Evento`
(
  `id` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `address` integer
);

CREATE TABLE `Sala`
(
  `id` integer PRIMARY KEY,
  `numero` varchar(255) NOT NULL,
  `lotacao` integer NOT NULL,
  `centro_de_evento` integer
);

CREATE TABLE `Faixa_etaria`
(
  `id` integer PRIMARY KEY,
  `description` varchar(255) NOT NULL
);

CREATE TABLE `User`
(
  `CPF` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `nascimento` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) UNIQUE NOT NULL,
  `senha` varchar(255) NOT NULL COMMENT 'Colocar um salt pra guardar isso'
);

CREATE TABLE `Classe_evento`
(
  `id` integer PRIMARY KEY,
  `description` varchar(255) NOT NULL
);

CREATE TABLE `Evento`
(
  `id` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `faixa_etaria` integer,
  `tipo_evento` integer,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `admin` integer
);

CREATE TABLE `Apresentacao`
(
  `id` integer PRIMARY KEY,
  `evento` integer PRIMARY KEY,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `range` float8 NOT NULL
);

CREATE TABLE `Apresentacao_Sala`
(
  `id` integer PRIMARY KEY,
  `apresentacao` integer PRIMARY KEY,
  `sala` integer PRIMARY KEY
);

CREATE TABLE `Tipo_ingresso`
(
  `id` integer PRIMARY KEY,
  `description` varchar(255) NOT NULL,
  `base_price` float8 NOT NULL
);

CREATE TABLE `Ingresso`
(
  `id` integer PRIMARY KEY,
  `tipo_ingresso` integer,
  `apresentacao_e_sala` integer,
  `pessoa` integer
);

CREATE TABLE `Compra_Ingresso`
(
  `id` integer PRIMARY KEY,
  `ingresso` integer,
  `comprador` integer,
  `momento_compra` datetime NOT NULL,
  `valor` float8 NOT NULL
);

CREATE TABLE `Metodo_Pagamento`
(
  `id` integer PRIMARY KEY,
  `description` varchar(255) NOT NULL
);

CREATE TABLE `Pagamento`
(
  `id` integer PRIMARY KEY,
  `compra` integer,
  `momento_pag` datetime NOT NULL,
  `metodo` integer,
  `valor_pago` float8 NOT NULL,
  `troco` float8 NOT NULL
);

ALTER TABLE `Telefone` ADD FOREIGN KEY (`codigo`) REFERENCES `Pais` (`codigo_telefone`);

ALTER TABLE `Estado` ADD FOREIGN KEY (`pais`) REFERENCES `Pais` (`id`);

ALTER TABLE `Cidade` ADD FOREIGN KEY (`estado`) REFERENCES `Estado` (`id`);

ALTER TABLE `Address` ADD FOREIGN KEY (`cidade`) REFERENCES `Cidade` (`id`);

ALTER TABLE `Centro_de_Evento` ADD FOREIGN KEY (`address`) REFERENCES `Address` (`id`);

ALTER TABLE `Sala` ADD FOREIGN KEY (`centro_de_evento`) REFERENCES `Centro_de_Evento` (`id`);

ALTER TABLE `Evento` ADD FOREIGN KEY (`faixa_etaria`) REFERENCES `Faixa_etaria` (`id`);

ALTER TABLE `Evento` ADD FOREIGN KEY (`tipo_evento`) REFERENCES `Classe_evento` (`id`);

ALTER TABLE `Evento` ADD FOREIGN KEY (`admin`) REFERENCES `User` (`CPF`);

ALTER TABLE `Apresentacao` ADD FOREIGN KEY (`evento`) REFERENCES `Evento` (`id`);

ALTER TABLE `Apresentacao_Sala` ADD FOREIGN KEY (`apresentacao`) REFERENCES `Apresentacao` (`id`);

ALTER TABLE `Apresentacao_Sala` ADD FOREIGN KEY (`sala`) REFERENCES `Sala` (`id`);

ALTER TABLE `Ingresso` ADD FOREIGN KEY (`tipo_ingresso`) REFERENCES `Tipo_ingresso` (`id`);

ALTER TABLE `Ingresso` ADD FOREIGN KEY (`apresentacao_e_sala`) REFERENCES `Apresentacao_Sala` (`id`);

ALTER TABLE `Ingresso` ADD FOREIGN KEY (`pessoa`) REFERENCES `User` (`CPF`);

ALTER TABLE `Ingresso` ADD FOREIGN KEY (`id`) REFERENCES `Compra_Ingresso` (`ingresso`);

ALTER TABLE `Compra_Ingresso` ADD FOREIGN KEY (`comprador`) REFERENCES `User` (`CPF`);

ALTER TABLE `Pagamento` ADD FOREIGN KEY (`compra`) REFERENCES `Compra_Ingresso` (`id`);

ALTER TABLE `Pagamento` ADD FOREIGN KEY (`metodo`) REFERENCES `Metodo_Pagamento` (`id`);

ALTER TABLE `Telefone` ADD FOREIGN KEY (`codigo`) REFERENCES `Telefone` (`numero`);
