class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.references :coach, null: false
      t.boolean :first_login, :default => true

      t.timestamps null: false
    end
  end
end
