#!/usr/bin/env ruby
require 'thor'
require 'thor/group'
require 'uuidtools'
require 'json'
require 'net/http'
require 'uri'

require_relative './modules/tenant.rb'
require_relative './modules/service.rb'

class Tnt < Thor
  desc "hi NAME", "say hello to NAME"
  long_desc <<-LONGDESC
    Creates an evnironment with the specifications provided in the config.
  LONGDESC
 
  def create(name)
    Tenant::createTenant(name)
  end
end

class Svc < Thor
  desc "hi NAME", "say hello to NAME"
  long_desc <<-LONGDESC
    Creates an evnironment with the specifications provided in the config.
  LONGDESC

  def create
    Service::createTenant
  end
end

class Menu < Thor
  puts "========================= Start Menu ===================================="
  desc "svc SUBCOMMAND ...ARGS", "Manage a service in a specified environment"
    subcommand "svc", Svc
  desc "tnt SUBCOMMAND ...ARGS", "Manage a tnt in a specified environment"
    subcommand "tnt", Tnt 
end

Menu.start(ARGV)
