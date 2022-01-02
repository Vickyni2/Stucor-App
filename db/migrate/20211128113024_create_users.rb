class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :Dept
      t.string :email
      t.bigint :mobile
      t.string :regno
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :regno, unique: true
  end
end
