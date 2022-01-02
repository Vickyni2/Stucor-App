class CreateWhLegents < ActiveRecord::Migration[6.1]
  def change
    create_table :wh_legents do |t|
      t.string :WH_CODE
      t.string :DETAILS

      t.timestamps
    end
  end
end
