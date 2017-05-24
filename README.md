# jira-webapp
jira-ROR

1.  Clone repository
2.  Make sure you have the latest ruby version

$ rvm get stable

3.  gem install rails
4.  bundle install
5.  rails server

#To import data into the sqlite db

1.  rake db:setup           # Creates the database, loads the schema, and initializes with the seed data (use db:reset to also drop the database first)
2.  rake db:migrate         # Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)
3.  rake import:initDays    # Generate the "days" needed to support the JIRA import.
4.  rake import:jira        # Import JIRA from the jira-cli generated CSV, must be called testExport.csv for now.

