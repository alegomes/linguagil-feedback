require 'rubygems'
require 'sinatra'
require 'twitter'
require 'erb'

get '/' do

  @good_tweets = Twitter::Search.new('linguagil foibom -podemelhorar')
  @bad_tweets = Twitter::Search.new('linguagil podemelhorar -foibom')
  @suggestion_tweets = Twitter::Search.new('linguagil sugestao -foibom -podemelhorar')
  @other_tweets = Twitter::Search.new('linguagil -sugestao -foibom -podemelhorar')

    
  erb :index
end
