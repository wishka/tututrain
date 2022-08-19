# frozen_string_literal: true

FactoryBot.define do
  sequence :route_name do |t|
    "fff#{t}a"
  end
  sequence :stations do |t|
    "moscow#{t} - sochi#{t}"
  end

  factory :route do
    route_name
    stations
  end
end
