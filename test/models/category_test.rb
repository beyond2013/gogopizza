require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "should not save category without description" do
    category = Category.new
    assert_not category.save, "Saved the category without description"
  end
end
