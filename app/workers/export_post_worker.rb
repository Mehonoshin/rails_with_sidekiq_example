class ExportPostWorker
  include Sidekiq::Worker

  def perform(post_id)
    post = Post.find(post_id)
    post.update!(exported: true)
  end
end
