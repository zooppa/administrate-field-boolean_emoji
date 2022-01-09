# frozen_string_literal: true

require 'spec_helper'

describe Administrate::Field::BooleanEmoji do
  subject { Administrate::Field::BooleanEmoji.new(:boolean, data, :show) }

  describe '#to_partial_path' do
    let(:data) { true }

    it 'returns a partial based on the page being rendered' do
      path = subject.to_partial_path
      expect(path).to eq('/fields/boolean_emoji/show')
    end
  end

  describe '#lboolean' do
    let(:output) { subject.lboolean }

    context 'with default locale' do
      context 'when nil' do
        let(:data) { nil }

        it 'returns dash' do
          expect(output).to eq '–'
        end
      end

      context 'when true' do
        let(:data) { true }

        it 'returns the localized value' do
          expect(output).to eq '✅'
        end
      end

      context 'when false' do
        let(:data) { false }

        it 'returns the localized value' do
          expect(output).to eq '❌'
        end
      end
    end

    context 'with german locale' do
      around do |example|
        I18n.with_locale(:de) { example.run }
      end

      context 'when true' do
        let(:data) { true }

        it 'returns the localized value' do
          expect(output).to eq 'Ja'
        end
      end

      context 'when false' do
        let(:data) { false }

        it 'returns the localized value' do
          expect(output).to eq 'Nein'
        end
      end
    end
  end
end
