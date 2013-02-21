require_relative 'lib/turntabler'
#require "#{File.dirname(__FILE__)}/lib/turntabler.rb"

EMAIL = ENV['test@test.com']
PASSWORD = ENV['foobar']
AUTH = ENV['auth+live+d029059f6076de2bb1dd6516936645991c533a3d']
USERID = ENV['4fab18d9aaa5cd5942000645']
ROOM = ENV['4fac8ca9aaa5cd57e400007d']

TT.run do
#  client = TT::Client.new(:user_id => USERID, :auth => AUTH, :room => ROOM)
  client = TT::Client.new(EMAIL, PASSWORD, :user_id => USERID, :auth => AUTH,
                          :room => ROOM)
  on :user_spoke do |message|
    # Respond to "/hello" command
    if (message.content =~ /^\/hello$/)
      room.say("Hello")
    end
  end
end
