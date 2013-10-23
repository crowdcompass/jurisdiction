require "jurisdiction/version"

module Jurisdiction
  module DSL

    def jurisdiction(concern, opts={}, &b)
      mod = Module.new
      mod.instance_eval &b

      if Array(opts[:using]).include?(:capybara)
        mod.send :extend, Capybara::DSL
      end

      mref = Jurisdiction.const_set(concern.to_s.capitalize, mod)

      define_method concern do
        mref
      end
    end

  end
end

extend Jurisdiction::DSL
