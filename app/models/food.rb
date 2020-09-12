class Food < ApplicationRecord
  belongs_to :cuisine

  has_one_attached :food_image
  validates :name,  :size, :price, presence: true
  validate :acceptable_image

  def acceptable_image
    return unless food_image.attached?

    unless food_image.byte_size <= 1.megabyte
      errors.add(:food_image, "is too big")
    end

    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(food_image.content_type)
      errors.add(:food_image, "must be a JPEG or PNG")
    end

  end

end
