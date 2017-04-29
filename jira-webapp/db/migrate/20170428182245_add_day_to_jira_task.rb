class AddDayToJiraTask < ActiveRecord::Migration[5.1]
  def change
    add_column :jira_tasks, :day, :integer
  end
end
