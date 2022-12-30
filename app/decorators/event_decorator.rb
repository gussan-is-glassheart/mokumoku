# frozen_string_literal: true

class EventDecorator < Draper::Decorator
  delegate_all

  def thumbnail
    object.thumbnail.presence || 'event-default-image.png'
  end

  def only_woman_check
    object.only_woman == true ? "【女性限定】#{object.title}" : object.title.to_s
  end
end
