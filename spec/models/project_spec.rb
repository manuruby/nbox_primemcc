#spec/models.project_spec.rb
require 'spec_helper'

describe Project do
  let(:enterprise) { FactoryGirl.create(:enterprise) }
  
  it "has a valid factory" do
    FactoryGirl.create(:project, enterprise: enterprise).should be_valid
  end
  
  it "has to belong to an enterprise" do
    expect { FactoryGirl.create(:project) }.to raise_error(
      ActiveRecord::RecordInvalid
    )    
  end
  
  it "is invalid without a name" do
    expect { FactoryGirl.create(:project, name: nil, enterprise: enterprise) }.to raise_error(
      ActiveRecord::RecordInvalid
    )
  end
end
