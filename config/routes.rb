BookShelf::Application.routes.draw do

  resources :books  
  match 'books/unborrow/:id' => "books#unborrow"
  match 'books/borrow/:id' => "books#borrow"
  match 'books_borrowed', :to => "books#borrowed"
  match 'not_borrowed_books', :to => "books#not_borrowed"
  match 'home/callback' => "home#callback"

  root :to => 'home#index'
end
