# ArDefaultOptions
class << ActiveRecord::Base

  def default_find_option(option_name, value)
    @default_find_options ||= {} #assign @default_find_options with an empty hash array if it is nil.
    @default_find_options[option_name] = value
  end
 
  # make a backup of original 'find' under the name 'orig_find' in active record
  alias_method :orig_find, :find
  def find(args) #here you overide the original find method
     options = args
    @default_find_options ||= {}
    orig_find(options,@default_find_options)
  end
end
