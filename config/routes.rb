Rails.application.routes.draw do
  
  #OPEN PAGE
  get "/", to: "articles#home", as: "home"                    #home page, to redirect to index


  #SHOW ALL ARTICLES & SPECIDIC ARTICLE
  get "/articles", to: "articles#index", as: "articles"         #all posts
  get "/articles/:id", to: "articles#show"                      #single post

  #POSTING NEW ARTICLES
  post "/articles", to: "articles#create", as: "new_article"    #new article
  get "/articles/new", to: "articles#new"                       #get for new article  

  #UPDATING
  get "/articles/:id/update", to: "articles#edit"
  put "/articles/:id/update", to: "articles#update"
  patch "/articles/:id/update", to: "articles#update" 

  #DELETING
  #get "/articles/:id", to: "articles#show"
  delete "/articles/:id", to: "articles#delete"


end
