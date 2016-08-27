Rails.application.routes.draw do
  # API routes path
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/quotes/all' => 'quotes#show_all'
      get '/quotes/true' => 'quotes#filter_true'
      get '/quotes/false' => 'quotes#filter_false'

      get '*path', to: 'quotes#catch_all'
    end
  end
  get '*path', to: 'application#catch_all'
end
