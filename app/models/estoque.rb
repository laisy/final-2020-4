class Estoque < ApplicationRecord
  validates :nome, presence: {message: "deve ser preenchido"}
  validates :data_criacao, presence: {message: "deve ser preenchido"}
  validates :produtos_id, presence: {message: "deve ser preenchido"}
  validates :categoria, presence: {message: "deve ser preenchido"}
  validates :valor_total, presence: {message: "deve ser preenchido"}
  validates :peso, presence: {message: "deve ser preenchido"}
  validates :data_validade, presence: {message: "deve ser preenchido"}
  has_many :produtos

  
end
