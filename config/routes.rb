Rails.application.routes.draw do
  resources :subnets do
    resources :dhcp
  end
end
