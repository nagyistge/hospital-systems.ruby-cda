module Ccd
  class ProblemStatus < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7357).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7358).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:7359) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.6" (CONF:10518).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.6'

    #SHALL contain exactly one [1..1] code (CONF:19162).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="33999-4" Status (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:19163).
    constraint 'code.code', cardinality: '1..1', value: '33999-4'

    #SHOULD contain zero or one [0..1] text (CONF:7362).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15593).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHALL contain exactly one [1..1] @value (CONF:15594).
    constraint 'text.reference.value', cardinality: '1..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:7364).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19113).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet Problem Status 2.16.840.1.113883.3.88.12.80.68 DYNAMIC (CONF:7365).
    constraint 'value', cardinality: '1..1'

    Ccd.load_extension('problem_status.rb')
  end
end