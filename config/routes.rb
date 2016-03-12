Rails.application.routes.draw do

  scope :module => :site do
    root to: 'top#index'
  end

end
