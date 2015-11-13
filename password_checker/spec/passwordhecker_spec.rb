require_relative '../lib/passwordchecker.rb'

describe 'PasswordChecker' do

  let(:checker) { PasswordChecker.new("", "") }

  describe 'check_password' do
    it "returns false if the password is not correct" do
      checker.email = "fernando@ironhack.com"
      checker.password = "IHfernando#08"
      expect(checker.check_password).to be false
    end

    it "returns true if the password is correct" do
      checker.email = "fernando@ironhack.com"
      checker.password = "IHferiron#08"
      expect(checker.check_password).to be true
    end
  end

  describe 'right_length?' do
    it 'returns false if password.length is < 7' do
      expect(checker.right_length?).to be false
    end

    it 'reurns false if password.length is > 7' do
      checker.password = "12345678"
      expect(checker.right_length?).to be true
    end
  end

  describe 'has_number?' do
    it "returns false if the password doesn't have at least a number" do
      checker.password = "justletters"
      expect(checker.has_number?).to be false
    end

    it "returns true if the password have at least a number" do
      checker.password = "lettersand1"
      expect(checker.has_number?).to be true
    end
  end

  describe 'has_uppercase?' do
    it "returns false if the password doesn't have at least an upper letter" do
      expect(checker.has_uppercase?).to be false
    end

    it "returns false if the password doesn't have at least an upper letter" do
      checker.password = "Aletteruppercase"
      expect(checker.has_uppercase?).to be true
    end
  end

  describe 'has_lowercase?' do
    it "returns false if the password doesn't have at least a lower letter" do
      expect(checker.has_lowercase?).to be false
    end

    it "returns false if the password doesn't have at least a lower letter" do
      checker.password = "Aletteruppercase"
      expect(checker.has_lowercase?).to be true
    end
  end

  describe 'has_symbol?' do
    it "returns false if the password doesn't have at least a symbol" do
      expect(checker.has_symbol?).to be false
    end

    it "returns false if the password have at least a symbol" do
      checker.password = "#asymbolpassword"
      expect(checker.has_symbol?).to be true
    end
  end

  describe 'has_name_in_password?' do
    it "returns false if the password contains the email name" do
      checker.email = "ironhack@gmail.com"
      checker.password = "ferironhack"
      expect(checker.has_name_in_password?).to be false
    end

    it "returns true if the password doesn't contain the email name" do
      checker.email = "ironhack@gmail.com"
      checker.password = "fer"
      expect(checker.has_name_in_password?).to be true
    end
  end

  describe 'has_domain_in_password?' do
    it "returns false if the password contains the domain" do
      checker.email = "ironhack@gmail.com"
      checker.password = "fergmail"
      expect(checker.has_domain_in_password?).to be false
    end

    it "returns true if the password doesn't contain the domain" do
      checker.email = "ironhack@gmail.com"
      checker.password = "fer"
      expect(checker.has_domain_in_password?).to be true
    end

    it "returns true if the password contains de extension of the web" do
      checker.email = "ironhack@gmail.com"
      checker.password = "com"
      expect(checker.has_domain_in_password?).to be true
    end
  end
end