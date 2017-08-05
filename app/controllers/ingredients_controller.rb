class IngredientsController < ApplicationController

  def xanthan_gum
    @ingredient = Topic.find_by(name: 'Xanthan Gum')
  end

  def thiamine_mononitrate
    @ingredient = Topic.find_by(name: 'Thiamine Mononitrate')
  end

  def azodicarbonamide
    @ingredient = Topic.find_by(name: 'Azodicarbonamide')
  end

  def sodium_nitrate
    @ingredient = Topic.find_by(name: 'Sodium Nitrate')
  end

  def butylated_hydroxytoluene
    @ingredient = Topic.find_by(name: 'Butylated Hydroxytoluene')
  end
end
