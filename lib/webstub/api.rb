module WebStub
  module API
    def disable_network_access!
      protocol.disable_network_access!
    end

    def enable_network_access!
      protocol.enable_network_access!
    end

    def stub_request(method, path)
      protocol.add_stub(method, path)
    end

    def reset_stubs
      protocol.reset_stubs
    end

    def protocol
      Dispatch.once { NSURLProtocol.registerClass(WebStub::Protocol) }

      Protocol
    end

    module_function :disable_network_access!, :enable_network_access!, :stub_request, :reset_stubs
  end
end
