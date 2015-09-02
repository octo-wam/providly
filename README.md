# Providly

Providly is a simple ruby gem that checks if email domain name is a provider.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'providly'
```

Or install it yourself as:

    $ gem install providly

## Usage

```ruby
Providly.email_uses_provider? 'email@gmail.com' # => true
Providly.email_uses_provider? 'email@elcurator.net' # => false
```

## Contributing

Bug reports and pull requests are welcome on GitHub.

1. Fork it ( https://github.com/elcurator/providly/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

