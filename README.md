# Keyshare

"It's like LastPass for your Ruby application!"

A Ruby gem to securely share and manage credentials used for various services, API calls and webhooks in your Ruby application.
No longer do you need to store secret keys and tokens in a YAML file to be passed around offline to every project member. Keyshare
encrypts and stores your credentials on Amazon S3, then automatically fetches and injects them into your application. This means
that the only credentials you need to pass around are your Amazon AWS credentials and your keyshare master password.

Keyshare also includes a set of command-line interface tools called `gatekeeper`. This gives basic functionality for
adding/removing/retrieving credentials stored on S3.

## Requirements

- An AWS account (free tier is more than adequate). Keyshare uses S3 buckets as keyrings to store your encrypted data. You will also
need your AWS access key ID and secret access key (which can be obtained from the (AWS Security Credentials tab)[https://console.aws.amazon.com/iam/home?#security_credential])

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'keyshare'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install keyshare

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/clindsay107/keyshare.