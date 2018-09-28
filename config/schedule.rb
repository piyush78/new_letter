# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :output, "/path/to/my/cron_log.log"
set :environment, "development"
set :output,  "/Users/apple/Developer/task/news"

every 16.hours do
  rake "some:great:rake:task"
end

every 4.days do
  runner "my:rake:task"
end

every :day, at: '9pm' do
  # specify the task name as a string
  rake 'create'
  rake "some:great:rake:create"
  runner "my:rake:create"
  runner "User.create"
end


every 10.minutes do
  # specify the task name as a string
  rake 'create'
  rake "some:great:rake:create"
  runner "my:rake:create"
  runner "User.create"
end

every 1.minute do
  command "echo 'Newsletter Email has sent successfully.'"
end

every 5.minutes do
  runner "AnotherModel.prune_old_records"
end

# Learn more: http://github.com/javan/whenever
