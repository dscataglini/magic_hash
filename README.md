# MagicHash

MagicHash it's just a helper that gives you an empty hash, that returns itself on missing keys.

## Installation

Add this line to your application's Gemfile:

    gem 'magic_hash'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install magic_hash

## Usage

    h = MagicHash.new
    h[:foo][:bar] = :baz
    #=> :baz
    h 
    #=> {:foo=>{:bar=>:baz}}

## Contributing

1. Fork it ( https://github.com/dscataglini/magic_hash/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
