module Ccd
  class ImmunizationsSectionEntriesRequired < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:9015) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.2.1" (CONF:10400).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.2.1'

    #SHALL contain exactly one [1..1] code (CONF:15369).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="11369-6" Immunizations (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15370).
    constraint 'code.code', cardinality: '1..1', value: '11369-6'

    #SHALL contain exactly one [1..1] title (CONF:9017).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:9018).
    constraint 'text', cardinality: '1..1'

    #SHALL contain at least one [1..*] entry (CONF:9019) such that it
    constraint 'entry', cardinality: '1..*'

    #SHALL contain exactly one [1..1] Immunization Activity (templateId:2.16.840.1.113883.10.20.22.4.52) (CONF:15495).
    constraint 'entry.substanceAdministration', cardinality: '1..1'

    Ccd.load_extension('immunizations_section_entries_required.rb')
  end
end