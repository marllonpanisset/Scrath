#!/usr/bin/env ruby
scrathbundle = 'sass scss/scrath-bundle.scss css/scrath-bundle.css'
raise scrathbundle unless $?.to_i == 0
raise "Failed to Compile" unless File.exists?('css/scrath-bundle.css')
puts "Scrath Bundle - worked successfully"

scrathsingle = 'sass scss/scrath-single.scss css/scrath-single.css'
raise scrathsingle unless $?.to_i == 0
raise "Failed to Compile" unless File.exists?('css/scrath-single.css')
puts "Scrath Single - worked successfully"

pluginbutton = 'sass scss/plugins/button.scss css/plugins/button.css'
raise pluginbutton unless $?.to_i == 0
raise "Failed to Compile" unless File.exists?('css/plugins/button.css')
puts "Plugin Button - worked successfully"

pluginform = 'sass scss/plugins/form.scss css/plugins/form.css'
raise pluginbutton unless $?.to_i == 0
raise "Failed to Compile" unless File.exists?('css/plugins/form.css')
puts "Plugin Form - worked successfully"

pluginicons = 'sass scss/plugins/icons.scss css/plugins/icons.scss'
raise pluginbutton unless $?.to_i == 0
raise "Failed to Compile" unless File.exists?('css/plugins/icons.css')
puts "Plugin Icons - worked successfully"

pluginvisibility = 'sass scss/plugins/visibility.scss css/plugins/visibility.scss'
raise pluginbutton unless $?.to_i == 0
raise "Failed to Compile" unless File.exists?('css/plugins/visibility.css')
puts "Plugin Visibility - worked successfully"

plugindebugger = 'sass scss/plugins/debugger.scss css/plugins/debugger.scss'
raise pluginbutton unless $?.to_i == 0
raise "Failed to Compile" unless File.exists?('css/plugins/debugger.css')
puts "Plugin Debugger - worked successfully"