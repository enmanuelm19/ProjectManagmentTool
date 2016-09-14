class Task < ActiveRecord::Base
  belongs_to :user

  auto_html_for :content do
    html_escape
    youtube(width: '80%', height: 250 )
    link target: '_blank', rel: 'nofollow'
    simple_format
  end
end
