  #encoding: utf-8
  def full_title(page_title)
     base_title ='这个是KLY的第一个DEMO'
     if page_title.empty?
       base_title
     else
       "#{base_title} | #{page_title}"
     end
  end