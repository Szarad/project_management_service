class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.string :priority
      t.string :difficulty
      t.string :status
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
