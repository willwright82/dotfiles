#!/usr/bin/env ruby

$:.unshift File.expand_path('../../lib', __FILE__)

require 'bugherd_client'

# setup bugherd and use the latest version of the api
#client = BugherdClient::Client.new(api_key: ENV['kcpbiie4jxgatxcl1utohw'])

client = BugherdClient::Client.new do |c|
  c.username = 'will@clazzoo.com'
  c.password = 'wdkymys'
end

# get Clazzoo project
project = client.projects.find(93342)

# filter tasks by attributes:
# updated_since, created_since, status, priority, tag, assigned_to_id and external_id.
bugs = client.tasks.all(project.id, status: 'todo')

#puts bugs
puts 'hello'
