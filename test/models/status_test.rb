require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	test "status should require content" do
		status = Status.new
		assert !status.save
		assert !status.errors[:content].empty?
	end

	test "status content is at least 2 long" do
		status = Status.new(conetnt: '1')
		assert !status.save
		assert !status.errors[:content].empty?	
	end

	test "status should have a user id" do
		status = Status.new(content: "Hello")
		assert !status.save
		assert !status.errors[:user].empty?
	end

  # test "the truth" do
  #   assert true
  # end
end
