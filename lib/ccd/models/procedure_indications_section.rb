module Ccd
  class ProcedureIndicationsSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8058) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.29" (CONF:10445).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.29"}

    #SHALL contain exactly one [1..1] code (CONF:15419).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="59768-2" Procedure Indications  (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15420).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"59768-2", :display_name=>"Procedure Indications ", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] title (CONF:8060).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:8061).
    constraint 'text', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:8743) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Indication (templateId:2.16.840.1.113883.10.20.22.4.19) (CONF:15508).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('procedure_indications_section.rb')
  end
end
