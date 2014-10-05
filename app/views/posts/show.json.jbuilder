json.title     @post.title
json.user      @post.user.email
json.posted_at @post.created_at
json.content   @post.content
json.array! @post.replies do |reply|
  json.friend  reply.user.email
  json.guess   reply.guess
end 
