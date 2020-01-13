Rails.application.routes.draw do
  get 'library/index'
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  root 'library#index'
  post "/graphql", to: "graphql#execute"
end
