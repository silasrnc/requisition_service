FactoryBot.define do
  factory :user do
    username { 'Jacob' }
    email    { 'jake@jake.jake' }
    password { PasswordHelper.create_password('jakejake') }
  end

  factory :user2, class: 'User' do
    username { 'Jacob2' }
    email    { 'jake2@jake.jake' }
    password { PasswordHelper.create_password('jakejake2') }
  end
end
