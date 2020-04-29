# frozen_string_literal: true

class NickReflex < ApplicationReflex
  delegate :current_user, to: :connection

  def generate
    race = element.dataset[:race]
    sex = element.dataset[:sex]

    @nick =
      if Nickname::WOW_RACES.include?(race)
        Nickname.generate_wow(race, sex)
      elsif race == 'asura'
        Nickname.generate_gw_asura(race, sex)
      elsif race == 'sylvari'
        Nickname.generate_gw_sylvari(race, sex)
      elsif Nickname::GW_RACES.include?(race)
        Nickname.generate_gw(race, sex)
      elsif Nickname::SAMP_RACES.include?(race)
        Nickname.generate_samp(race, sex)
      end[:name]
  end
end
