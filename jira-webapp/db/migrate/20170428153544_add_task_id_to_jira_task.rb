class AddTaskIdToJiraTask < ActiveRecord::Migration[5.1]
  def change
    add_column :jira_tasks, :taskID, :string
  end
end
