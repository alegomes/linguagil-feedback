require 'rubygems'
require 'sinatra'
require 'twitter'
require 'erb'

get '/' do
  @tweets = []
  
  Twitter::Search.new('linguagil').each do |r| 
    @tweets << r
    puts "#{r.inspect}\n"
  end
  
  erb :index
end