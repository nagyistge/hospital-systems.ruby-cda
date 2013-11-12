module Ccd
  class DICOMObjectCatalogSectionDCM121 < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8525) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.1.1" (CONF:10454).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.6.1.1"}

    #SHALL contain exactly one [1..1] code (CONF:15456).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="121181" Dicom Object Catalog (CONF:15457).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"121181", :display_name=>"Dicom Object Catalog"}}

    #This code SHALL contain exactly one [1..1] @codeSystem="1.2.840.10008.2.16.4" (CodeSystem: DCM 1.2.840.10008.2.16.4) (CONF:26475).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"1.2.840.10008.2.16.4", :display_name=>"", :code_system=>"1.2.840.10008.2.16.4", :_type=>"Cda::CV"}}

    #SHALL contain at least one [1..*] entry (CONF:8530).
    constraint 'entry', {:cardinality=>"1..*"}

    #Such entries SHALL contain exactly one [1..1] Study Act (templateId:2.16.840.1.113883.10.20.6.2.6) (CONF:15458).
    constraint 'entry.act', {:cardinality=>"1..1"}

    #A DICOM Object Catalog SHALL be present if the document contains references to DICOM Images. If present, it SHALL be the first section in the document.
    constraint '', {}

    Ccd.load_extension('dicom_object_catalog_section_dcm121.rb')
  end
end
