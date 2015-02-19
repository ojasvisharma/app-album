class Ability
can :manage, :all if user.role == "admin"
end