Gem.find_files('providly/**/*.rb').each { |file| require file }

module Providly
  def self.email_uses_provider?(email)
    provider_domains = read_provider_domains
    !provider_domains.select { |domain| email.include?(domain) }.empty?
  end

  private

  def self.read_provider_domains
    provider_domains_file_path = File.join(File.dirname(__FILE__), 'providly/provider_domains.txt')
    provider_domains_file = File.open(provider_domains_file_path)
    provider_domains = []
    provider_domains_file.each_line { |line| provider_domains << line.strip }
    provider_domains
  end
end