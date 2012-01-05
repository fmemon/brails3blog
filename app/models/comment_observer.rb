class CommentObserver < ActiveRecord::Observer
 
 def after_create(comment) 
   puts "We will notify #{comment.article.user.email} in Chapter 9"
   Rails.logger.info "LOGGGGGGGGGGGGGGGGGG DEBUG: We will notify #{comment.article.user.email} in Chapter 9"
   #does not work on works in controller not in models flash[:notice] = "coming from the comment observer after a creat comment"
    Notifier.comment_added(comment).deliver
  end

end
