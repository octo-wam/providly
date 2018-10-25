Gem.find_files('providly/**/*.rb').each { |file| require file }

module Providly
  def self.email_uses_provider?(email)
    email_domain = email.split("@").last
    provider_and_disposable_domains.any? { |provider_domain| email_domain == provider_domain }
  end

  private

  def self.provider_and_disposable_domains
    provider_domains + disposable_domains
  end

  def self.provider_domains
    file_to_array('provider_domains.txt')
  end

  def self.disposable_domains
    file_to_array('disposable_domains.txt')
  end

  def self.file_to_array(file_name)
    file_path = File.join(File.dirname(__FILE__), "providly/#{file_name}")
    File.read(file_path).split("\n")
  end
end
