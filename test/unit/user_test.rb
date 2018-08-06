require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
  	@user = User.new(email:"def2@gmail.com",password_hash:"$2a$10$rCIdqLTPODeQ8RmRrXZ4Du0lm2S.7sEtE7w8BAq1kDwtkVu92YGCS",password_salt:"$2a$10$rCIdqLTPODeQ8RmRrXZ4Du|2018-08-02 08:09:50.851605")
  end

  test "Email id should be unique" do
	@user.save
  	@user1 = User.new(email:"def2@gmail.com", password_hash:"$2a$10$rCIdqLTPODeQ8RmRrXZ4Du0lm2S.7sEtE7w8BAq1kDwtkVu92YGCS",password_salt:"$2a$10$rCIdqLTPODeQ8RmRrXZ4Du|2018-08-02 08:09:50.851605")
   	assert !@user1.valid?
  end

  test "Password hash and password salt should not be empty" do
  	@user2 = User.new(email:"new123@gmail.com")
   	assert !@user2.valid?
  end
end
