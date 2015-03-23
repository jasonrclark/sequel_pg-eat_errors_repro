module Sequel
  module EatErrors
    def log_yield(*args)
      result = nil
      begin
        result = super
      rescue => err
        # Eat the failure!
      end
      return result
    end
  end

  Database.register_extension(:eat_errors, EatErrors)
end
