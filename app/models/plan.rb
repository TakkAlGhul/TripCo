class Plan < ApplicationRecord
  belongs_to :user
  has_many :contents, inverse_of: :plan
  accepts_nested_attributes_for :contents, allow_destroy: true
end
