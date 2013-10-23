SampleApp::Application.routes.draw do
  root to: "samples#index"

  get "/samples", to: "samples#index"

  get "/samples/new", to: "samples#new"

  get "/samples/:kaka", to: "samples#show", as: "sample"

  post "/samples", to: "samples#create"

end
