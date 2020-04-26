## play-ruby-kafka

Learning how to implement kafka with [Phobos](https://github.com/phobos/phobos).

You can add queues, and see the list of saved messages.

### API

### Add queues

- URL `POST /api/queues`
- Params
  ```json
  {
    "payload": "Sample payload"
  }
  ```

### List of Messages
- URL `GET /api/messages`

