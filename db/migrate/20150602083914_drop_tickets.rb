class DropTickets < ActiveRecord::Migration
  def up
    drop_table :tickets
  end

  def down
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.string :priority
      t.string :difficulty
      t.string :status
      t.references :projects

      t.timestamps        
    end
    add_index :tickets, :project_id
  end
end
