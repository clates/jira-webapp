Rails.application.routes.draw do
  resources :day_of_weeks
  resources :jira_tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  match '/updateAssignedDay' => 'jira_tasks#updateAssignedDay', :via => [:get, :post], :as => 'updateAssignedDay'
  match '/closeTask' => 'jira_tasks#closeTask', :via => [:get, :post], :as => 'closeTask'

end
