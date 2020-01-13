module Types
  class QueryType < Types::BaseObject
    # return all items from the library
    field :items,
      [Types::ItemType],
      null: false,
      description: 'Returns a list of items in the library'
    # resolver method for the items field - resolver method name must
    # match field name
    def items
      Item.preload(:user)
    end

    field :me, Types::UserType, null: true

    def me 
      context[:current_user]
    end
  end
end
