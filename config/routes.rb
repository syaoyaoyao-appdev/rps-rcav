Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "home_page" })
  get("/rock", { :controller => "application", :action => "play_rock" })
  get("/scissors", { :controller => "application", :action => "play_scissors" })
  get("/paper", { :controller => "application", :action => "play_paper" })
end
