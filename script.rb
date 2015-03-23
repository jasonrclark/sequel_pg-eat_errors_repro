#! /usr/bin/env ruby

$: << File.expand_path(File.dirname(__FILE__))

require 'logger'

require 'bundler/setup'
Bundler.require

DB = Sequel.connect(
  'postgres://localhost/eat_errors_test',
  encoding: 'utf-8',
  logger:   Logger.new($stdout)
)

DB.extension :eat_errors

# Needs to hit a constraint failure, so insert twice
DB[:users].insert(email: 'aaa@aa.aa')
DB[:users].insert(email: 'aaa@aa.aa')
