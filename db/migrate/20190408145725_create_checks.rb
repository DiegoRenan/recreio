class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.datetime :checkin
      t.datetime :checkout
      t.integer :days

      t.timestamps
    end
  end
end
