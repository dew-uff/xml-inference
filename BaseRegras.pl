item(ID, PRODUTO, QUANTIDADE, PRECO_UNIT) :- produto(ID, PRODUTO), quantidade(ID, QUANTIDADE), preco_unit(ID, PRECO_UNIT).
itens_pedido(ID, ITEM) :- item(ID, ITEM).
item(ID, PRODUTO, QUANTIDADE, PRECO_UNIT) :- produto(ID, PRODUTO), quantidade(ID, QUANTIDADE), preco_unit(ID, PRECO_UNIT).
itens_pedido(ID, ITEM) :- item(ID, ITEM).
