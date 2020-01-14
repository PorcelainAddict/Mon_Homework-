require ("minitest/autorun")
require ("minitest/reporters")
require_relative('../Mon_homework')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test

  def setup

    @jeremy = Student.new("Jeremy the hombre", "G17", 'Hola, mi llamo es Jeremy el hombre', "Ruby")

  end

  #TEST_GETTERS

  def test_student_name()
    assert_equal("Jeremy the hombre", @jeremy.student_name)
  end

  def test_cohort_number()
    assert_equal("G17", @jeremy.get_cohort_number)
  end

  # TEST_SETTERS

  def test_set_student_name()
    # @student.student_name = "Gerenomo"
    # p "BEFORE SETTER: 🌁🌁🌁🌁🌁🌁🌁🌁🌁 #{@jeremy.student_name}"
    @jeremy.set_student_name("Gerenomo")
    # p "AFTER SETTER: 🌁🌁🌁🌁🌁🌁🌁🌁🌁 #{@jeremy.student_name}"
    assert_equal("Gerenomo", @jeremy.student_name)
  end

  def test_set_cohort_number()
    @jeremy.set_cohort_number("G18")
    assert_equal("G18", @jeremy.get_cohort_number)
  end

  def test_student_talk()
    assert_equal("Hola, mi llamo es Jeremy el hombre", @jeremy.student_talk)
    return @jeremy.student_talk
  end

  def test_student_favourite
    assert_equal("I heart Ruby", @jeremy.student_favourite)
    return @jeremy.student_favourite
  end
end
