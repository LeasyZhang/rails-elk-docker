class ApplicationController < ActionController::Base

    def append_info_to_payload(payload)
        super
        payload[:request_ip] = request.ip
    end
end
