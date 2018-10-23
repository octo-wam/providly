require 'spec_helper'

describe Providly do
  it 'has a version number' do
    expect(Providly::VERSION).not_to be_nil
  end

  describe '#email_uses_provider?' do
    it { expect(Providly.email_uses_provider? 'email@gmail.com').to eq(true) }
    it { expect(Providly.email_uses_provider? 'email@elcurator.net').to eq(false) }

    it 'deals with relevant email domain including part of a provider domain (cs.com)' do
      expect(Providly.email_uses_provider? 'email@analytics.com').to eq(false)
    end
  end

  describe '#provider_domains' do
    subject { Providly.send(:provider_domains) }

    it { is_expected.to be_an(Array) }
    it { is_expected.to include('gmail.com') }
  end
end
