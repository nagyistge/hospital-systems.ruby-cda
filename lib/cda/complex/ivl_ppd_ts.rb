class Cda::IVL_PPD_TS < Cda::SXCM_PPD_TS
  attribute :low, Cda::IVXB_PPD_TS, annotations: {:class=>"Cda::IVXB_PPD_TS"}
  attribute :width, Cda::PPD_PQ, annotations: {:class=>"Cda::PPD_PQ"}
  attribute :high, Cda::IVXB_PPD_TS, annotations: {:class=>"Cda::IVXB_PPD_TS"}
  attribute :width, Cda::PPD_PQ, annotations: {:class=>"Cda::PPD_PQ"}
  attribute :high, Cda::IVXB_PPD_TS, annotations: {:class=>"Cda::IVXB_PPD_TS"}
  attribute :center, Cda::PPD_TS, annotations: {:class=>"Cda::PPD_TS"}
  attribute :width, Cda::PPD_PQ, annotations: {:class=>"Cda::PPD_PQ"}
end
