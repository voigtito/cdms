require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  # full_title
  #----------------------------
  test 'should return the default title' do
    assert_equal 'SGCD', full_title
  end

  test 'should return the full title' do
    assert_equal 'Home | SGCD', full_title('Home')
  end

  test 'should return the full title with two arguments' do
    assert_equal 'Name | Acronyms', full_title('Name', 'Acronyms')
  end

  # bootstrap_class_for
  #----------------------------
  test 'should convert success key class alert-success' do
    assert_equal 'alert-success', bootstrap_class_for('success')
  end

  test 'should convert error key class alert-danger' do
    assert_equal 'alert-danger', bootstrap_class_for('error')
  end

  test 'should convert alert key class alert-warning' do
    assert_equal 'alert-warning', bootstrap_class_for('alert')
  end

  test 'should convert notice key class alert-info' do
    assert_equal 'alert-info', bootstrap_class_for('notice')
  end

  test 'should convert any key class to alert-key' do
    assert_equal 'alert-apocalypse', bootstrap_class_for('apocalypse')
  end
end