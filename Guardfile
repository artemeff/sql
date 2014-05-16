# encoding: utf-8

guard :bundler do
  watch('Gemfile')
  watch('Gemfile.lock')
  watch(%w{.+.gemspec\z})
end

guard :rspec, failed_mode: :keep do
  # Run all specs if configuration is modified
  watch('.rspec')              { 'spec' }
  watch('Guardfile')           { 'spec' }
  watch('Gemfile.lock')        { 'spec' }
  watch('spec/spec_helper.rb') { 'spec' }

  # Run all specs if supporting files files are modified
  watch(%r{\Aspec/(?:fixtures|lib|support|shared)/.+\.rb\z}) { 'spec' }

  # Run unit specs if associated lib code is modified
  watch(%r{\Alib/(.+)\.rb\z})                                         { |m| Dir["spec/unit/#{m[1]}*"]         }
  watch(%r{\Alib/(.+)/support/(.+)\.rb\z})                            { |m| Dir["spec/unit/#{m[1]}/#{m[2]}*"] }
  watch("lib/#{File.basename(File.expand_path('../', __FILE__))}.rb") { 'spec'                                }

  # Run a spec if it is modified
  watch(%r{\Aspec/(?:unit|integration)/.+_spec\.rb\z})

  notification :tmux, :display_message => true
end
