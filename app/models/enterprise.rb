#app/models/enterprise.rb
class Enterprise < ActiveRecord::Base
  has_many :projects, dependent: :destroy
  validates :name, presence: true
  before_create :allow_only_one_row
  
  def allow_only_one_row
    ( Enterprise.count == 0 )
  end      
end
