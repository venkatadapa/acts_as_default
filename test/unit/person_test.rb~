require 'test_helper'

#class PersonTest < ActiveSupport::TestCase
  # Replace this with your real tests.
#  test "the truth" do
#   assert true
# end
#end

#require File.dirname(__FILE__) + '/../test_helper'

class PersonTest < ActiveSupport::TestCase
  fixtures :people

  def setup
      # empty out our options before each test
      Person.instance_variable_set "@default_find_options", {}
  end
 
  def test_default_order
    assert_equal [1,2,3,4], Person.find(:all).collect {|p| p.id}
    assert_equal 1, Person.find(:first).id
  end
 
  def test_ordered_by_age
    Person.default_find_option :order, :age
    assert_equal [2,1,4,3], Person.find(:all).collect {|p| p.id}
    assert_equal 2, Person.find(:first).id
  end
 
  def test_ordered_by_gender
    Person.default_find_option :order, :gender
    assert_equal [1,3,2,4], Person.find(:all).collect {|p| p.id}
  end
 
  def test_only_find_males
    Person.default_find_option :conditions, "gender = 'Male'"
    assert_equal [2,4], Person.find(:all).collect {|p| p.id}
    assert_equal 2, Person.find(:first).id
  end
 
  def test_only_find_first_three
    Person.default_find_option :limit, 3
    assert_equal [1,2, 3], Person.find(:all).collect {|p| p.id}
  end
 
end
