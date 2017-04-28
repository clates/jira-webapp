json.extract! jira_task, :id, :title, :hours, :assignee, :parent, :sprintID, :created_at, :updated_at
json.url jira_task_url(jira_task, format: :json)
