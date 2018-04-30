require_relative 'lib/01_sql_object'

class Human < ReactiveRecord::Base
  belongs_to :house
  has_many :cars, foreign_key: :owner_id

  finalize!
end

class House < ReactiveRecord::Base
  has_many :residents, foreign_key: :house_id
  has_many_through :cars, :residents, :cars
  
  finalize!
end

class cars < ReactiveRecord::Base
  belongs_to :owner
  has_many :people, class_name: 'Person'
  has_one_through :house, :owner, :house

  finalize!
end
