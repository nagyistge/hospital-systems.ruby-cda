class Cda::AdxpDeliveryInstallationArea < Cda::ADXP
  attribute :part_type, Cda::AddressPartType, annotations: {:kind=>:attribute}
end
