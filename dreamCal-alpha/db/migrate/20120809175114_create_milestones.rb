class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :title
      t.text :description
      t.date :earliest
      t.date :latest
      t.references :user

      t.timestamps
    end
    add_index :milestones, :user_id
  end
end
