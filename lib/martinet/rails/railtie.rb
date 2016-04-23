module Martinet
  module Rails
    class Railtie < ::Rails::Railtie
      # TODO: Test me
      initializer 'martinet.setup_warden-manager' do |app|
        app.middleware.use Warden::Manager do |config|
          config.serialize_into_session do |user|
            Serializer.serialize(record: user)
          end

          config.serialize_from_session do |object_hash|
            Serializer.deserialize(object_hash: object_hash)
          end
        end
      end
    end
  end
end
