require 'restfulie'

module PostmarkSpamcheck
  class Error < StandardError; end

  def self.client
    @client ||= Restfulie.at('http://spamcheck.postmarkapp.com/filter').as("application/json").accepts("application/json")
  end

  def self.score_for(email)
    resource = client.post(:email => email, :options => 'short').resource
    raise Error, resource['message'] unless resource['success']

    resource['score'].to_f
  end

  def self.report_for(email)
    resource = client.post(:email => email, :options => 'long').resource
    raise Error, resource['message'] unless resource['success']

    resource['report']
  end
end
