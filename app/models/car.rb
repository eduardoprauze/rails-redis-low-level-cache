class Car < ApplicationRecord
  after_save :clear_cache

  def self.slow_query
    # Simulation of a slow query
    result = ActiveRecord::Base.connection.execute "select pg_sleep(2)"
    all
  end

  def clear_cache
    p "Cache cleared!"
    Rails.cache.delete("cars")
  end

end
