class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :content, null: false
      t.string :notes
      t.references :client, null: false

      t.timestamps null: false
    end
  end
end
