class CreateProjecttypes < ActiveRecord::Migration
  def change
    create_table :projecttypes do |t|
      t.string :project_type
      t.references :project, index: true

      t.timestamps
    end
  end
end
