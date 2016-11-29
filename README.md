# Administrate::Field::BooleanEmoji

[![Code Climate](https://codeclimate.com/github/z-productions/administrate-field-boolean_emoji/badges/gpa.svg)](https://codeclimate.com/github/z-productions/administrate-field-boolean_emoji)

A plugin to visually display boolean fields in [Administrate].

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-boolean_emoji', '~> 0.0.2'
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:

```ruby
ATTRIBUTE_TYPES = {
  bar: Field::BooleanEmoji
}.freeze
```

## About

`Administrate::Field::BooleanEmoji` is maintained by [z.productions].

[Administrate]: https://github.com/thoughtbot/administrate
[z.productions]: https://www.z.productions/
