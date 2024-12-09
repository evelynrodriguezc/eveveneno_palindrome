require_relative "eveveneno_palindrome/version"

module EvevenenoPalindrome
    # Returns true for a palindrome, false otherwise.  def palindrome?
    def palindrome?
      if processed_content.empty?
        false
      else
        processed_content == processed_content.reverse
      end
    end

      private

        # Returns content for palindrome testing.
        def processed_content
          to_s.scan(/[a-z0-9]/i).join.downcase
        end
end

class String
  include EvevenenoPalindrome
end

class Integer
  include EvevenenoPalindrome
end