#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'mongo'
require 'pp'

client = Mongo::Client.new([ "dev-mongos1r1.net:27017" ],
                             :database => "admin",
                             user: "admin",
                             password: "admin")

#client=client.use(:admin)
#db=client.database
#puts db.name

client.database.users.create(
      'admin',
      password: 'admin',
      roles: [ "userAdminAnyDatabase","dbAdminAnyDatabase","dbOwner","root" ])

client.database.users.create(
      'root',
      password: 'root',
      roles: [ "userAdminAnyDatabase","dbAdminAnyDatabase","dbOwner","root" ])

@mongo_client = MongoReplicaSetClient.new(
  ['dev-mongos1r1.net:27017'],:refresh_mode => :sync
)
