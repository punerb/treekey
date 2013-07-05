require 'redis'
require 'sinatra'

redis = Redis.new

get '/' do
  redis.set("leaftype", "linear")
end

get '/test' do
  redis.get('leaftype')
end
