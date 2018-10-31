# GitkeepCleaner

不要な`.gitkeep`, `.keep`を削除するgem
.gitkeepファイルがあるディレクトリにファイルがある場合は不要と判断して削除します。
`node_modules`, `tmp`, `log`のディレクトリは無視します

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gitkeep_cleaner'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gitkeep_cleaner

## Usage

```
gitkeep_cleaner clean
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/gitkeep_cleaner.
