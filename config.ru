require "bundler"
Bundler.setup(:default)

require "sinatra"
require "haml"
require "sass/plugin/rack"

Bundler.setup(Sinatra::Base.environment)

require "pry"
require File.expand_path("../myapp", __FILE__)

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

run MyApp::Server
