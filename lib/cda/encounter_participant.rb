class Cda::EncounterParticipant < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :assigned_entity, Cda::AssignedEntity, annotations: {:class=>"Cda::AssignedEntity"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :type_code, Cda::XEncounterParticipant, annotations: {:kind=>:attribute, :class=>"Cda::XEncounterParticipant"}
end