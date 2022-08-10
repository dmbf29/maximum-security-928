class Criminal < ApplicationRecord
  belongs_to :prison # criminal.prison -> INSTANCE of a prison
  validates :name, presence: true
  validates :image_url, presence: true
end
