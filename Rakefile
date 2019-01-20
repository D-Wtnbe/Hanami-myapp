require 'rake'
require 'hanami/rake_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.libs    << 'spec'
  t.warning = false
end

task default: :test
task spec: :test

task :seed do
  require 'faker'
  require_relative 'config/environment'
  Hanami.boot

  1000.times do |n|
    userid = "test#{n+1}"
    name  = "テスト#{n+1}"
    email = "example-#{n+1}@example.com"
    hashed_pass = "password"
    UserRepository.new.create(userid: userid, name:  name,email: email, hashed_pass: hashed_pass)
  end
end
