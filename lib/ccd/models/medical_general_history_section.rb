module Ccd
  class MedicalGeneralHistorySection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8160) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.39" (CONF:10403).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.39"}

    #SHALL contain exactly one [1..1] code (CONF:15379).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="11329-0" Medical (General) History (CONF:15380).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"11329-0", :display_name=>"Medical (General) History"}}

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26484).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"2.16.840.1.113883.6.1", :display_name=>"", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] title (CONF:8162).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:8163).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('medical_general_history_section.rb')
  end
end
