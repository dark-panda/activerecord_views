require 'warning'
require 'rails/version'

case Rails::VERSION::STRING
when /^7\.0\./
  Warning.ignore(%r{lib/active_support/core_ext/time/deprecated_conversions.rb:\d+: warning: method redefined; discarding old to_s})
  Warning.ignore(%r{lib/active_support/time_with_zone.rb:\d+: warning: previous definition of to_s was here})
end

Warning.process do |_warning|
  :raise
end
