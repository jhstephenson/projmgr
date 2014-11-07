class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.text :description
      t.integer :client_id
      t.datetime :started
      t.datetime :completed
      t.integer :type_id
      t.decimal :estimated_time
      t.decimal :actual_time
      t.decimal :billing_rate
      t.references :client, index: true

      t.timestamps
    end
  end
end
