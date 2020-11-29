class Room < ApplicationRecord
  # noinspection RubyResolve
  before_create do
    opentok_session
  end

  private

  def opentok_session
    opentok = OpenTok::OpenTok.new ENV.fetch('VONAGE_API_KEY', Rails.application.credentials.vonage_api_key),
                                   ENV.fetch('VONAGE_API_SECRET', Rails.application.credentials.vonage_api_secret)
    session = opentok.create_session
    self.vonage_session_id = session.session_id
  end
end
