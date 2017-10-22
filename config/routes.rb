Rails.application.routes.draw do

  # Show Collection (index READ)
  get 'students', to: 'students#index', as: 'students'

  # Show Member (show READ)
  get 'students/:id', to: 'students#show',  as: 'student', id: /\d+/

  # Display New Student Form (new CREATE)
  get 'students/new', to: 'students#new', as: 'new_student'

  # Process Posted New Student Form (create CREATE)
  post 'students', to: 'students#create'

  # Root routes
  root to: 'students#index'
end
