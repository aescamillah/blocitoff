set :output, {:error => "log/cron_log.log", :standard => "log/cron_log.log"}

# every 1.day, :at => '1:00 am' do
every 1.minute do
  rake "todo:delete_items"
end

every 1.minute do
  command "echo 'test'"
end
