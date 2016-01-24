class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
      if user.role == "admin"
        can :manage, :all             # allow superadmins to do anything
        can :read, :all
      else
        can :manage, [Artist, Collab, Franchise, KaraokeMachine, KaraokePlace, KaraokeSong, Song]
        can :read, [PaperTrail::Version, PaperTrail::VersionAssociation]
      end
    end
  end
end
