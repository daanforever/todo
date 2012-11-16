require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'show save new role' do
    role = Role.new
    role.name = 'TestRole'
    assert role.save
  end
end
