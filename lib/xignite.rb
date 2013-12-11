require 'cgi'
require 'crack'
require 'curl'
require 'tzinfo'
require 'xignite/configuration'

module Xignite
  URL = 'financials.xignite.com'
  DATE_FORMAT = '%m/%d/%Y'
  TIME_FORMAT = '%I:%M:%S %p'

  class << self
    def configuration
      @configuration ||= Xignite::Configuration.new
    end

    def configure
      yield configuration if block_given?
    end
  end
end

require 'xignite/helpers'
require 'xignite/hash'
require 'xignite/array'
require 'xignite/service'

# Financials
require 'xignite/services/financials'
