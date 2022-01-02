class CreateTimeTables < ActiveRecord::Migration[6.1]
  def change
    create_table :time_tables do |t|
      t.string :Department
      t.string :Regulation_2017
      t.string :Regulation_2013

      t.timestamps
    end
  end
end
