class Cda::SubstanceAdministration
  include Virtus.model
  attribute :administration_unit_code, Cda::CE
  attribute :approach_site_code, Array[Cda::CD]
  attribute :author, Array[Cda::Author]
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute}
  attribute :code, Cda::CD
  attribute :consumable, Cda::Consumable
  attribute :dose_quantity, Cda::IVL_PQ
  attribute :effective_time, Array[Cda::SXCM_TS]
  attribute :entry_relationship, Array[Cda::EntryRelationship]
  attribute :id, Array[Cda::II]
  attribute :informant, Array[Cda::Informant12]
  attribute :max_dose_quantity, Cda::RTO_PQ_PQ
  attribute :mood_code, Cda::XDocumentSubstanceMood, annotations: {:kind=>:attribute}
  attribute :negation_ind, Cda::Bl, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :participant, Array[Cda::Participant2]
  attribute :performer, Array[Cda::Performer2]
  attribute :precondition, Array[Cda::Precondition]
  attribute :priority_code, Cda::CE
  attribute :rate_quantity, Cda::IVL_PQ
  attribute :realm_code, Array[Cda::CS]
  attribute :reference, Array[Cda::Reference]
  attribute :repeat_number, Cda::IVL_INT
  attribute :route_code, Cda::CE
  attribute :specimen, Array[Cda::Specimen]
  attribute :status_code, Cda::CS
  attribute :subject, Cda::Subject
  attribute :template_id, Array[Cda::II]
  attribute :text, Cda::ED
  attribute :type_id, Cda::InfrastructureRootTypeId
end