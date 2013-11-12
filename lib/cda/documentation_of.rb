class Cda::DocumentationOf < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :service_event, Cda::ServiceEvent, annotations: {:class=>"Cda::ServiceEvent"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :type_code, Cda::ActRelationshipType, annotations: {:kind=>:attribute, :class=>"Cda::ActRelationshipType"}
end
