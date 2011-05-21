# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_clowns_rondo_session',
  :secret      => '62021f410acddfef626456889bd7aeb7b0be923fefe80dac325647f4244c5acb0b84ec92a48fc97994c4061fd617d657df318acb56764667d3a46b7580fadca7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
