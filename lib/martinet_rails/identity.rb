# frozen_string_literal: true

module MartinetRails
  # Gem identity information.
  module Identity
    def self.name
      "martinet_rails"
    end

    def self.label
      "MartinetRails"
    end

    def self.version
      "0.1.0"
    end

    def self.version_label
      "#{label} #{version}"
    end
  end
end
