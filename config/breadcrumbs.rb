crumb :root do
  link "Home", root_path
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).

# Home 
crumb :root do
  link "Home", root_path
end
 
# post#index
crumb :post_index do 
  link "Posts", post_index_path
  parent :root
end
 
crumb :post_show do |post|
   link "post", font_path(post)
   parent :post_index
end
 
crumb :post_edit do |post|
    link "Edit", font_path(post)
    parent :post_index
 end
 
# post#new
crumb :new_post do
  link "New Post", post_new_path
  parent :post_index
end