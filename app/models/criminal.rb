class Criminal < ApplicationRecord
  belongs_to :prison # criminal.prison -> INSTANCE of a prison
  has_many :convictions, dependent: :destroy
  has_many :crimes, through: :convictions
  validates :name, presence: true
  # validates :image_url, presence: true
end
