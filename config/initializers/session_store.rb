# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_oval_office_session',
  :secret      => '1ee7bee6a3faefd8d422b39a7315efb062ca2918d215c8fc4305c5c7a3b3d5c99716fd709bee338b2d75b093fc5553a549cd556902aed95507562343f4349080'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
