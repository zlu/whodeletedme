# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_whodeletedme_session',
  :secret      => 'fe145478bd16e9aafb4d70b7b2784e71bfb1bfd84750ec3beffa18cf7a304676327bbd6f1b26041fb314e597e7981009e7df212ed90f504c27c0e69b26023ab8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
