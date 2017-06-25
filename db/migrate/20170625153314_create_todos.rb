class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :completed?
      t.string :boolean
      t.string :task
      t.time :time
      t.integer :amount
      t.string :location

      t.timestamps null: false
    end
  end
end
