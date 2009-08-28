ActionController::Routing::Routes.draw do |map|
  # -- Administration Routes --
    map.resource :admins, :collection => {:login => :get, :logout => :get}
    map.with_options  :namespace    => "admins/",
                      :path_prefix  => "admins",
                      :name_prefix  => "admins_" do |admin|

      admin.resources :engines
    end
  # -- #
end
