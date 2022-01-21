# Install

```
gem "data_statistics"
```

```
bundle install
rails g data_statistics:install
```

# Usage

Define counter_store in model

```
counter_store :like, day: true, week: true, month: true, quarter: true, year: true, all: true
```

Instance object invoke method

```
counter_increment!(:like, 5, Time.current)
```
