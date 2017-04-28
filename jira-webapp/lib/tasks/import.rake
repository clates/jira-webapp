require 'csv'
namespace :import do
	desc "Import JIRA from CSV"
	task jira: :environment do
		filename = File.join Rails.root, "testExport.csv"
		CSV.foreach(filename) do |row|
			id, parentid, assignee, hours, title = row
			JiraTask.create(title: title, hours: hours, assignee:assignee, parent: parentid, sprintID: 5681)
		end
	end
end