SELECT id, nomeProd "Nome do Produto", descricao, categoria, valor FROM produtos;

-- Produtos com preços MAIORES que R$500
SELECT id, nomeProd "Nome do Produto", descricao, categoria, valor FROM produtos
WHERE valor > 500;

-- Produtos com preços MENORES QUE R$500
SELECT id, nomeProd "Nome do Produto", descricao, categoria, valor FROM produtos
WHERE valor < 500;

UPDATE produtos SET valor = 1099
WHERE id = 2;

SELECT id, nomeProd "Nome do Produto", descricao, categoria, valor FROM produtos;