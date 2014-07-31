class User < ActiveRecord::Base
    has_many :microposts

    scope :name_like, ->(name) {
      where 'name LIKE ?', "%#{sanitize_sql_like(name)}%"
    }
end
