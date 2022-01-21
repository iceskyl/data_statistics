require "data_statistics/version"
require "data_statistics/engine"
require "data_statistics/model"
require "data_statistics/mixin"

module DataStatistics
  # Your code goes here...
end

ActiveSupport.on_load(:active_record) do
  include DataStatistics::Mixin
end
