ActionController::Routing::Routes.draw do |map| 
   map.connect '/teachers/databaseUpdate/', :controller => 'teachers', :action => 'databaseUpdate'
   map.connect '/teachers/updateAbsentName/', :controller => 'teachers', :action => 'updateAbsentName'
   map.connect '/teachers/viewSubForTakeAtt/', :controller => 'teachers', :action => 'viewSubForTakeAtt'
   map.connect '/teachers/viewStuNameForTakeAtt/', :controller => 'teachers', :action => 'viewStuNameForTakeAtt'
   map.connect '/teachers/viewSubForStuInfo/', :controller => 'teachers', :action => 'viewSubForStuInfo'
   map.connect '/teachers/studentInfo/', :controller => 'teachers', :action => 'studentInfo'
   map.connect '/teachers/viewSubForAtt/', :controller => 'teachers', :action => 'viewSubForAtt'
   map.connect '/teachers/teacherViewAtt/', :controller => 'teachers', :action => 'teacherViewAtt'
   map.connect 'students/studentAttendance', :controller => 'students', :action => 'studentAttendance'
   map.connect 'teachers/teacherDetails', :controller => 'teachers', :action => 'teacherDetails'
   map.connect 'teachers/checkTeacherLog', :controller => 'teachers', :action => 'checkTeacherLog'
   map.connect 'students/checkLog', :controller => 'students', :action => 'checkLog'
   map.connect 'students/studentLogin', :controller => 'students', :action => 'studentLogin'
   map.connect 'teachers/teacherLogin', :controller => 'teachers', :action => 'teacherLogin'
   map.connect 'students/index', :controller => 'students', :action => 'index'
   map.connect 'students/about', :controller => 'students', :action => 'about'
   map.connect 'students/contact', :controller => 'students', :action => 'contact'
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  #map.connect ':controller/:action/:id'
  #map.connect ':controller/:action/:id.:format'
end
