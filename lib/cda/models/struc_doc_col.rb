class Cda::StrucDocCol < Cda::Base
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :span, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :width, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :align, String, annotations: {:class=>"String"}
  attribute :char, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :charoff, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :valign, String, annotations: {:class=>"String"}
end