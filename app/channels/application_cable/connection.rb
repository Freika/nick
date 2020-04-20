module ApplicationCable
  class Connection < ActionCable::Connection::Base
    def connect
      # logger.add_tags 'ActionCable', '100500'
    end
  end
end


