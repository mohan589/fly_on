module GenericCodes
  extend ActiveSupport::Concern

  codes = [:AIRLINE, :AIRPORT, :PLANE].freeze

  def generate_unique_code(type)
      if type == 'AIRLINE'
        'AI'+ ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(6).join
      elsif type == 'AIRPORT'
        'PO' + ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(6).join
      elsif type == 'PLANE'
        'AP' + ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(6).join
      end
  end
end
