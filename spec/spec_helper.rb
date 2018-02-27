$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'administrate/field/boolean_emoji'

I18n.load_path << Dir[File.join('config', 'locales', '**', '*.{rb,yml}')]
