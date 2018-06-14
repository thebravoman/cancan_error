class Ability
  include CanCan::Ability

  def initialize(user)

    can :access, Episode, Episode.all do |model_object|
    end
    can :access, Material, Material.all do |model_object|
    end

    can :manage, :all
  end

end
