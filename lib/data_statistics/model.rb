# frozen_string_literal: true

module DataStatistics
  module Model
    extend ActiveSupport::Concern

    included do
      enum time_kind: {
        all: 0,
        second: 1,
        minute: 2,
        hour: 3,
        day: 4,
        week: 5,
        month: 6,
        quarter: 7,
        year: 8
      }, _suffix: true

      # association macros
      belongs_to :owner, polymorphic: true
    end
  end
end
