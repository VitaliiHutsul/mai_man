crumb :root do
  link t('main_page'), root_path
end

crumb :news do
  @news_count = News.count
  link t('news.index.news', news_count: @news_count), news_archive_path
end

crumb :news_item do |news_item|
  link news_item.title, news_path(news_item)
  parent :news
end

crumb :updates do
  @updates_count = Update.count
  link t('updates.index.updates', updates_count: @updates_count), updates_archive_path
end

crumb :gallery_photos do
  @gallery_photos_count = Gallery.first.gallery_photos.count
  link t('galleries.index.gallery', gallery_photos_count: @gallery_photos_count), galleries_path
end

crumb :construction_conditions do
  @construction_condition_count = ConstructionCondition.count
  link t('construction_condition.index.construction_condition', construction_condition_count: @construction_condition_count), construction_conditions_path
end

crumb :construction_condition_item do |construction_condition_item|
  link construction_condition_item.title, construction_condition_path(construction_condition_item)
  parent :construction_conditions
end

crumb :videos do
  @videos_count = Video.count
  link t('videos.index.video', videos_count: @videos_count), videos_path
end

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
