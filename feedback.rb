require 'rubygems'
require 'sinatra'
require 'twitter'
require 'erb'

get '/' do
  @tweets = []
  
  Twitter::Search.new('linguagil').each do |r| 
    @tweets << r
  end
  
  erb :index
end