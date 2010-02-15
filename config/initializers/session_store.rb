# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_createplugin_session',
  :secret      => 'd56bce3a599a56965c3a3f9627e6834333274221a9be07e15e0729ba69e38e2373853cc0ebceef15c9180c408ca184d03b047da7bd8e5fc13c96d82e7d3adb1f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
