CREATE TABLE produto (
  idProduto INT NOT NULL AUTO_INCREMENT,
  Nome_Produto VARCHAR(45) NULL,
  Preco_Normal DECIMAL(10, 2) NULL,
  Preco_Desconto DECIMAL(10, 2) NULL,
  PRIMARY KEY (idProduto)
);

CREATE TRIGGER tr_desconto BEFORE INSERT -- Antes de terminar a inserção
ON produto
FOR EACH ROW
SET NEW.Preco_Desconto = (NEW.Preco_Normal * 0.90);

INSERT INTO produto (Nome_Produto, Preco_Normal) VALUES ('Monitor', 1.00);

SELECT * FROM produto;

-- 1, 'Monitor', 1.00, 0.90