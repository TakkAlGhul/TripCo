class Plan < ApplicationRecord
  belongs_to :user
  has_many :contents, inverse_of: :plan
  accepts_nested_attributes_for :contents, allow_destroy: true

  def self.search(search)
    return Plan.all unless search
    Plan.where(['destination LIKE ?', "%#{search}%"])
  end
end
