# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#

namespace 'v1' do
  resources :companies, only: [:index, :show]
end
