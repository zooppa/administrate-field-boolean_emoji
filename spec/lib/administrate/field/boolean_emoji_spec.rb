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

  describe '#lboolean with default locale' do
    let(:output) { subject.lboolean }

    context 'with nil' do
      let(:data) { nil }

      it 'returns dash' do
        expect(output).to eq '–'
      end
    end

    context 'with true' do
      let(:data) { true }

      it 'returns the boolean' do
        expect(I18n.locale).to eq :en
        expect(output).to eq '✅'
      end
    end

    context 'with false' do
      let(:data) { false }

      it 'returns the boolean' do
        expect(I18n.locale).to eq :en
        expect(output).to eq '❌'
      end
    end
  end

  describe '#lboolean with german locale' do
    let(:output) { subject.lboolean }

    context 'with true' do
      let(:data) { true }

      it 'returns the boolean' do
        I18n.with_locale(:de) do
          expect(I18n.locale).to eq :de
          expect(output).to eq 'Ja'
        end
      end
    end

    context 'with false' do
      let(:data) { false }

      it 'returns the boolean' do
        I18n.with_locale(:de) do
          expect(I18n.locale).to eq :de
          expect(output).to eq 'Nein'
        end
      end
    end
  end

end
