#what is authentication?

-Making sure users is who they say they are
-Secure password, provides security
-provide accessibility
-Keeping data on application to use


#What does Auth Look like in rails without using Devise

-sessions
-has_secure_password
-bcrypt
-authenticate(controller)


#Highlights

-Defines a config/routes for routing
-sessions controller that handles login/logout
-Don't want to signup/register in our sessions controller
-Users controller => handles creating User
-Sessions controller => handles creating sessions


#Flow

-User Model
	-attributes: email, password(password_digest)
	-bcrypt => has_secure_password => authenticate(contoller)
	-routes - signup => new/create [get, post] 
	-registration routes => login/logout [get,post,delete]
	-session[:user_id] => logs our user in
     