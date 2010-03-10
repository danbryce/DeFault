(define (problem GROUNDED-PATHWAYS-06)
 (:domain GROUNDED-PATHWAYS-PROPOSITIONAL)
 (:init
  (not-chosen_e2f13-dp12p1)
  (not-chosen_hdac1)
  (not-chosen_ge-c)
  (not-chosen_p130-e2f5p1-dp12)
  (not-chosen_p16)
  (num-subs_l0)
  (not-chosen_p57p1)
  (not-chosen_e2f13p1-dp12)
  (not-chosen_cdk46p1)
  (not-chosen_e2f13p1-dp12p1)
  (not-chosen_ap2)
  (not-chosen_p300)
  (not-chosen_prb)
  (not-chosen_cdk46p3-cycd)
  (not-chosen_pcaf)
  (not-chosen_skp2)
  (not-chosen_prb-e2f4p1-dp12)
  (not-chosen_sp1)
  (not-chosen_prbp1-e2f4p1-dp12)
  (not-chosen_wee1)
  (not-chosen_prbp2)
  (not-chosen_cks1)
  (not-chosen_e2f13-dp12)
  (not-chosen_rpa)
  (not-chosen_dp12)
  (not-chosen_e2f4)
  (not-chosen_raf1)
  (not-chosen_e2f5)
  (not-chosen_cdk46p3-cycdp1)
  (not-chosen_e2f6)
  (not-chosen_p57)
  (not-chosen_gp)
  (not-chosen_cdk2p2-cycb)
  (not-chosen_jun)
  (not-chosen_p130)
  (not-chosen_cdk2p1)
  (valid)
  (cpt (unlistedeffect_ASSOCIATE_P57_CDK2P1-CYCA_P57-CDK2P1-CYCA_available_p57-cdk2p1-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_P57_CDK2P1-CYCA_P57-CDK2P1-CYCA_available_cdk2p1-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_P57_CDK2P1-CYCA_P57-CDK2P1-CYCA_available_p57) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P57_CDK2P1-CYCEP1_P57-CDK2P1-CYCEP1_available_p57-cdk2p1-cycep1) 0.5)
  (cpt (possclob_ASSOCIATE_P57_CDK2P1-CYCEP1_P57-CDK2P1-CYCEP1_available_cdk2p1-cycep1) 0.5)
  (cpt (possclob_ASSOCIATE_P57_CDK2P1-CYCEP1_P57-CDK2P1-CYCEP1_available_p57) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P57P1_CDK46P1-CYCD_P57P1-CDK46P1-CYCD_available_p57p1-cdk46p1-cycd) 0.5)
  (cpt (possclob_ASSOCIATE_P57P1_CDK46P1-CYCD_P57P1-CDK46P1-CYCD_available_p57p1) 0.5)
  (cpt (possclob_ASSOCIATE_P57P1_CDK46P1-CYCD_P57P1-CDK46P1-CYCD_available_cdk46p1-cycd) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_RAF1_PRBP1-E2F13P1-DP12_RAF1-PRBP1-E2F13P1-DP12_available_raf1-prbp1-e2f13p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRBP1-E2F13P1-DP12_RAF1-PRBP1-E2F13P1-DP12_available_prbp1-e2f13p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRBP1-E2F13P1-DP12_RAF1-PRBP1-E2F13P1-DP12_available_raf1) 0.5)
  (cpt (openprec_SYNTHESIZE_PRBP1-AP2-GE-C_ECADHERIN_available_prbp1-ap2-ge-c) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cdk2p1-cyce) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cdk2p1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cyce) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_prbp1-ap2) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_prbp1) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_ap2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_E2F13P1-DP12_PRBP1-E2F13P1-DP12_available_prbp1-e2f13p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F13P1-DP12_PRBP1-E2F13P1-DP12_available_prbp1) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F13P1-DP12_PRBP1-E2F13P1-DP12_available_e2f13p1-dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_E2F4-DP12_PRBP1-E2F4-DP12_available_prbp1-e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F4-DP12_PRBP1-E2F4-DP12_available_e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F4-DP12_PRBP1-E2F4-DP12_available_prbp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_JUN_PRBP1-JUN_available_prbp1-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_JUN_PRBP1-JUN_available_jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_JUN_PRBP1-JUN_available_prbp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1P2-AP2_GE-C_PRBP1P2-AP2-GE-C_available_prbp1p2-ap2-ge-c) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1P2-AP2_GE-C_PRBP1P2-AP2-GE-C_available_prbp1p2-ap2) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1P2-AP2_GE-C_PRBP1P2-AP2-GE-C_available_ge-c) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1P2_AP2_PRBP1P2-AP2_available_prbp1p2-ap2) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1P2_AP2_PRBP1P2-AP2_available_prbp1p2) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1P2_AP2_PRBP1P2-AP2_available_ap2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_RAF1_PRB-E2F13P1-DP12P1_RAF1-PRB-E2F13P1-DP12P1_available_raf1-prb-e2f13p1-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRB-E2F13P1-DP12P1_RAF1-PRB-E2F13P1-DP12P1_available_prb-e2f13p1-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRB-E2F13P1-DP12P1_RAF1-PRB-E2F13P1-DP12P1_available_raf1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_RPA_CYCA_RPA-CYCA_available_rpa-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_RPA_CYCA_RPA-CYCA_available_cyca) 0.5)
  (cpt (possclob_ASSOCIATE_RPA_CYCA_RPA-CYCA_available_rpa) 0.5)
  (cpt (possclob_SYNTHESIZE_AP2-GE-C_ECADHERIN_available_ap2-ge-c) 0.5)
  (cpt (openprec_SYNTHESIZE_PRB-AP2-GE-C_ECADHERIN_available_prb-ap2-ge-c) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_PRB-AP2-GE-C_ECADHERIN_available_ecadherin) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_C-MYC_available_sp1-gp) 0.5)
  (cpt (possclob_SYNTHESIZE_SP1-GP_C-MYC_available_sp1-gp) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_CYCD_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_CYCD_available_cycd) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_CYCEP1_available_cycep1) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_P107_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_P107_available_p107) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_P107P1_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_P107P1_available_p107p1) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_P19ARF_available_sp1-gp) 0.5)
  (cpt (possclob_SYNTHESIZE_SP1-GP_P19ARF_available_sp1-gp) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_POL_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_POL_available_pol) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_PRB_CDK46P3-CYCDP1_PRBP1_available_cdk46p3-cycdp1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCD_PRBP1P2_available_cdk46p3-cycd) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK2P1_CKS1_CDK2P1-CKS1_available_cdk2p1-cks1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P1_CKS1_CDK2P1-CKS1_available_cdk2p1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P1_CKS1_CDK2P1-CKS1_available_cks1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_E2F4_DP12_E2F4-DP12_available_e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F4_DP12_E2F4-DP12_available_dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F4_DP12_E2F4-DP12_available_e2f4) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_HDAC1_PRB-E2F13-DP12_HDAC1-PRB-E2F13-DP12_available_hdac1-prb-e2f13-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F13-DP12_HDAC1-PRB-E2F13-DP12_available_prb-e2f13-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F13-DP12_HDAC1-PRB-E2F13-DP12_available_hdac1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_HDAC1_PRB-E2F4P1-DP12_HDAC1-PRB-E2F4P1-DP12_available_hdac1-prb-e2f4p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F4P1-DP12_HDAC1-PRB-E2F4P1-DP12_available_prb-e2f4p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F4P1-DP12_HDAC1-PRB-E2F4P1-DP12_available_hdac1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16-cdk46p1) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_cdk46p1) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB_AP2_PRB-AP2_available_prb-ap2) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_AP2_PRB-AP2_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_AP2_PRB-AP2_available_ap2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB_E2F13-DP12_PRB-E2F13-DP12_available_prb-e2f13-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13-DP12_PRB-E2F13-DP12_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13-DP12_PRB-E2F13-DP12_available_e2f13-dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB_E2F13P1-DP12_PRB-E2F13P1-DP12_available_prb-e2f13p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13P1-DP12_PRB-E2F13P1-DP12_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13P1-DP12_PRB-E2F13P1-DP12_available_e2f13p1-dp12) 0.5)
 )
 (:goal 0.000001
 (and (done)))
)
