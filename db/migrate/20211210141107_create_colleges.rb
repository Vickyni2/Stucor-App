class CreateColleges < ActiveRecord::Migration[6.1]
  def change
    create_table :colleges do |t|
      t.string :clg_code
      t.string :clg_name
      t.string :clg_addr

      t.timestamps
    end
  end
end
