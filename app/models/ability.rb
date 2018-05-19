class Ability
    include Cancan::Ability
    def initialize(user)
        user ||= User.new #guest user
        can :manage, User, id: user.id
    end
end