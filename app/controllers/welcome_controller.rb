class WelcomeController < ApplicationController
  def index
    options = { developer_key: 'client = Yourub::Client.new(options)',
                application_name: 'jfeed',
                application_version: 2.0,
                log_level: 3 }
    client = Yourub::Client.new(options)
    client.search(country: "DE", category: "sports", order: 'date') do |v|
      puts v
    end
  end
end
