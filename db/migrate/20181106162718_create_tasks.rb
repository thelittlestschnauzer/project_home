class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :status
      t.integer :list_id
      t.integer :room_id

      t.timestamps
    end
  end
end
