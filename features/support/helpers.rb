module Helpers
    def login_with(email, password)
        fill_in(id: "email", with: email)
        fill_in(id: "passwd", with: password)

        find("#SubmitLogin").click
    end
end
