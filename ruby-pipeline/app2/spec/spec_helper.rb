require 'simplecov'
SimpleCov.start

require 'codecov'

class CustomCodecovFormatter < SimpleCov::Formatter::Codecov
  def shortened_filename(file)
    "ruby/#{super(file)}"
  end
end

SimpleCov.formatter = if ENV['CI'] == 'true'
  CustomCodecovFormatter
else
  SimpleCov::Formatter::HTMLFormatter
end

require 'example'