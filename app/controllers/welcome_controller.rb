class WelcomeController < ApplicationController
  def index
    options = { developer_key: 'AIzaSyAKDK7oeN_5gUelYWtCyRCk6Im1dy3bGVs',
                application_name: 'jfeed',
                application_version: 2.0,
                log_level: 3 }
    client = Yourub::Client.new(options)
    client.search(query: "funny cats") do |v|
      puts v
    end
  end
end
