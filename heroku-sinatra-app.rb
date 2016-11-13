# You'll need to require these if you
# want to develop while running with ruby.
# The config/rackup.ru requires these as well
# for it's own reasons.
#
# $ ruby heroku-sinatra-app.rb
#
require 'rubygems'
require 'sinatra'

configure :production do
  # Configure stuff here you'll want to
  # only be run at Heroku at boot

  # TIP:  You can get you database information
  #       from ENV['DATABASE_URI'] (see /env route below)
end

# Quick test
get '/' do
# "Congradulations!
#  You're running a Sinatra application on Heroku!"
#  "Running #{ File.basename }"
#  <%= File.basename %>
#  thisfile =    <%  File.basename %>
# if __FILE__ == $0
#   "no error" #{ __FILE__ }
#   puts       #{ __FILE__ }
#   #{ __FILE__ }.respond_to? "methods"
# end
    line_ending="<br /> <hr />"
    "$$ is #{ $$ } 
     #{ line_ending }
     __FILE__ is #{ __FILE__ }
     #{ line_ending }
     #{ __FILE__.methods }
     #{ line_ending }
    "
#    if #{ __FILE__.respond_to? "methods" }
#    end
end

# Test at <appname>.heroku.com

# You can see all your app specific information this way.
# IMPORTANT! This is a very bad thing to do for a production
# application with sensitive information

  get '/env' do
    ENV.inspect
  end
