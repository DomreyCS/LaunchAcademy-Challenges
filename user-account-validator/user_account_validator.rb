require 'pry'
require_relative 'missing_email_error'

class UserAccountValidator
  def initialize(user_account={email: nil,username: nil, name: nil})
    @email = user_account[:email]
    @username = user_account[:username]
    @name = user_account[:name]
  end

  def email
    if invalid_email?
      raise MissingEmailError, "email is undefined: '#{@email}'"
    end
    @email
  end

  def username
    if invalid_username?
      raise StandardError, "username is undefined: '#{@username}'"
    end
    @username
  end

  def invalid_email?
    @email == nil || !@email.include?("@")
  end

  def invalid_username?
    @username == nil
  end
end
