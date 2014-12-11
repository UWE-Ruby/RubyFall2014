require 'sinatra'
require 'thin'
require 'pry'

get '/' do
  html_template do
    binding.pry
    "<h1>#{get_header}</h1><br/>
    The time is: #{get_time}<br/>
    <a href='/happy'>Happy Link</a>"
  end
end

get '/happy' do
  html_template do
    "<font color='red'>I like Red today</font><br/>
    #{params[:hi]}"
  end
end

def get_header
  "Hello world!"
end

def get_time
  Time.now.strftime("%H:%M")
end

def html_template title= "Hello world!"
    "<html>
  <head>
  <title> #{title}</title>
  </head>
  <body>
  #{yield}
  </body>
  </html>"
end