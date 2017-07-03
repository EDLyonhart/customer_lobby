class Company < ApplicationRecord

has_many :customers
has_many :reviews, through: :customers

end


#         Prefix Verb   URI Pattern                  Controller#Action
#  company_index GET    /company(.:format)           company#index
#                POST   /company(.:format)           company#create
#    new_company GET    /company/new(.:format)       company#new
#   edit_company GET    /company/:id/edit(.:format)  company#edit
#        company GET    /company/:id(.:format)       company#show
#                PATCH  /company/:id(.:format)       company#update
#                PUT    /company/:id(.:format)       company#update
#                DELETE /company/:id(.:format)       company#destroy
# customer_index GET    /customer(.:format)          customer#index
#                POST   /customer(.:format)          customer#create
#   new_customer GET    /customer/new(.:format)      customer#new
#  edit_customer GET    /customer/:id/edit(.:format) customer#edit
#       customer GET    /customer/:id(.:format)      customer#show
#                PATCH  /customer/:id(.:format)      customer#update
#                PUT    /customer/:id(.:format)      customer#update
#                DELETE /customer/:id(.:format)      customer#destroy
#   review_index GET    /review(.:format)            review#index
#                POST   /review(.:format)            review#create
#     new_review GET    /review/new(.:format)        review#new
#    edit_review GET    /review/:id/edit(.:format)   review#edit
#         review GET    /review/:id(.:format)        review#show
#                PATCH  /review/:id(.:format)        review#update
#                PUT    /review/:id(.:format)        review#update
#                DELETE /review/:id(.:format)        review#destroy
#           root GET    /                            company#index
