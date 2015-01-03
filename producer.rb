require 'aws-sdk'
require_relative 'config'

(number_of_messages, interval) = ARGV

sqs = AWS::SQS.new

puts "Acquiring queue..."
q = sqs.queues.create 'sample'
puts "Queue acquired!"

number_of_messages.to_i.times do |i|
	puts "Sending message #{i+1}"
	q.send_message 'HELO'
	if i+1 != number_of_messages.to_i
		puts "Waiting for #{interval} seconds..."
        	sleep(interval.to_i)
	end
end

