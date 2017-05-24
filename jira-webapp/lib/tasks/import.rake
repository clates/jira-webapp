require 'csv'
namespace :import do
	desc "Import JIRA from CSV"
	task jira: :environment do
		filename = File.join Rails.root, "testExport.csv"
		skipheaders = true
		CSV.foreach(filename) do |row|
			(skipheaders = false;next) if skipheaders
			id, parentid, assignee, hours, title = row
			JiraTask.create(taskID:id, title: title, hours: hours, assignee:assignee, parent: parentid, sprintID: 5681, day:10, status:"open")
		end
	end

	desc "Generate the 'days' needed to support the JIRA import."
	task initDays: :environment do
		DayOfWeek.delete_all
		DayOfWeek.create(day:"Thursday")
		DayOfWeek.create(day:"Friday")
		DayOfWeek.create(day:"Monday")
		DayOfWeek.create(day:"Tuesday")
		DayOfWeek.create(day:"Wednesday")
		DayOfWeek.create(day:"Thursday")
		DayOfWeek.create(day:"Friday")
		DayOfWeek.create(day:"Monday")
		DayOfWeek.create(day:"Tuesday")
		DayOfWeek.create(day:"Rollover")
	end
end