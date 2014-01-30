require 'spec_helper'

describe Subsystem do
  let(:ent) { FactoryGirl.create(:enterprise) }
  let(:pro) { FactoryGirl.create(:project, enterprise: ent) }
  let(:sys) { FactoryGirl.create(:system, project: pro) }
  
  it "has a valid factory" do
    FactoryGirl.create(:subsystem, system: sys).should be_valid
  end
  
  it "has to belong to a system" do
    expect { FactoryGirl.create(:subsystem) }.to raise_error(
      ActiveRecord::RecordInvalid
    )    
  end    
  
  it "is invalid without a code" do
    expect { FactoryGirl.create(:subsystem, code: nil, system: sys) }.to raise_error(
      ActiveRecord::RecordInvalid
    )
  end
  
  it "is invalid without a title" do
    expect { FactoryGirl.create(:subsystem, title: nil, system: sys) }.to raise_error(
      ActiveRecord::RecordInvalid
    )
  end    
end
