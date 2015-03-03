FactoryGirl.define do
  factory :video, class: Connector do
    filename "SFD-ATEST-0215.mxf"
    producer "SLTV"
    tc_in 0
    tc_out 36000
    watershed true
    playable_from { 2.days.from_now }
    playable_until { 63.days.from_now }
  end
end
