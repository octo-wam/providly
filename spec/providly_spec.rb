require 'spec_helper'

describe Providly do
  it 'has a version number' do
    expect(Providly::VERSION).not_to be nil
  end

  describe '#email_uses_provider?' do
    it { expect(Providly.email_uses_provider? 'email@gmail.com').to be true }
    it { expect(Providly.email_uses_provider? 'email@elcurator.net').to be false }
  end

  describe '#read_provider_domains' do
    subject { Providly.send(:read_provider_domains) }

    it { should be_a(Array) }
    it { should include 'gmail.com' }
  end
end
