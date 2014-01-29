# Jurisdiction
[![Build Status](https://secure.travis-ci.org/crowdcompass/jurisdiction.png?branch=master)][travis]

[travis]: http://travis-ci.org/crowdcompass/jurisdiction

## Installation

Add this line to your application's Gemfile:

    gem 'jurisdiction'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jurisdiction

## Usage

    jurisdiction :nav, using: :capybara do
      def go_home
        visit "/"
      end
    end
    
    nav.go_home

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
