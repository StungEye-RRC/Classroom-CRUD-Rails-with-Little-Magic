Rails.application.routes.draw do
  # Show Collection
  get 'students', to: 'students#index', as: 'students'

  # Show Member
  get 'students/:id', to: 'students#show',  as: 'student', id: /\d+/

  # Root routes
  root to: 'students#index'
end
