require "capistrano/setup"
require "capistrano/deploy"
require 'capistrano/rvm'
require 'capistrano/bundler'
require 'capistrano/rails'
#require 'capistrano/passenger'
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
invoke :production
