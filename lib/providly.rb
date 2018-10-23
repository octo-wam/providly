Gem.find_files('providly/**/*.rb').each { |file| require file }

module Providly
  def self.email_uses_provider?(email)
    email_domain = email.split("@").last
    provider_domains.any? { |provider_domain| email_domain == provider_domain }
  end

  private

  def self.provider_domains
    provider_domains_file_path = File.join(File.dirname(__FILE__), 'providly/provider_domains.txt')
    provider_domains_file = File.open(provider_domains_file_path)
    provider_domains = []
    provider_domains_file.each_line { |line| provider_domains << line.strip }
    provider_domains
  end
end
