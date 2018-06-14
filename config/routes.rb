FLLCasts::Application.routes.draw do
  resources :course_sections, only: [:edit]
end
