class Ability
  include CanCan::Ability

  def initialize(user, controller_namespace)
    user ||= User.new 
  	case controller_namespace
      when 'Admin'
        can :manage, :all if user.is_admin? 
      else
        can :read, :all
    end
  end
end
