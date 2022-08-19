# frozen_string_literal: true

class Route < ApplicationRecord
  belongs_to :train
  has_many :stations
end
