class Cda::IVL_MO < Cda::SXCM_MO
  attribute :low, Cda::IVXB_MO, annotations: {:class=>"Cda::IVXB_MO"}
  attribute :width, Cda::MO, annotations: {:class=>"Cda::MO"}
  attribute :high, Cda::IVXB_MO, annotations: {:class=>"Cda::IVXB_MO"}
  attribute :width, Cda::MO, annotations: {:class=>"Cda::MO"}
  attribute :high, Cda::IVXB_MO, annotations: {:class=>"Cda::IVXB_MO"}
  attribute :center, Cda::MO, annotations: {:class=>"Cda::MO"}
  attribute :width, Cda::MO, annotations: {:class=>"Cda::MO"}
end