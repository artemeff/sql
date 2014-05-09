# encoding: utf-8

module SQL
  module Generator
    class Emitter

      # Identifier emitter class
      class Prefix < self

        handle :prefix
        children :left, :right

      private

        # Perform dispatch
        #
        # @return [undefined]
        #
        # @api private
        def dispatch
          visit(left)
          write(D_PERIOD)
          visit(right)
        end

      end # Identifier
    end # Emitter
  end # Generator
end # SQL
