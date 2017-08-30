# logjam-sample-rails-app

A sample Rails 5 app that sends metrics to Logjam via [logjam_agent](https://github.com/skaes/logjam_agent). The app is a single-file Rails application for simplicity. Everything applies to a standard Rails app too.

The app is configured to send metrics via ZeroMQ.

### Configuration

`logjam_agent` requires `logjam_agent` and `ffi-rzmq` gems installed.

You also need to configure the `logjam_agent` in an initializer. You can find the configuration in `config/initializers/logjam_agent.rb`. It assumes that a ZeroMQ device listens on port 9604. The device and Logjam should be aware of the stream named `TestApp-development`.

### Running

` rackup -p 3030`
