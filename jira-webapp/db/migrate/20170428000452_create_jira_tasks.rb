class CreateJiraTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :jira_tasks do |t|
      t.string :title
      t.integer :hours
      t.string :assignee
      t.string :parent
      t.integer :sprintID

      t.timestamps
    end
  end
end
