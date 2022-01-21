# frozen_string_literal: true

module DataStatistics
  module Mixin
    extend ActiveSupport::Concern

    # TODO 临时命名，后续调整
    mattr_accessor :counter_hash
    @@counter_config = {}

    def counter_increment!(counter_type, by, time)
      options = @@counter_config[self.class.name]&.[](counter_type)
      raise "unknow counter_type" unless options

      options.each do |time_name, flag|
        next unless flag

        start_at, end_at = if time_name.to_sym == :all
                             [nil, nil]
                           else
                             [time.send("beginning_of_#{time_name}"), time.send("end_of_#{time_name}")]
                           end

        counter = Counter.find_or_create_by(owner: self, counter_type: counter_type, time_kind: time_name, start_at: start_at, end_at: end_at)
        counter.increment!(:value, by)
      end

      true
    end

    class_methods do
      def counter_store(counter_type, options = {})
        @@counter_config[name] ||= {}
        @@counter_config[name][counter_type] ||= options.reverse_merge(Counter.time_kinds.keys.inject({}) { |hash, time_kind| hash[time_kind.to_sym] = false; hash } )
      end
    end
  end
end
