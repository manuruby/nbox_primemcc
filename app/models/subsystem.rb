class Subsystem < ActiveRecord::Base
  validates :system, presence: true
  validates :code, presence: true
  validates :title, presence: true
  
  belongs_to :system
end
