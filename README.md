aws-sqs-producer-consumer
=========================

A simple AWS Simple Queue Service (SQS) producer consumer programs.

Producer:
=========

Producer sends 'HELO' message to a queue.

Producer takes two command line arguments

1. no of messages to send to the queue
2. time interval in seconds to wait before sending the next message


Consumer:
=========

Consumer consumes the message sent to the queue and wait for 1 second before consuming the next message.
