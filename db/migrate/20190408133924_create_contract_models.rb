class CreateContractModels < ActiveRecord::Migration[5.2]
  def change
    create_table :contract_models do |t|
      t.string :title, unique: true
      t.text :body

      t.timestamps
    end
  end
end
