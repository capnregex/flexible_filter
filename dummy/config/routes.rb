Rails.application.routes.draw do
  resources :article_tags
  resources :articles
  resources :tags
  resources :categories
  mount FlexibleFilter::Engine => "/flexible_filter"
end
