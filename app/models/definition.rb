class Definition < ActiveRecord::Base
  validates :word, presence: true, uniqueness: true
  validates :meaning, presence: true
paginates_per 10
  def self.search(search)
    where("word LIKE ?", "%#{search}%")
  end

end
