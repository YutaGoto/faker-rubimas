# Faker::Rubimas

[![Build Status](https://travis-ci.org/YutaGoto/faker-rubimas.svg?branch=master)](https://travis-ci.org/YutaGoto/faker-rubimas)

Test data generator using 765PRO all stars (include million stars).

This gem is inspired by [sue445/faker-precure](https://github.com/sue445/faker-precure) and [imas/rubimas](https://github.com/imas/rubimas).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faker-rubimas'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faker-rubimas

## Usage

```ruby
require 'faker/rubimas'

Faker::Rubimas.name
# => "望月杏奈"

Faker::Rubimas.favorite
# => "ハト"

Faker::Rubimas.hobby
# => "登山"

Faker::Rubimas.talent
# => "ポーカーフェイス"

Faker::Rubimas.idol_type
# => "Princess"

Faker::Rubimas.color
# => "#ffe43f"

Faker::Rubimas.cv
# => "長谷川明子"

Faker::Rubimas.unit_name
# => "クレシェンドブルー"

Faker::Rubimas.unit_member_names
# => ["天海春香", "周防桃子", "福田のり子", "松田亜利沙", "横山奈緒"]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/YutaGoto/faker-rubimas. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Faker::Rubimas project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/YutaGoto/faker-rubimas/blob/master/CODE_OF_CONDUCT.md).
