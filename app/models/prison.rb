class Prison < ApplicationRecord
  has_many :criminals # prison.criminals
  validates :name, presence: true
  validates :banner_url, presence: true
  # before_destroy :reassign_criminals

  # def reassign_criminals
  #   criminals.each do |criminal|
  #     prison = Prison.all.sample
  #     criminal.prison = prison
  #     criminal.save
  #   end
  # end
end

# prison.destroy
# error, you cant do this foreign_key restraint
