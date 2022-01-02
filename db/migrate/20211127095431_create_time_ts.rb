class CreateTimeTs < ActiveRecord::Migration[6.1]
  def change
    create_table :time_ts do |t|
      t.string :Department
      t.string :Regulation

      t.timestamps
    end
  end
end
