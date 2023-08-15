class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.integer :amount
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
