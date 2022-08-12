class Criminal < ApplicationRecord
  belongs_to :prison # criminal.prison -> INSTANCE of a prison
  has_many :convictions, dependent: :destroy
  has_many :crimes, through: :convictions
  validates :name, presence: true
  has_one_attached :photo
  # validates :image_url, presence: true
end
