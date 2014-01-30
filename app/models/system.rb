#app/models/systems.rb
class System < ActiveRecord::Base
  validates :code, presence: true
  validates :title, presence: true
  validates :project, presence: true
  
  belongs_to :project
  has_many :subsystems
end
