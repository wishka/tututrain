# frozen_string_literal: true

class Station < ApplicationRecord
  belongs_to :route
end
