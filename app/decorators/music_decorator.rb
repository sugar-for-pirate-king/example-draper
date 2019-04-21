# frozen_string_literal: true

#
# Music Decorator
#
class MusicDecorator < Draper::Decorator
  delegate_all

  def title
    super || 'Judul tidak tersedia'
  end

  def author
    super || 'Author tidak tersedia'
  end

  def download_url
    super || 'Link tidak tersedia'
  end

  def render
    h.render 'musics/music', music: self
  end

  def donwload_link
    return download_url if download_url.eql?('Link tidak tersedia')

    h.link_to 'Download', download_url, target: '_blank'
  end

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
end
