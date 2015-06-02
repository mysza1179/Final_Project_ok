class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :description
      t.string :difficulty
      t.string :status
      
      t.integer :project_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
