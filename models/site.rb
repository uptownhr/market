class Site < Sequel::Model

  plugin :timestamps
  many_to_one :user
  many_to_one :app
end
