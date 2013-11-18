class Cda::CV < Cda::ANY
  attribute :original_text, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :translation, Cda::CD, annotations: {:class=>"Cda::CD"}
  attribute :code, String, annotations: {:use=>:optional, :kind=>:attribute, :class=>"String"}
  attribute :code_system, Cda::Uid, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Uid"}
  attribute :code_system_name, Cda::St, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::St"}
  attribute :code_system_version, Cda::St, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::St"}
  attribute :display_name, Cda::St, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::St"}
end