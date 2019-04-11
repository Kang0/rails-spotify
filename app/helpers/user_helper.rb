module UserHelper

    def joined(user)
        user.created_at.strftime("Joined %b %d, %Y")
    end

end