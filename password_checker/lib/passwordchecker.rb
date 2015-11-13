require 'rspec'
require 'pry'

class PasswordChecker
  attr_accessor :email, :password

  def initialize email, password
    @email = email
    @password = password
  end

  def check_password 
    check = right_length?
    check = check && has_number?
    check = check && has_uppercase?
    check = check && has_lowercase?
    check = check && has_symbol?
    check = check && has_name_in_password?
    check = check && has_domain_in_password?
  end

  def right_length?
    @password.length > 7
  end

  def has_number?
    /\d/.match(@password) != nil
  end

  def has_uppercase?
    /[A-Z]/.match(@password) != nil
  end

  def has_lowercase?
    /[a-z]/.match(@password) != nil
  end

  def has_symbol?
    /\W/.match(@password) != nil
  end

  def has_name_in_password?
    email_name = @email.split("@")[0]
    @password.index(email_name) == nil
  end

  def has_domain_in_password?
    domain_name = @email.split("@")[1].split(".")[0]
    @password.index(domain_name) == nil
  end
end