class AddStatusToJiraTask < ActiveRecord::Migration[5.1]
  def change
    add_column :jira_tasks, :status, :string
  end
end
