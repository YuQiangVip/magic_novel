namespace :block_chain do
  root to: "homes#index"
  resources :homes do
    collection do
      get :trade, :kline
    end
  end
end