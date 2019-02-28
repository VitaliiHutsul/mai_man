RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.parent_controller = '::ApplicationController'

  config.authenticate_with do
    require_login
  end
  config.current_user_method(&:current_user)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except ['LocationPhoto']
      except ['InfrastructurePhoto']
    end
    export
    bulk_delete
    show
    edit
    delete do
      except ['LocationPhoto']
      except ['InfrastructurePhoto']
    end
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'User' do
    visible false
  end

  config.model 'Translation' do
    weight 90
    navigation_label "Інші"
    field :key, :string do
      read_only true
      help false
    end
    field :value
  end

  config.model 'Request' do
    list do
      include_all_fields
      exclude_fields :_id, :updated_at
    end
    edit do
      include_all_fields
    end
  end

  config.model 'News' do
    configure :body, :ck_editor
    list do
      include_all_fields
      exclude_fields :_id
    end
    edit do
      include_all_fields
      configure :date, :date do
        strftime_format '%d.%m.%y'
      end
      field :body, :ck_editor
      configure :preview_image do
        help 'рекомендовані розміри зображення 350x220'
      end
      configure :news_photos do
        help 'рекомендовані розміри зображення 750х470'
      end
    end
  end

  config.model 'ConstructionCondition' do
    configure :body, :ck_editor
    list do
      include_all_fields
      exclude_fields :_id
    end
    edit do
      include_all_fields
      configure :date, :date do
        strftime_format '%d.%m.%y'
      end
      field :body, :ck_editor
      configure :preview_image do
        help 'рекомендовані розміри зображення 480x270'
      end
      configure :construction_condition_photos do
        help 'рекомендовані розміри зображення 750х470'
      end
    end
  end

  config.model 'NewsPhoto' do
    edit do
      field :photo do
        help 'рекомендовані розміри зображення 750х470'
      end
    end
  end

  config.model 'Video' do
    list do
      exclude_fields :_id
      exclude_fields :youtube_video_id
    end
    edit do
      exclude_fields :youtube_video_id
      field :youtube_link
      field :title
      field :weight
    end
  end

  config.model 'Update' do
    list do
      include_all_fields
      exclude_fields :_id
    end
    edit do
      configure :date, :date do
        strftime_format '%d.%m.%y'
      end
    end
  end

  config.model 'Gallery' do
    list do
      include_all_fields
      exclude_fields :_id
    end
  end

  config.model 'GalleryPhoto' do
    edit do
      field :photo do
        help 'рекомендовані розміри зображення 750х470'
      end
    end
  end

  config.model 'MainSlider' do
    list do
      include_all_fields
      exclude_fields :_id
    end
    edit do
      field :first_photo do
        help "Обов'язкове. Рекомендовані розміри зображення 960х1013"
      end
      field :second_photo do
        help "Обов'язкове. Рекомендовані розміри зображення 960х1013"
      end
    end
  end

  config.model 'LocationPhoto' do
    list do
      include_all_fields
      exclude_fields :_id
    end
    edit do
      field :photo do
        help 'рекомендовані розміри зображення 960х1013'
      end
    end
  end

  config.model 'InfrastructurePhoto' do
    list do
      field :created_at do
        sort_reverse true
      end
      include_all_fields
      exclude_fields :_id, :created_at, :updated_at
    end
    edit do
      field :photo do
        help 'рекомендовані розміри зображення 960х1013'
      end
    end
  end

  config.model 'Manager' do
    list do
      include_all_fields
      exclude_fields :_id
    end

    edit do
      field :email, :string
      field :phone, :string
      field :send_sms
    end
  end

  config.model 'Download' do
    list do
      include_all_fields
      exclude_fields :_id
    end
    edit do
      field :title
      field :text
      field :start_date
      field :ios_link
      field :show_ios_button
      field :android_link
      field :show_android_button
      configure :start_date, :date do
        strftime_format '%y/%m/%d'
      end
      field :downloads_photos do
        help 'рекомендовані розміри зображення 320x648'
      end
    end
  end

end
