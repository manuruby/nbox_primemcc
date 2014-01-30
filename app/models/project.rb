class Project < ActiveRecord::Base
  validates :name, presence: true
  validates :enterprise, presence: true
  
  belongs_to :enterprise
  has_many :systems, dependent: :destroy
end
