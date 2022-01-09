# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'administrate/field/boolean_emoji'

I18n.load_path << Dir[File.join('config', 'locales', '**', '*.{rb,yml}')]
