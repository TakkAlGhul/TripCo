class Plan < ApplicationRecord
  belongs_to :user
  has_many :contents, inverse_of: :plan, dependent: :destroy
  accepts_nested_attributes_for :contents, allow_destroy: true

  def self.search(search)
    return Plan.all unless search
    Plan.where(['title LIKE ?', "%#{search}%"])
  end
end
