# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nLogue_session',
  :secret      => 'ef6e3dd09b86ff4c1a4a35a9db45b7b5b6fc64dfdc8b1b093dfb5c4ec2b1e749d6e258030ccd78b1b61174edfed1398562c453078bab9ea1836d974ee000bd31'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
