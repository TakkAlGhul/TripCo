class Content < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :plan, optional: true, inverse_of: :contents
  mount_uploader :image, ImageUploader
end
