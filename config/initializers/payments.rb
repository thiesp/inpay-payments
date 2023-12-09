module Facades; end

Rails.autoloaders.main.push_dir("#{Payments::Engine.root}/app/facades", namespace: Facades)