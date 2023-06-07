require 'test_helper'

class Mutations::CreateUnitTest < ActiveSupport::TestCase
    def perform(user: nil, **args)
        Mutations::CreateUser.new(object: nil, field: nil, context: {}).resolve(**args)
    end

    test 'create a new user' do 
        link = perform(
            user: 'NewUser',
            password_digest: 'TestPassword!'
        )

        assert link.persisted?
        assert_equal link.user, 'NewUser'
        assert_equal link.password_digest, 'TestPassword!'
    end
end