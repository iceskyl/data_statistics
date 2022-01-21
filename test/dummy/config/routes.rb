Rails.application.routes.draw do
  mount DataStatistics::Engine => "/data_statistics"
end
