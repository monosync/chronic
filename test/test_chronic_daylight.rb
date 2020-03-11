require 'helper'

class TestChronicDaylight < TestCase
  def test_correct_time
    zone = "Eastern Time (US & Canada)"
    time = "12:00 PM"
    date = "2020-03-08"
    Time.zone = zone
    Chronic.time_class = Time.zone
    assert_equal Time.find_zone(zone).parse("#{date} #{time}").utc, Chronic.parse("#{date} #{time}").utc
  end
end
