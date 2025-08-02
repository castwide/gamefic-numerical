# gamefic-numerical

A Gamefic extension to enable text representations of numbers.

## Installation

Add the gem to your Gamefic project's Gemfile:

```ruby
gem 'gamefic-numerical'
```

Require the gem in your project, e.g., in `main.rb`:

```ruby
require 'gamefic-numerical'
```

## Usage

The gem adds a `numerical` query that you can use in response arguments. Numbers passed into the command will be converted to integers.

Example code:

```ruby
class MyPlot < Gamefic::Plot
  respond :count, numerical do |actor, number|
    actor.tell "You count to #{number}."
  end

  interpret 'count to :number', 'count :number'
end
```

Example gameplay:

    > count a hundred

    You count to 100.

    > count to ten

    You count to 10.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/gamefic-numerical.
