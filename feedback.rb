require 'rubygems'
require 'sinatra'
require 'twitter'
require 'erb'

get '/' do
  @tweets = []
  
  Twitter::Search.new('linguagil').each do |r| 
    # puts ">> #{r.from_user} => #{r.text}"
    @tweets << r
  end
  
  erb :index
end