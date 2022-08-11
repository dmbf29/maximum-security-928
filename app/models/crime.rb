class Crime < ApplicationRecord
  has_many :convictions # crime.convictions
  has_many :criminals, through: :convictions
  validates :name, presence: true, uniqueness: true

  def to_label
    name.capitalize
  end
end
