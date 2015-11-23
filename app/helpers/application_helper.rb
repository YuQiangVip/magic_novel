module ApplicationHelper
  # 具有作者权限
  def have_author_authority?(book)
    if current_user
      book.author == current_author
    else
      false
    end
  end

  # 具有操作权限
  def have_do_authority?(book)
    if current_user
      book.author != current_author || current_user.admin?
    else
      false
    end
  end

  def prev_chapeter_by(count, chapter)
    (1..count).each do
      return chapter unless chapter.prev_chapter
      chapter = chapter.prev_chapter
    end
    chapter
  end
end
