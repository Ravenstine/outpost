#!/usr/bin/env rake
RAKED = true

require 'bundler/setup'
require 'combustion'
Bundler.require :default, :test

require 'rdoc/task'
require 'rspec/core/rake_task'
require 'appraisal'

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Outpost'
  rdoc.markup   = 'tomdoc'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
  rdoc.rdoc_files.include('app/helpers/**/*.rb')
  rdoc.rdoc_files.include('app/models/**/*.rb')
end

Dir[File.join(File.dirname(__FILE__), 'tasks/**/*.rake')].each { |f| load f }

Combustion.initialize! :active_record, :action_controller
Combustion::Application.load_tasks

RSpec::Core::RakeTask.new(:test)
