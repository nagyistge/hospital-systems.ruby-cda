class Cda::TEL < Cda::URL
  include Virtus.model
  attribute :use, Cda::Set_TelecommunicationAddressUse, annotations: {:kind=>:attribute}
  attribute :useable_period, Array[Cda::SXCM_TS]
end