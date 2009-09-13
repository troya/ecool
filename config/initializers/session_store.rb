# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ecool_stage_session',
  :secret      => 'fdcd6eec92a96a503d74803a62a3af9de01f451a1526a703cb71c55201b07e03b14f83755c4a2efd033c2e2634ac4e31b2d76572b65be2bec9d5db98383a862c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
