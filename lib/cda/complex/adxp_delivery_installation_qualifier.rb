class Cda::AdxpDeliveryInstallationQualifier < Cda::ADXP
  attribute :part_type, Cda::AddressPartType, annotations: {:kind=>:attribute}
end
