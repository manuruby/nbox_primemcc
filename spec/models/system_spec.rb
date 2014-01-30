require 'spec_helper'

describe System do
  let(:ent) { FactoryGirl.create(:enterprise) }
  let(:pro) { FactoryGirl.create(:project, enterprise: ent) }
  
  it "has a valid factory" do
    FactoryGirl.create(:system, project: pro).should be_valid
  end
  
  it "has to belong to a project" do
    expect { FactoryGirl.create(:system) }.to raise_error(
      ActiveRecord::RecordInvalid
    )    
  end
  
  it "is invalid without a code" do
    expect { FactoryGirl.create(:system, code: nil, project: pro) }.to raise_error(
      ActiveRecord::RecordInvalid
    )
  end
  it "is invalid without a title" do
    expect { FactoryGirl.create(:system, title: nil, project: pro) }.to raise_error(
      ActiveRecord::RecordInvalid
    )
  end
end
