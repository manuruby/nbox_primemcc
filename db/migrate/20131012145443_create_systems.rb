class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :code
      t.string :title
      t.references :project, index: true

      t.timestamps
    end
  end
end
