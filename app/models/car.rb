class Car < ApplicationRecord

  def self.slow_query
    # Simulation of a slow query
    result = ActiveRecord::Base.connection.execute "select pg_sleep(2)"
    all
  end
  
end
