class CreateSubsystems < ActiveRecord::Migration
  def change
    create_table :subsystems do |t|
      t.string :code
      t.string :title
      t.references :system, index: true

      t.timestamps
    end
  end
end
