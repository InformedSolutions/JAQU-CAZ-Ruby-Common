# frozen_string_literal: true

require 'json'

RSpec.describe Encryption::Decrypt do
  subject(:decrypt) { described_class.call(data:) }

  let(:data) { 'jAzWrxbseQbF5GbQkAy6klI6SYSuejSk3GUIcUjn1wxQkWXAhsSi98Tr2hPNZmHFPnnJbbGjeeKmVZtUKSW0oQ==' }
  let(:email) { 'user@example.com' }
  let(:pw_reset_requested) { 1_645_012_151 }

  describe '.call' do
    before do
      stub_const('ENV',
                 { 'ENCRYPTION_KEY' => 'gBCugZ3B61qF4LwboeFN0w', 'ENCRYPTION_VECTOR' => 'Ubkr3uTe8X9J+K0bHM6TEg' })
    end

    it 'returns a proper value' do
      expect(JSON.parse(decrypt)).to eq({ 'email' => 'user@example.com', 'pw-reset-requested' => 1_645_012_151 })
    end
  end
end
