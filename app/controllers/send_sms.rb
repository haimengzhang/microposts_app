require 'twilio-ruby'
require "bundler"
Bundler.require()

account_sid = ENV["TWILIO_ACCOUNT_SID"]
auth_token = ENV["TWILIO_AUTH_TOKEN"]

#Create client
@client =  Twilio::REST::Client.new(account_sid, auth_token)

@client.messages.create(
     to: ENV["MY_PHONE_NUMBER"],
     from: "+14158530655",
     body: "Robot invasion! Report."
)