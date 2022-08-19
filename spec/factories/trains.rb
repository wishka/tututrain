# frozen_string_literal: true

FactoryBot.define do
  sequence :train_numer do |t|
    "11#{t}1"
  end

  factory :train do
    train_numer
    type { 'pass' }
    route { 'adler - krasnodar' }
    carriage_max { 20 }
  end
end
