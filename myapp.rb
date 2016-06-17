# encoding: utf-8

require 'rubygems'
require 'sinatra'
require 'mongo'
require 'json/ext' # required for .to_json

use Rack::Auth::Basic, "Restricted Area" do |username, password|
    [username, password] == ['admin', 'admin']  
end

require "./myappmongodb"
