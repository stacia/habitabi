class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :manage, [Habit, Action, Value], :user_id => user.id
  end
  
end
