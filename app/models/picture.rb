class Picture < ApplicationRecord
  before_save { self.name = name.downcase }
  validates :name, presence: true
  validates :url, presence: true, uniqueness:  { case_sensitive: false }

end
