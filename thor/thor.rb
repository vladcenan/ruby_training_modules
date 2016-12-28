#!/usr/bin/env ruby
require 'thor'
require 'thor/group'

require_relative './modules/environment.rb'
require_relative './modules/service.rb'

class Env < Thor
  desc "create", "Creates an environment. Specify a name as argument"
  long_desc <<-LONGDESC
    Creates an evnironment with a specified name.
  LONGDESC
  def create(name)
    Environment::createEnvironment(name)
  end

  desc "delete", "Delete an environment"
  long_desc <<-LONGDESC
    Delete an evnironment.
  LONGDESC
  def delete
    Environment::deleteEnvironment
  end
end

class Svc < Thor
  desc "create", "Creates a service. Specify a name as argument"
  long_desc <<-LONGDESC
    Creates a service with a specified name.
  LONGDESC
  def create(name)
    Service::createService(name)
  end

  desc "delete", "Delete a service"
  long_desc <<-LONGDESC
    Delete a service.
  LONGDESC
  def delete
    Service::deleteService
  end
end

class Menu < Thor
  puts "==================== Start Menu ========================"
  desc "env SUBCOMMAND ...ARGS", "Manage an environment"
    subcommand "env", Env
  desc "svc SUBCOMMAND ...ARGS", "Manage a service"
    subcommand "svc", Svc 
end

Menu.start(ARGV)
