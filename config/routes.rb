ActionController::Routing::Routes.draw do |map|
  # -- Administration Routes --
    map.resource :admin, :collection => {:login => :get, :logout => :get}
    map.with_options  :namespace    => "admin/",
                      :path_prefix  => "admin",
                      :name_prefix  => "admin_" do |admin|

      admin.resources :engines
    end
  # -- #
end
