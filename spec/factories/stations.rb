# frozen_string_literal: true

FactoryBot.define do
  sequence :current_trains do |t|
    "11#{t}1"
  end
  sequence :name do |t|
    "moscow#{t}"
  end

  factory :stations do
    name
    current_trains
  end
end
