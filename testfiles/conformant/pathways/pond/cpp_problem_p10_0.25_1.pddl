(define (problem GROUNDED-PATHWAYS-10)
 (:domain GROUNDED-PATHWAYS-PROPOSITIONAL)
 (:init
  (not-chosen_hdac1)
  (not-chosen_gp19arf)
  (not-chosen_p130-e2f5p1-dp12)
  (not-chosen_p57p1)
  (num-subs_l0)
  (not-chosen_e2f6-dp12p1)
  (not-chosen_e2f13p1-dp12)
  (not-chosen_cdk46p1)
  (not-chosen_p130-e2f4p1-dp12)
  (not-chosen_plk1)
  (not-chosen_apc)
  (not-chosen_cdk46p3-cycd)
  (not-chosen_skp2)
  (not-chosen_prb-e2f4p1-dp12)
  (not-chosen_skp1)
  (not-chosen_sp1)
  (not-chosen_e2f4-dp12p1)
  (not-chosen_e2f13)
  (not-chosen_ge2)
  (not-chosen_prbp1-e2f4p1-dp12)
  (not-chosen_p27)
  (not-chosen_prbp2)
  (not-chosen_e2f1)
  (not-chosen_e2f13-dp12)
  (not-chosen_rpa)
  (not-chosen_dp12)
  (not-chosen_e2f3)
  (not-chosen_e2f4)
  (not-chosen_raf1)
  (not-chosen_e2f5)
  (not-chosen_hdac1-prbp1-e2f4-dp12)
  (not-chosen_gcdc25a)
  (not-chosen_p57)
  (not-chosen_dmp1)
  (not-chosen_hdac1-prbp1-e2f13-dp12)
  (not-chosen_jun)
  (not-chosen_p130)
  (not-chosen_cdk2p1)
  (not-chosen_hdac1-prbp1-e2f13p1-dp12)
  (not-chosen_max)
  (valid)
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P27_CDK46-CYCDP1_P27-CDK46-CYCDP1_available_p27-cdk46-cycdp1))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK46-CYCDP1_P27-CDK46-CYCDP1_available_cdk46-cycdp1))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK46-CYCDP1_P27-CDK46-CYCDP1_available_p27))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P57P1_CDK46-CYCDP1_P57P1-CDK46-CYCDP1_available_p57p1-cdk46-cycdp1))
  (probabilistic 0.5 (possclob_ASSOCIATE_P57P1_CDK46-CYCDP1_P57P1-CDK46-CYCDP1_available_p57p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_P57P1_CDK46-CYCDP1_P57P1-CDK46-CYCDP1_available_cdk46-cycdp1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_CDK46_CYCDP1_CDK46-CYCDP1_available_cdk46-cycdp1))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK46_CYCDP1_CDK46-CYCDP1_available_cdk46))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK46_CYCDP1_CDK46-CYCDP1_available_cycdp1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P27_CDK2-CYCA_P27-CDK2-CYCA_available_p27-cdk2-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK2-CYCA_P27-CDK2-CYCA_available_cdk2-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK2-CYCA_P27-CDK2-CYCA_available_p27))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_SKP2_CDK2-CYCA_SKP2-CDK2-CYCA_available_skp2-cdk2-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_SKP2_CDK2-CYCA_SKP2-CDK2-CYCA_available_cdk2-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_SKP2_CDK2-CYCA_SKP2-CDK2-CYCA_available_skp2))
  (probabilistic 0.5 (openprec_ASSOCIATE-WITH-CATALYZE_CDK2P1-CYCA_CDC25AP1_CDK2-CYCA_available_cdc25ap1))
  (probabilistic 0.5 (possclob_ASSOCIATE-WITH-CATALYZE_CDK2P1-CYCEP1_CDC25AP1_CDK2-CYCEP1_available_cdk2p1-cycep1))
  (probabilistic 0.5 (openprec_SYNTHESIZE_C-MYC-MAX-GCDC25A_CDC25A_available_c-myc-max-gcdc25a))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_C-MYC_available_raf1-p130-e2f4-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_CYCA_available_cyca))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_CYCD_available_raf1-p130-e2f4-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_CYCD_available_raf1-p130-e2f4-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_CYCDP1_available_cycdp1))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_CYCDP1_available_raf1-p130-e2f4-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_CYCE_available_cyce))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_CYCE_available_raf1-p130-e2f4-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_CYCEP1_available_cycep1))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_CYCEP1_available_raf1-p130-e2f4-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_P107_available_raf1-p130-e2f4-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_P107P1_available_raf1-p130-e2f4-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_P107P1_available_p107p1))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_P107P1_available_raf1-p130-e2f4-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F4-DP12-GE2_POL_available_raf1-p130-e2f4-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-P130-E2F5-DP12-GE2_C-MYC_available_c-myc))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F5-DP12-GE2_CYCA_available_raf1-p130-e2f5-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-P130-E2F5-DP12-GE2_CYCD_available_raf1-p130-e2f5-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-P130-E2F5-DP12-GE2_CYCDP1_available_cycdp1))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F5-DP12-GE2_CYCDP1_available_raf1-p130-e2f5-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-P130-E2F5-DP12-GE2_P107_available_p107))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P27_CDK2P1-CYCEP1_P27-CDK2P1-CYCEP1_available_p27-cdk2p1-cycep1))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK2P1-CYCEP1_P27-CDK2P1-CYCEP1_available_p27))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK2P1-CYCEP1_P27-CDK2P1-CYCEP1_available_cdk2p1-cycep1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P27_CDK2P1-CYCE_P27-CDK2P1-CYCE_available_p27-cdk2p1-cyce))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK2P1-CYCE_P27-CDK2P1-CYCE_available_p27))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK2P1-CYCE_P27-CDK2P1-CYCE_available_cdk2p1-cyce))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P27_CDK46P1-CYCDP1_P27-CDK46P1-CYCDP1_available_p27-cdk46p1-cycdp1))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK46P1-CYCDP1_P27-CDK46P1-CYCDP1_available_cdk46p1-cycdp1))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK46P1-CYCDP1_P27-CDK46P1-CYCDP1_available_p27))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P27_CDK46P1-CYCD_P27-CDK46P1-CYCD_available_p27-cdk46p1-cycd))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK46P1-CYCD_P27-CDK46P1-CYCD_available_p27))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK46P1-CYCD_P27-CDK46P1-CYCD_available_cdk46p1-cycd))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P57_CDK2P1-CYCEP1_P57-CDK2P1-CYCEP1_available_p57-cdk2p1-cycep1))
  (probabilistic 0.5 (possclob_ASSOCIATE_P57_CDK2P1-CYCEP1_P57-CDK2P1-CYCEP1_available_cdk2p1-cycep1))
  (probabilistic 0.5 (possclob_ASSOCIATE_P57_CDK2P1-CYCEP1_P57-CDK2P1-CYCEP1_available_p57))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P57_CDK2P1-CYCE_P57-CDK2P1-CYCE_available_p57-cdk2p1-cyce))
  (probabilistic 0.5 (possclob_ASSOCIATE_P57_CDK2P1-CYCE_P57-CDK2P1-CYCE_available_cdk2p1-cyce))
  (probabilistic 0.5 (possclob_ASSOCIATE_P57_CDK2P1-CYCE_P57-CDK2P1-CYCE_available_p57))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_RAF1_P130-E2F4-DP12_RAF1-P130-E2F4-DP12_available_raf1-p130-e2f4-dp12))
  (probabilistic 0.5 (possclob_ASSOCIATE_RAF1_P130-E2F4-DP12_RAF1-P130-E2F4-DP12_available_raf1))
  (probabilistic 0.5 (possclob_ASSOCIATE_RAF1_P130-E2F4-DP12_RAF1-P130-E2F4-DP12_available_p130-e2f4-dp12))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_RAF1_P130-E2F5-DP12_RAF1-P130-E2F5-DP12_available_raf1-p130-e2f5-dp12))
  (probabilistic 0.5 (possclob_ASSOCIATE_RAF1_P130-E2F5-DP12_RAF1-P130-E2F5-DP12_available_raf1))
  (probabilistic 0.5 (possclob_ASSOCIATE_RAF1_P130-E2F5-DP12_RAF1-P130-E2F5-DP12_available_p130-e2f5-dp12))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F4-DP12-GE2_C-MYC_available_e2f4-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F4-DP12-GE2_CYCA_available_e2f4-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F4-DP12-GE2_CYCA_available_cyca))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F4-DP12-GE2_CYCD_available_e2f4-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F4-DP12-GE2_CYCD_available_cycd))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F4-DP12-GE2_CYCDP1_available_cycdp1))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F4-DP12-GE2_CYCDP1_available_e2f4-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F4-DP12-GE2_P107_available_p107))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F4-DP12-GE2_P107P1_available_e2f4-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F4-DP12-GE2_P19ARF_available_e2f4-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_C-MYC_available_c-myc))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCD_available_e2f5-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F5-DP12-GE2_CYCE_available_e2f5-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCEP1_available_e2f5-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_CYCEP1_available_cycep1))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_POL_available_pol))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F5-DP12-GE2_POL_available_e2f5-dp12-ge2))
  (probabilistic 0.5 (openprec_ASSOCIATE-WITH-CATALYZE_CYCA_SKP2-SKP1_SKP2-SKP1_available_skp2-skp1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cdk2p1-cyce))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cdk2p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cyce))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cdk46p1-cycdp1))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cdk46p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cycdp1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_DMP1_CYCD_DMP1-CYCD_available_dmp1-cycd))
  (probabilistic 0.5 (possclob_ASSOCIATE_DMP1_CYCD_DMP1-CYCD_available_cycd))
  (probabilistic 0.5 (possclob_ASSOCIATE_DMP1_CYCD_DMP1-CYCD_available_dmp1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_DMP1_CYCDP1_DMP1-CYCDP1_available_dmp1-cycdp1))
  (probabilistic 0.5 (possclob_ASSOCIATE_DMP1_CYCDP1_DMP1-CYCDP1_available_dmp1))
  (probabilistic 0.5 (possclob_ASSOCIATE_DMP1_CYCDP1_DMP1-CYCDP1_available_cycdp1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_DMP1P1_GP19ARF_DMP1P1-GP19ARF_available_dmp1p1-gp19arf))
  (probabilistic 0.5 (possclob_ASSOCIATE_DMP1P1_GP19ARF_DMP1P1-GP19ARF_available_dmp1p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_DMP1P1_GP19ARF_DMP1P1-GP19ARF_available_gp19arf))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_E2F4-DP12_GE2_E2F4-DP12-GE2_available_e2f4-dp12-ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_E2F4-DP12_GE2_E2F4-DP12-GE2_available_ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_E2F4-DP12_GE2_E2F4-DP12-GE2_available_e2f4-dp12))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_HDAC1_P130-E2F4-DP12_HDAC1-P130-E2F4-DP12_available_hdac1-p130-e2f4-dp12))
  (probabilistic 0.5 (possclob_ASSOCIATE_HDAC1_P130-E2F4-DP12_HDAC1-P130-E2F4-DP12_available_hdac1))
  (probabilistic 0.5 (possclob_ASSOCIATE_HDAC1_P130-E2F4-DP12_HDAC1-P130-E2F4-DP12_available_p130-e2f4-dp12))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_RPA_CYCA_RPA-CYCA_available_rpa-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_RPA_CYCA_RPA-CYCA_available_cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_RPA_CYCA_RPA-CYCA_available_rpa))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_sp1-p107p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_p107p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_sp1))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F13-DP12-GE2_CYCA_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCDP1_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_CYCEP1_available_cycep1))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F13-DP12-GE2_P107_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_P19ARF_available_p19arf))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F13-DP12-GE2_POL_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_CYCA_available_e2f13p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_CYCD_available_e2f13p1-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F13P1-DP12-GE2_CYCDP1_available_cycdp1))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_CYCEP1_available_e2f13p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F13P1-DP12-GE2_P107_available_e2f13p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F13P1-DP12-GE2_P107_available_e2f13p1-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F13P1-DP12-GE2_P107P1_available_p107p1))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F13P1-DP12-GE2_P19ARF_available_e2f13p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F13P1-DP12-GE2_POL_available_e2f13p1-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-P130-E2F4P1-DP12-GE2_C-MYC_available_c-myc))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F4P1-DP12-GE2_CYCA_available_raf1-p130-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-P130-E2F4P1-DP12-GE2_CYCDP1_available_raf1-p130-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-P130-E2F4P1-DP12-GE2_CYCE_available_raf1-p130-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-P130-E2F4P1-DP12-GE2_CYCE_available_cyce))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-P130-E2F4P1-DP12-GE2_P107_available_raf1-p130-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F4P1-DP12-GE2_P107_available_raf1-p130-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F4P1-DP12-GE2_P107P1_available_raf1-p130-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F5P1-DP12-GE2_C-MYC_available_raf1-p130-e2f5p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-P130-E2F5P1-DP12-GE2_CYCDP1_available_raf1-p130-e2f5p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F5P1-DP12-GE2_CYCEP1_available_raf1-p130-e2f5p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-P130-E2F5P1-DP12-GE2_P107_available_raf1-p130-e2f5p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F5P1-DP12-GE2_P107_available_raf1-p130-e2f5p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-P130-E2F5P1-DP12-GE2_P19ARF_available_raf1-p130-e2f5p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-P130-E2F5P1-DP12-GE2_P19ARF_available_raf1-p130-e2f5p1-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-P130-E2F5P1-DP12-GE2_POL_available_pol))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-PRB-E2F4P1-DP12-GE2_C-MYC_available_raf1-prb-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-PRB-E2F4P1-DP12-GE2_C-MYC_available_c-myc))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-PRB-E2F4P1-DP12-GE2_CYCA_available_raf1-prb-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-PRB-E2F4P1-DP12-GE2_CYCD_available_raf1-prb-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-PRB-E2F4P1-DP12-GE2_CYCE_available_raf1-prb-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-PRB-E2F4P1-DP12-GE2_CYCEP1_available_raf1-prb-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-PRB-E2F4P1-DP12-GE2_P107_available_p107))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-PRB-E2F4P1-DP12-GE2_P107_available_raf1-prb-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-PRB-E2F4P1-DP12-GE2_P107P1_available_raf1-prb-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-PRB-E2F4P1-DP12-GE2_P19ARF_available_raf1-prb-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_C-MYC_available_raf1-prbp1-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_C-MYC_available_raf1-prbp1-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_CYCA_available_raf1-prbp1-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_CYCD_available_raf1-prbp1-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_CYCDP1_available_raf1-prbp1-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_CYCDP1_available_cycdp1))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_CYCE_available_raf1-prbp1-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_CYCE_available_cyce))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_CYCE_available_raf1-prbp1-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_CYCEP1_available_raf1-prbp1-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_P107_available_raf1-prbp1-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_P107_available_p107))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_P107_available_raf1-prbp1-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_RAF1-PRBP1-E2F4P1-DP12-GE2_POL_available_raf1-prbp1-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE-WITH-CATALYZE_APC_PLK1_APCP1_available_apc))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_HDAC1-PRBP1-E2F13-DP12_GE2_HDAC1-PRBP1-E2F13-DP12-GE2_available_hdac1-prbp1-e2f13-dp12-ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_HDAC1-PRBP1-E2F13-DP12_GE2_HDAC1-PRBP1-E2F13-DP12-GE2_available_ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_HDAC1-PRBP1-E2F13-DP12_GE2_HDAC1-PRBP1-E2F13-DP12-GE2_available_hdac1-prbp1-e2f13-dp12))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P130-E2F4-DP12P1_GE2_P130-E2F4-DP12P1-GE2_available_p130-e2f4-dp12p1-ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_P130-E2F4-DP12P1_GE2_P130-E2F4-DP12P1-GE2_available_ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_P130-E2F4-DP12P1_GE2_P130-E2F4-DP12P1-GE2_available_p130-e2f4-dp12p1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_PRBP2_JUN_PRBP2-JUN_available_prbp2-jun))
  (probabilistic 0.5 (possclob_ASSOCIATE_PRBP2_JUN_PRBP2-JUN_available_jun))
  (probabilistic 0.5 (possclob_ASSOCIATE_PRBP2_JUN_PRBP2-JUN_available_prbp2))
 )
 (:goal (and (done)))
)