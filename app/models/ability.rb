class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?
      can :manage, Group, user: user
      can :manage, Entity, user: user
  end
end
