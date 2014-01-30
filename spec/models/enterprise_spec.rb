#spec/models/enterprise_spec.rb
require 'spec_helper'

describe Enterprise do 
  it "is invalid without a name" do
     Enterprise.create(name: nil).should_not be_valid
  end
    
  it "has a valid factory" do
    FactoryGirl.create(:enterprise).should be_valid
  end
  
  it "allows to exist only one enterprise (singleton)" do   
    FactoryGirl.create(:enterprise)
    expect { FactoryGirl.create(:enterprise) }.to raise_error(
      ActiveRecord::RecordNotSaved
    )
  end
  
  it "has no project after deleted" do
    ent = FactoryGirl.create(:enterprise)
    pro = ent.projects.create(name: Faker::Company.name)
    pro_id = pro.id
    ent.destroy
    expect { Project.find(pro_id) }.to raise_error(
      ActiveRecord::RecordNotFound
    )
  end
end
