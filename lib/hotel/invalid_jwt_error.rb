module Hotel
  # This class provides our custom error messages
  class InvalidJwtError < StandardError
    class << self
      def invalid_token
        self.new('Client authentication required! Invalid JWT')
      end
      def expired_token
        self.new('Client authentication required! Invalid JWT: Expired token')
      end
      def early_token
        self.new('Client authentication required! Invalid JWT: Received token too early')
      end
      def bad_issuer
        self.new('Client authentication required! Invalid JWT: Bad issuer')
      end
      def lousy_audience
        self.new('Client authentication required! Invalid JWT: Lousy audience')
      end
    end
  end
end
