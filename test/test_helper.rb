$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'martinet/rails'
require 'minitest/autorun'
require 'active_record'

ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: ':memory:'

ActiveRecord::Migration.create_table :users do |t|
  t.string :name
  t.timestamps null: false
end

class User < ActiveRecord::Base
end

module MiniTest
  class Spec
    after do
      User.delete_all
    end
  end
end
