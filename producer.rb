require 'aws-sdk'
require_relative 'config'

(number_of_messages, producer_id) = ARGV

sqs = AWS::SQS.new

puts "Acquiring queue..."
q = sqs.queues.create QUEUE_NAME
puts "Queue acquired!"

number_of_messages.to_i.times do |i|
	puts "Sending message #{i+1}"
	q.send_message producer_id + ':' + MESSAGE + ':' + (i+1).to_s
	if i+1 != number_of_messages.to_i
        	sleep(0.2)
	end
end

