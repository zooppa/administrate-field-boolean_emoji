require 'rails'
require 'administrate/field/base'

module Administrate
  module Field
    class BooleanEmoji < Administrate::Field::Base
      class Engine < ::Rails::Engine; end

      def lboolean
        data.nil? ? '–' : I18n.t(data.to_s, scope: 'administrate.fields.boolean_emoji')
      end
    end
  end
end
