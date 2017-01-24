module QcloudCos
  module Objectable
    def initialize(hash)
      hash.each do |k, v|
        send("#{k}=", v) if respond_to?("#{k}=")
      end
    end
  end
end
