class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :activity_description
      t.datetime :date
      t.decimal :hours
      t.text :note
      t.references :user, index: true
      t.references :client, index: true
      t.references :project, index: true
      t.boolean :billable
      t.boolean :posted
      t.datetime :posted_date

      t.timestamps
    end
  end
end
