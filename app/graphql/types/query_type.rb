module Types
  class QueryType < Types::BaseObject
    field :all_users, [UserType], null: false

    def all_users
      User.all 
    end
  end
end
