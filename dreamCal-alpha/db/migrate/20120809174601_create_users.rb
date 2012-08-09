class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :goal_title
      t.text :goal_description

      t.timestamps
    end
  end
end
