Rails.application.routes.draw do

  resources :companies
  resources :customers
  resources :reviews

  root "companies#index"
end


#        Prefix Verb   URI Pattern                   Controller#Action
#     companies GET    /companies(.:format)          companies#index
#               POST   /companies(.:format)          companies#create
#   new_company GET    /companies/new(.:format)      companies#new
#  edit_company GET    /companies/:id/edit(.:format) companies#edit
#       company GET    /companies/:id(.:format)      companies#show
#               PATCH  /companies/:id(.:format)      companies#update
#               PUT    /companies/:id(.:format)      companies#update
#               DELETE /companies/:id(.:format)      companies#destroy
#     customers GET    /customers(.:format)          customers#index
#               POST   /customers(.:format)          customers#create
#  new_customer GET    /customers/new(.:format)      customers#new
# edit_customer GET    /customers/:id/edit(.:format) customers#edit
#      customer GET    /customers/:id(.:format)      customers#show
#               PATCH  /customers/:id(.:format)      customers#update
#               PUT    /customers/:id(.:format)      customers#update
#               DELETE /customers/:id(.:format)      customers#destroy
#       reviews GET    /reviews(.:format)            reviews#index
#               POST   /reviews(.:format)            reviews#create
#    new_review GET    /reviews/new(.:format)        reviews#new
#   edit_review GET    /reviews/:id/edit(.:format)   reviews#edit
#        review GET    /reviews/:id(.:format)        reviews#show
#               PATCH  /reviews/:id(.:format)        reviews#update
#               PUT    /reviews/:id(.:format)        reviews#update
#               DELETE /reviews/:id(.:format)        reviews#destroy
#          root GET    /                             company#index