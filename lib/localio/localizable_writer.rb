require 'localio/writers/android_writer'
require 'localio/writers/ios_writer'
require 'localio/writers/json_writer'
require 'localio/writers/rails_writer'

module LocalizableWriter
  def self.write(platform, languages, terms, path, formatter, options)
    case platform
      when :android
        AndroidWriter.write languages, terms, path, formatter, options
      when :ios
        IosWriter.write languages, terms, path, formatter, options
      when :json
        JsonWriter.write languages, terms, path, formatter, options
      when :rails
        RailsWriter.write languages, terms, path, formatter, options
      else
        raise ArgumentError, 'Platform not supported! Current possibilities are :android, :ios, :json, :rails'
    end
  end
end