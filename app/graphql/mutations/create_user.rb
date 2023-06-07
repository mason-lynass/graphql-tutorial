module Mutations
    class CreateUser < BaseMutation
        argument :username, String, required: true
        argument :password_digest, String, required: true

        type Types::UserType

        def resolve(username: nil, password_digest: nil)
            User.create!(
                username: username,
                password_digest: password_digest,
            )
        end
    end
end