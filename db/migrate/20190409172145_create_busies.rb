class CreateBusies < ActiveRecord::Migration[5.2]
  def change
    create_table :busies do |t|
      t.datetime :reservado

      t.timestamps
    end
  end
end
