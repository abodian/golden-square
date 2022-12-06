require 'password_checker'

RSpec.describe PasswordChecker do
  it "returns true if password is greater or than or equal to 8 characters" do
    passwordchecker = PasswordChecker.new
    result = passwordchecker.check("Password")
    expect(result).to eq true
  end

  it "fails if password is invalid" do
    passwordchecker = PasswordChecker.new
    expect { passwordchecker.check("Test") }.to raise_error "Invalid password, must be 8+ characters."
  end
end