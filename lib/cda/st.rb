class Cda::St < String

end
class Cda::ST < Cda::ED
  attribute :reference, Cda::TEL, annotations: {:class=>"Cda::TEL"}
  attribute :thumbnail, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :representation, Cda::BinaryDataEncoding, annotations: {:kind=>:attribute, :class=>"Cda::BinaryDataEncoding"}
  attribute :media_type, Cda::Cs, annotations: {:kind=>:attribute, :class=>"Cda::Cs"}
  attribute :language, Cda::Cs, annotations: {:kind=>:attribute, :class=>"Cda::Cs"}
  attribute :compression, Cda::CompressionAlgorithm, annotations: {:kind=>:attribute, :class=>"Cda::CompressionAlgorithm"}
  attribute :integrity_check, Cda::Bin, annotations: {:kind=>:attribute, :class=>"Cda::Bin"}
  attribute :integrity_check_algorithm, Cda::IntegrityCheckAlgorithm, annotations: {:kind=>:attribute, :class=>"Cda::IntegrityCheckAlgorithm"}
  attribute :_text, String, annotations: {:kind=>:attribute, :class=>"String"}
end
