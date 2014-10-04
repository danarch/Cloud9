json.array! @posts do |post|
  json.title post.title
  json.user  post.user.email
  json.url   post_path(post)
end
