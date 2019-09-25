class Content < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :plan, optional: true, inverse_of: :contents
  mount_uploader :image, ImageUploader

  validates :place_name, :description, :image, :plan_id, :time, presence: true
end
