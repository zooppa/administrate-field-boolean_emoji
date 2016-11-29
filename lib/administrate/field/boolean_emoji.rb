require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class BooleanEmoji < Administrate::Field::Base
      class Engine < ::Rails::Engine; end

      EMOJIS = {
        default: {
          positive: '&#9989;',
          negative: '&#10060;'
        }
      }

      def style
        :default
      end

      def positive_emoji
        EMOJIS[style][:positive].html_safe
      end

      def negative_emoji
        EMOJIS[style][:negative].html_safe
      end
    end
  end
end
