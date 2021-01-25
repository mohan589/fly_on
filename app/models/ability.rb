# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role? :enduser
      can :create, Schedule
      can :read, Schedule
    end
    if user.role? :admin
      can :manage, Plane
      can :manage, SeatSetting
    end
    if user.role? :superadmin
      can :manage, all
    end
  end
end
