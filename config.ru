require './config/environment'
require 'rack-mini-profiler'
Rack::MiniProfiler.profile_method(Hanami::View::Rendering::Partial, :render) { "Render partial #{@options[:partial]}" }

use Rack::MiniProfiler
run Hanami.app
