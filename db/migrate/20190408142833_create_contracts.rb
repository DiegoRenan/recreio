class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.datetime :checkin, unique: true
      t.datetime :checkout
      t.integer :parcelado
      t.string :status
      t.integer :day_payment
      t.decimal :valor
      t.decimal :valor_total
      t.float :desconto
      t.references :contract_models, foreign_key: true

      t.timestamps
    end
  end
end
