# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Metalink_session',
  :secret      => '0ae4a6222d8a5b983c83fe22e3bc561bbbfa85a4e4d75f8807927ba4621d58b4d9b7f55ad70962af6fcdc246d4fbc6476b9069de342eb13a886c356063ab9ec1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
