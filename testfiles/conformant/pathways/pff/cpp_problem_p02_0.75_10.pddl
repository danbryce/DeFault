(define (problem GROUNDED-PATHWAYS-02)
 (:domain GROUNDED-PATHWAYS-PROPOSITIONAL)
 (:init
  (not-chosen_e2f4-dp12p1)
  (not-chosen_ge2)
  (num-subs_l0)
  (not-chosen_e2f6-dp12p1)
  (not-chosen_e2f13p1-dp12)
  (not-chosen_hdac1-prbp1-e2f4-dp12)
  (not-chosen_hdac1-p130-e2f4p1-dp12)
  (not-chosen_hdac1-prbp1-e2f13-dp12)
  (not-chosen_p53p1)
  (not-chosen_hbp1)
  (not-chosen_cdk1p1p2)
  (not-chosen_p130)
  (not-chosen_max)
  (valid)
  (cpt (unlistedeffect_ASSOCIATE_CDK1P1P2_GADD45_CDK1P1P2-GADD45_available_cdk1p1p2-gadd45) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P1P2_GADD45_CDK1P1P2-GADD45_available_cdk1p1p2) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P1P2_GADD45_CDK1P1P2-GADD45_available_gadd45) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_C-MYC_MAX_C-MYC-MAX_available_c-myc-max) 0.5)
  (cpt (possclob_ASSOCIATE_C-MYC_MAX_C-MYC-MAX_available_c-myc) 0.5)
  (cpt (possclob_ASSOCIATE_C-MYC_MAX_C-MYC-MAX_available_max) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_MDM2_E2F13P1-DP12_MDM2-E2F13P1-DP12_available_mdm2-e2f13p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_E2F13P1-DP12_MDM2-E2F13P1-DP12_available_mdm2) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_E2F13P1-DP12_MDM2-E2F13P1-DP12_available_e2f13p1-dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P107-E2F4-DP12P1_GE2_P107-E2F4-DP12P1-GE2_available_p107-e2f4-dp12p1-ge2) 0.5)
  (cpt (possclob_ASSOCIATE_P107-E2F4-DP12P1_GE2_P107-E2F4-DP12P1-GE2_available_ge2) 0.5)
  (cpt (possclob_ASSOCIATE_P107-E2F4-DP12P1_GE2_P107-E2F4-DP12P1-GE2_available_p107-e2f4-dp12p1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P107_E2F4-DP12P1_P107-E2F4-DP12P1_available_p107-e2f4-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_P107_E2F4-DP12P1_P107-E2F4-DP12P1_available_p107) 0.5)
  (cpt (possclob_ASSOCIATE_P107_E2F4-DP12P1_P107-E2F4-DP12P1_available_e2f4-dp12p1) 0.5)
  (cpt (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_C-MYC_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_E2F13P1-DP12-GE2_C-MYC_available_c-myc) 0.5)
  (cpt (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_CYCA_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_E2F13P1-DP12-GE2_CYCA_available_cyca) 0.5)
  (cpt (possclob_SYNTHESIZE_E2F13P1-DP12-GE2_CYCA_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_CYCD_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_E2F13P1-DP12-GE2_CYCD_available_cycd) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_E2F13P1-DP12-GE2_CYCDP1_available_cycdp1) 0.5)
  (cpt (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_CYCE_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_CYCEP1_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_P107_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_E2F13P1-DP12-GE2_P107_available_p107) 0.5)
  (cpt (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_P107P1_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_E2F13P1-DP12-GE2_P107P1_available_p107p1) 0.5)
  (cpt (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_P19ARF_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_E2F13P1-DP12-GE2_P19ARF_available_p19arf) 0.5)
  (cpt (possclob_SYNTHESIZE_E2F13P1-DP12-GE2_P19ARF_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_POL_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_E2F13P1-DP12-GE2_POL_available_pol) 0.5)
  (cpt (possclob_SYNTHESIZE_E2F13P1-DP12-GE2_POL_available_e2f13p1-dp12-ge2) 0.5)
  (cpt (openprec_SYNTHESIZE_P53P1_C-FOS_available_p53p1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_P53P1_C-FOS_available_c-fos) 0.5)
  (cpt (possclob_SYNTHESIZE_P53P1_C-FOS_available_p53p1) 0.5)
  (cpt (openprec_SYNTHESIZE_P53P1_GADD45_available_p53p1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_P53P1_GADD45_available_gadd45) 0.5)
  (cpt (possclob_SYNTHESIZE_P53P1_GADD45_available_p53p1) 0.5)
  (cpt (openprec_SYNTHESIZE_P53P1_MDM2_available_p53p1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_P53P1_MDM2_available_mdm2) 0.5)
  (cpt (openprec_SYNTHESIZE_P53P1_P21_available_p53p1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_P53P1_P21_available_p21) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_E2F6-DP12P1_GE2_E2F6-DP12P1-GE2_available_e2f6-dp12p1-ge2) 0.5)
  (cpt (possclob_ASSOCIATE_E2F6-DP12P1_GE2_E2F6-DP12P1-GE2_available_e2f6-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_E2F6-DP12P1_GE2_E2F6-DP12P1-GE2_available_ge2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_HBP1_P130_HBP1-P130_available_hbp1-p130) 0.5)
  (cpt (possclob_ASSOCIATE_HBP1_P130_HBP1-P130_available_p130) 0.5)
  (cpt (possclob_ASSOCIATE_HBP1_P130_HBP1-P130_available_hbp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_HDAC1-PRBP1-E2F13-DP12_GE2_HDAC1-PRBP1-E2F13-DP12-GE2_available_hdac1-prbp1-e2f13-dp12-ge2) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1-PRBP1-E2F13-DP12_GE2_HDAC1-PRBP1-E2F13-DP12-GE2_available_ge2) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1-PRBP1-E2F13-DP12_GE2_HDAC1-PRBP1-E2F13-DP12-GE2_available_hdac1-prbp1-e2f13-dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P130-E2F4-DP12P1_GE2_P130-E2F4-DP12P1-GE2_available_p130-e2f4-dp12p1-ge2) 0.5)
  (cpt (possclob_ASSOCIATE_P130-E2F4-DP12P1_GE2_P130-E2F4-DP12P1-GE2_available_ge2) 0.5)
  (cpt (possclob_ASSOCIATE_P130-E2F4-DP12P1_GE2_P130-E2F4-DP12P1-GE2_available_p130-e2f4-dp12p1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P130_E2F4-DP12P1_P130-E2F4-DP12P1_available_p130-e2f4-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_P130_E2F4-DP12P1_P130-E2F4-DP12P1_available_p130) 0.5)
  (cpt (possclob_ASSOCIATE_P130_E2F4-DP12P1_P130-E2F4-DP12P1_available_e2f4-dp12p1) 0.5)
 )
 (:goal 0.000001
 (and (done)))
)
