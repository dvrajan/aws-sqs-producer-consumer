require 'yaml'

class Conf
	@@config_file	
	def self.load_file
		@@config_file = YAML.load_file('config.yml')
	end

	def self.get(key)
		return @@config_file.fetch(key)
	end
end

Conf.load_file
AWS.config(region: Conf.get('aws_region'))
QUEUE_NAME = Conf.get('queue_name')
MESSAGE = Conf.get('message_to_send')
