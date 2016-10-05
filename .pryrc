# https://github.com/nixme/jazz_hands/blob/master/lib/jazz_hands.rb

require 'debbie'
#require 'jazz_hands/railtie' if defined?(Rails)
require 'active_support'
require 'readline'


colored_prompt = (Readline::VERSION !~ /EditLine/)
prompt_separator = defined?(RbReadline) ? '>' : "\u00BB"

raise 'Syntax highlighting only supported on 1.9.3+' unless RUBY_VERSION >= '1.9.3'

# Use coolline with CodeRay for syntax highlighting as you type.
# Only works on >= 1.9.3 because coolline depends on io/console.

require 'coolline'
require 'coderay'

Pry.config.input = Coolline.new do |c|
  c.transform_proc = proc do
    CodeRay.scan(c.line, :ruby).term
  end

  c.completion_proc = proc do
    word = c.completed_word
    Object.constants.map(&:to_s).select { |w| w.start_with? word }
  end
end
