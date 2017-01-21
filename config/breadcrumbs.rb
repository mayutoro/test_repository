crumb :root do
  link "ホーム", root_path
end

crumb :about do
  link "わたしたちについて", about_index_path
  parent :root
end

crumb :contact do
  link "おといあわせ", contact_index_path
  parent :root
end

crumb :new do
  link "おといあわせフォーム", new_post_path
  parent :contact
end

crumb :portfolio do
  link "つくったもの", portfolio_index_path
  parent :root
end

crumb :pf01 do
  link "CafeDebut", portfolio_pf01_path
  parent :portfolio
end

crumb :pf02 do
  link "WordPressデザインワークブック", portfolio_pf02_path
  parent :portfolio
end

crumb :pf03 do
  link "バッタになりたい魔法使い", portfolio_pf03_path
  parent :portfolio
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