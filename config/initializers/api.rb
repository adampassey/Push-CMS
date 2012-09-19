require 'yaml'

config = YAML::load(File.read('config/api.yml'))["#{Rails.env}"]

V1_PUSHAPI_URL = config['v1_pushapi_url']