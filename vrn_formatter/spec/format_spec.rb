# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
RSpec.describe VrnFormatter::Format do
  subject { described_class.new(vrn: vrn).call }

  context 'when vrn format is "C9"' do
    let(:vrn) { 'C9' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('C 9')
    end
  end

  context 'when vrn format is "9C"' do
    let(:vrn) { '9C' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('9 C')
    end
  end

  context 'when vrn format is "AA9"' do
    let(:vrn) { 'AA9' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AA 9')
    end
  end

  context 'when vrn format is "A99"' do
    let(:vrn) { 'A99' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('A 99')
    end
  end

  context 'when vrn format is "9AA"' do
    let(:vrn) { '9AA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('9 AA')
    end
  end

  context 'when vrn format is "99A"' do
    let(:vrn) { '99A' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('99 A')
    end
  end

  context 'when vrn format is "AAA9"' do
    let(:vrn) { 'AAA9' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AAA 9')
    end
  end

  context 'when vrn format is "A999"' do
    let(:vrn) { 'A999' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('A 999')
    end
  end

  context 'when vrn format is "AA99"' do
    let(:vrn) { 'AA99' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AA 99')
    end
  end

  context 'when vrn format is "9AAA"' do
    let(:vrn) { '9AAA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('9 AAA')
    end
  end

  context 'when vrn format is "99AA"' do
    let(:vrn) { '99AA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('99 AA')
    end
  end

  context 'when vrn format is "999A"' do
    let(:vrn) { '999A' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('999 A')
    end
  end

  context 'when vrn format is "A9AAA"' do
    let(:vrn) { 'A9AAA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('A9 AAA')
    end
  end

  context 'when vrn format is "AAA9A"' do
    let(:vrn) { 'AAA9A' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AAA 9A')
    end
  end

  context 'when vrn format is "AAA99"' do
    let(:vrn) { 'AAA99' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AAA 99')
    end
  end

  context 'when vrn format is "AA999"' do
    let(:vrn) { 'AA999' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AA 999')
    end
  end

  context 'when vrn format is "99AAA"' do
    let(:vrn) { '99AAA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('99 AAA')
    end
  end

  context 'when vrn format is "999AA"' do
    let(:vrn) { '999AA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('999 AA')
    end
  end

  context 'when vrn format is "9999A"' do
    let(:vrn) { '9999A' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('9999 A')
    end
  end

  context 'when vrn format is "A9999"' do
    let(:vrn) { 'A9999' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('A 9999')
    end
  end

  context 'when vrn format is "A99AAA"' do
    let(:vrn) { 'A99AAA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('A99 AAA')
    end
  end

  context 'when vrn format is "AAA99A"' do
    let(:vrn) { 'AAA99A' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AAA 99A')
    end
  end

  context 'when vrn format is "AAA999"' do
    let(:vrn) { 'AAA999' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AAA 999')
    end
  end

  context 'when vrn format is "999AAA"' do
    let(:vrn) { '999AAA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('999 AAA')
    end
  end

  context 'when vrn format is "AA9999"' do
    let(:vrn) { 'AA9999' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AA 9999')
    end
  end

  context 'when vrn format is "9999AA"' do
    let(:vrn) { '9999AA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('9999 AA')
    end
  end

  context 'when vrn format is "A999AAA"' do
    let(:vrn) { 'A999AAA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('A999 AAA')
    end
  end

  context 'when vrn format is "AAA999A"' do
    let(:vrn) { 'AAA999A' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AAA 999A')
    end
  end

  context 'when vrn format is "AAA9999"' do
    let(:vrn) { 'AAA9999' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AAA 9999')
    end
  end

  context 'when vrn format is "AA99AAA"' do
    let(:vrn) { 'AA99AAA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('AA99 AAA')
    end
  end

  context 'when vrn format is "9999AAA"' do
    let(:vrn) { '9999AAA' }

    it 'adds whitespace in expected place' do
      expect(subject).to eq('9999 AAA')
    end
  end

  context 'when invalid string' do
    let(:vrn) { '!909DF384' }

    it 'returns it' do
      expect(subject).to eq('!909DF384')
    end
  end

  context 'when vrn is nil' do
    let(:vrn) { nil }

    it 'returns it' do
      expect(subject).to eq(nil)
    end
  end
end
# rubocop:enable Metrics/BlockLength
