require 'aws-sdk'
require_relative 'config'

sqs = AWS::SQS.new

puts "Acquiring queue..."
q = sqs.queues.create 'sample'
puts "Queue acquired. Lets get started!"


loop do
	q.poll do |msg|
		puts msg.body
	end
	sleep 1
end
