RailsAdmin.config do |config|

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
     warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Artist do
    create do
      configure :slug do
        hide
      end
    end
  end

  config.model KaraokePlace do
    create do
      configure :slug do
        hide
      end
    end
    edit do
      field :karaoke_machine, :belongs_to_association
    end
  end

  config.model KaraokeMachine do
    create do
      configure :slug do
        hide
      end
    end
  end

  config.model Song do
    create do
      configure :slug do
        hide
      end
    end
  end
end
