module Makara
  module Sidekiq
    class Middleware
      def call(*)
        yield if block_given?
      ensure
        ::Makara::Context.set_current({})
      end
    end
  end
end
