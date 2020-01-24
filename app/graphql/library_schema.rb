class LibrarySchema < GraphQL::Schema
  use GraphQL::Subscription::ActionCableSubscriptions

  mutation(Types::MutationType)
  query(Types::QueryType)
  subscription(Types::SubscriptionType)
end
