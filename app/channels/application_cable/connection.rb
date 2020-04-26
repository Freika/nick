module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      user_id = cookies.encrypted[:user_id]
      self.current_user = user_id
    end
  end
end


