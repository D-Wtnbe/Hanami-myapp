module Web
  module Controllers
    module Sessions
      class Create
        include Web::Action

        expose :user

        def call(params)
          userid = params[:entity_session][:userid]
          password = params[:entity_session][:password]

    @user = EntityRepository.new.find_by_userid(userid)
    login("You have been successfully logged in.") if authenticated?(password)
    redirect_to routes.user.path
        end
      end
    end
  end
end
