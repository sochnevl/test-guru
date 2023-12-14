module SessionsHelper
  def flash_message_for_user(type)
    content_tag :p, flash[type], class: 'flash alert' if flash[type]
  end
end
