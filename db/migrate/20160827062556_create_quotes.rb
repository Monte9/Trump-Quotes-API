class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :statement
      t.boolean :is_valid

      t.timestamps
    end
  end
end
