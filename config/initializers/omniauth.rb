# Here's an example of a possible configuration where the strategy name
# is changed, the user is asked for extra permissions, the user is always
# prompted to select his account when logging in and the user's profile picture
# is returned as a thumbnail



# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'],
#     {
#       name: 'google',
#       scope: 'userinfo.email, https://www.googleapis.com/auth/calendar',
#       prompt: 'consent',
#       image_aspect_ratio: 'square',
#       image_size: 50,
#       access_type: "offline"
#     }
# end
