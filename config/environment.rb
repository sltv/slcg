require "rubygems"
require "yaml"
require "active_record"
require "pg"

  module Environment
    def self.config_dir
      config_dir = File.join(File.dirname(File.expand_path(__FILE__)), "/")
    end

    def self.base_dir
      base_dir = config_dir.split("config")[0]
    end
  end

db_config = YAML::load(File.open(Environment.config_dir + 'database.yml'))
db_config['username'] = ENV['slcgusername']
db_config['password'] = ENV['slcgpassword']
ActiveRecord::Base.establish_connection(db_config)
