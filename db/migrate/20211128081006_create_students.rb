class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :enail
      t.string :regno
      t.string :password

      t.timestamps
    end
    add_index :students, :regno, unique: true
  end
end
