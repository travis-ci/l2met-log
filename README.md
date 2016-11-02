# `L2met::Log`

Include for great `#log` glory.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'l2met-log'
```

## Usage

``` ruby
require 'l2met-log'

module AllMyStuff
  class ThingDoer
    include L2metLog

    def doit!
      log msg: 'like wow', did: 'thing', not_did: 'nothing', rad: 9_000
    end
  end
end
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
