class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :description
      t.integer :difficulty
      t.integer :status

      t.timestamps null: false
    end
  end
end
