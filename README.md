# Omniauth::Hattrick

[Hattrick](https://www.hattrick.org) CHPP OmniAuth Strategy

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-hattrick'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-hattrick

## Usage

Tell OmniAuth about this provider.

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :hattrick, ENV['HATTRICK_KEY'], ENV['HATTRICK_SECRET']
    end

`"HATTRICK_KEY"` and `"HATTRICK_SECRET"` should be your CHPP product's consumer key and consumer secret

Next configure your routes

    get 'auth/:provider/callback', to: 'sessions#create'·

## Hash returned

At the moment all that is returned is the token, token secret, user id and username as that is all I think we need.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/j-dexx/omniauth-hattrick.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

