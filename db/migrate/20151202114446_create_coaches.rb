class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :company_name

      t.timestamps null: false
    end
  end
end
