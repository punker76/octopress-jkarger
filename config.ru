require 'bundler/setup'
require 'sinatra/base'
require "rack-rewrite"

# The project root directory
$root = ::File.dirname(__FILE__)

ENV['RACK_ENV'] ||= 'development'
ENV['SITE_URL'] ||= 'jkarger.de'
use Rack::Rewrite do
    r301 %r{.*}, "http://#{ENV['SITE_URL']}$&", :if => Proc.new {|rack_env|
        ENV['RACK_ENV'] == 'production' && rack_env['SERVER_NAME'] != ENV['SITE_URL']
      }
    r301 %r{^(.+)/$}, '$1'
  end

class SinatraStaticServer < Sinatra::Base

  get(/.+/) do
    send_sinatra_file(request.path) {404}
  end

  not_found do
    send_file(File.join(File.dirname(__FILE__), 'public', '404.html'), {:status => 404})
  end

  def send_sinatra_file(path, &missing_file_block)
    file_path = File.join(File.dirname(__FILE__), 'public',  path)
    file_path = File.join(file_path, 'index.html') unless file_path =~ /\.[a-z]+$/i
    File.exist?(file_path) ? send_file(file_path) : missing_file_block.call
  end

end

run SinatraStaticServer
