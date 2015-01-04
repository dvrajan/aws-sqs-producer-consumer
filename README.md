aws-sqs-producer-consumer
=========================

A simple AWS Simple Queue Service (SQS) producer consumer programs.

###AWS Credentials:

export AWS_ACCESS_KEY=<your access key>
export AWS_SECRET_KEY=<your secret key>

###Producer:

Producer sends 'HELO' message to a queue every 100ms.

Producer takes two command line arguments

1. no of messages to send to the queue
2. producer identifier to label the message

To run:  `ruby producer.rb 100 1`


###Consumer:

Consumer consumes the message sent to the queue and wait for 200 ms before consuming the next message.

To run:  `ruby producer.rb 100 1`
