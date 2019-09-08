class Plan < ApplicationRecord
  belongs_to :users
  has_many :contents
  accepts_nested_attributes_for :contents 
end
