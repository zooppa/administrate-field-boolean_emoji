# Administrate::Field::BooleanEmoji

[![No Maintenance Intended](https://unmaintained.tech/badge.svg)](https://unmaintained.tech/) [![Build status](https://github.com/zooppa/administrate-field-boolean_emoji/actions/workflows/build.yml/badge.svg)](https://github.com/zooppa/administrate-field-boolean_emoji/actions/workflows/build.yml) [![Code Climate](https://codeclimate.com/github/zooppa/administrate-field-boolean_emoji/badges/gpa.svg)](https://codeclimate.com/github/zooppa/administrate-field-boolean_emoji)

---

### IMPORTANT NOTICE

**This gem is not actively maintained anymore**.

If you’re interested in taking over and steward the project moving forward, please get in touch.

---

A plugin to visually display boolean fields in [Administrate].

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-boolean_emoji', '~> 0.3.0'
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

## Customize

Customize or overwrite the labels by just adding this to your `config/locales/*.yml`.

```yml
administrate:
  fields:
    boolean_emoji:
      "false": 👎
      "true": 👍
```

## About

`Administrate::Field::BooleanEmoji` is maintained by [zooppa].

See also the list of [contributors](https://github.com/zooppa/administrate-field-boolean_emoji/contributors) who participated in this project.

[administrate]: https://github.com/thoughtbot/administrate
[zooppa]: https://www.zooppa.com/
