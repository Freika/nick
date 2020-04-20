# frozen_string_literal: true

class NickReflex < ApplicationReflex
  def generate
    @nick = Nickname.generate_wow(element.dataset[:race], element.dataset[:sex])[:name]
  end
end
