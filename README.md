aws-sqs-producer-consumer
=========================

A simple AWS Simple Queue Service (SQS) producer consumer programs.

###AWS Credentials:

create ~/.aws/credentails file with following content
```
[default]
aws_access_key_id=<your_access_key>
aws_secret_access_key=<your_secret_key>
```

###Producer:

Producer sends 'HELO' message to a queue every 100ms.

Producer takes two command line arguments

1. no of messages to send to the queue
2. producer identifier to label the message

To run:  `ruby producer.rb 100 1`


###Consumer:

Consumer consumes the message sent to the queue and wait for 200 ms before consuming the next message.

To run:  `ruby producer.rb 100 1`

###Config:

You can change the queue_name, message_to_send, aws_region in config.yml
