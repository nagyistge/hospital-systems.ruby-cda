class Cda::Observation
  include Virtus.model
  attribute :author, Array[Cda::Author]
  attribute :class_code, Cda::ActClassObservation, annotations: {:kind=>:attribute}
  attribute :code, Cda::CD
  attribute :derivation_expr, Cda::ST
  attribute :effective_time, Cda::IVL_TS
  attribute :entry_relationship, Array[Cda::EntryRelationship]
  attribute :id, Array[Cda::II]
  attribute :informant, Array[Cda::Informant12]
  attribute :interpretation_code, Array[Cda::CE]
  attribute :language_code, Cda::CS
  attribute :method_code, Array[Cda::CE]
  attribute :mood_code, Cda::XActMoodDocumentObservation, annotations: {:kind=>:attribute}
  attribute :negation_ind, Cda::Bl, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :participant, Array[Cda::Participant2]
  attribute :performer, Array[Cda::Performer2]
  attribute :precondition, Array[Cda::Precondition]
  attribute :priority_code, Cda::CE
  attribute :realm_code, Array[Cda::CS]
  attribute :reference, Array[Cda::Reference]
  attribute :reference_range, Array[Cda::ReferenceRange]
  attribute :repeat_number, Cda::IVL_INT
  attribute :specimen, Array[Cda::Specimen]
  attribute :status_code, Cda::CS
  attribute :subject, Cda::Subject
  attribute :target_site_code, Array[Cda::CD]
  attribute :template_id, Array[Cda::II]
  attribute :text, Cda::ED
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :value, Array[Object]
end