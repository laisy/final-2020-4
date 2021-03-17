require 'test_helper'

class EstoqueTest < ActiveSupport::TestCase
  test "criar estoque" do
    usuario = Usuario.new nome: "victor", login: "victor@gmailcom", senha: "11111111"
    usuario.save
    produto = Produto.new nome: "carne", categoria: "boi", qtd_estoque: 12.2, preco: 10.0
    produto.save
    estoque = Estoque.new nome: "Estoque carne bovina", data_criacao: "10/01/2021", produtos_id: produto.id, categoria: "Bovina", valor_total: "29.90", peso: "15 kg", data_validade: "12/06/2021"
    assert estoque.save
  end
end
