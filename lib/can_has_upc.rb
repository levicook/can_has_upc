require "xmlrpc/client"

module CanHasUpc

  def formatted_upc_code(len)
    String(self).rjust(len, '0')[-len..-1]
  end

  def to_upc(len=12)
    client = XMLRPC::Client.new("www.upcdatabase.com", "/rpc")
    client.call("lookupUPC", formatted_upc_code(12))
  end
  
end
