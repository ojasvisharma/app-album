class Ability
  include CanCan::Ability

  def initialize(user) 
    if user.admin? # Admin user
      can :manage, :all
    else # Non-admin user
      can :read, :all
    end
  end
end