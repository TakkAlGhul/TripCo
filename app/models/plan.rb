class Plan < ApplicationRecord
  belongs_to :user
  has_many :contents, inverse_of: :plan, dependent: :destroy
  accepts_nested_attributes_for :contents, allow_destroy: true

  validates :nickname, :encrypted_password, presence: true
  validates :email, uniqueness: true

  def self.search(search)
    return Plan.all unless search
    Plan.where(['title LIKE ?', "%#{search}%"])
  end
end
