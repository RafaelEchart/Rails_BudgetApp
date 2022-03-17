class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, User, id: user.id
    can :manage, Category, user_id: user.id
    can :manage, Entity, user_id: user.id
    can :manage, EntityCategory, category_id: { user_id: user.id }
  end
end
