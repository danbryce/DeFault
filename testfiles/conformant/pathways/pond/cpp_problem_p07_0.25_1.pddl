(define (problem GROUNDED-PATHWAYS-07)
 (:domain GROUNDED-PATHWAYS-PROPOSITIONAL)
 (:init
  (not-chosen_c-tak1)
  (num-subs_l0)
  (not-chosen_cdk46p1)
  (not-chosen_c-abl)
  (not-chosen_cdc25c)
  (not-chosen_hdac1-p130-e2f5p1-dp12)
  (not-chosen_hdac1-p107-e2f4p1-dp12)
  (not-chosen_pcna)
  (not-chosen_prb)
  (not-chosen_p53p1)
  (not-chosen_hbp1)
  (not-chosen_cdk1p1p2)
  (not-chosen_cdk46p3-cycd)
  (not-chosen_skp2)
  (not-chosen_prb-e2f4p1-dp12)
  (not-chosen_skp1)
  (not-chosen_sp1)
  (not-chosen_ge2)
  (not-chosen_e2f5-dp12p1)
  (not-chosen_p27)
  (not-chosen_prbp2)
  (not-chosen_cks1)
  (not-chosen_e2f1)
  (not-chosen_e2f13-dp12)
  (not-chosen_rpa)
  (not-chosen_dp12)
  (not-chosen_e2f3)
  (not-chosen_e2f5)
  (not-chosen_hdac1-prbp1-e2f4-dp12)
  (not-chosen_e2f6)
  (not-chosen_gcdc25a)
  (not-chosen_p57)
  (not-chosen_hdac1-p130-e2f4p1-dp12)
  (not-chosen_m1433)
  (not-chosen_p53)
  (not-chosen_hdac1-prbp1-e2f13-dp12)
  (not-chosen_cdk2)
  (not-chosen_jun)
  (not-chosen_p130)
  (not-chosen_cdk2p1)
  (not-chosen_max)
  (valid)
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_C-MYC-MAX-GCDC25A_CDC25A_available_cdc25a))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_p21-cdk2-cyce))
  (probabilistic 0.5 (possclob_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_p21))
  (probabilistic 0.5 (possclob_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_cdk2-cyce))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P21_CDK2P1-CYCE_P21-CDK2P1-CYCE_available_p21-cdk2p1-cyce))
  (probabilistic 0.5 (possclob_ASSOCIATE_P21_CDK2P1-CYCE_P21-CDK2P1-CYCE_available_p21))
  (probabilistic 0.5 (possclob_ASSOCIATE_P21_CDK2P1-CYCE_P21-CDK2P1-CYCE_available_cdk2p1-cyce))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P27_CDK2-CYCA_P27-CDK2-CYCA_available_p27-cdk2-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK2-CYCA_P27-CDK2-CYCA_available_cdk2-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_P27_CDK2-CYCA_P27-CDK2-CYCA_available_p27))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P57_CDK2-CYCA_P57-CDK2-CYCA_available_p57-cdk2-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_P57_CDK2-CYCA_P57-CDK2-CYCA_available_cdk2-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_P57_CDK2-CYCA_P57-CDK2-CYCA_available_p57))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_PCNA-P21_CDK2P1-CYCEP1_PCNA-P21-CDK2P1-CYCEP1_available_pcna-p21-cdk2p1-cycep1))
  (probabilistic 0.5 (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCEP1_PCNA-P21-CDK2P1-CYCEP1_available_cdk2p1-cycep1))
  (probabilistic 0.5 (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCEP1_PCNA-P21-CDK2P1-CYCEP1_available_pcna-p21))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_SKP2-SKP1_CDK2P1-CYCA_SKP2-SKP1-CDK2P1-CYCA_available_skp2-skp1-cdk2p1-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_SKP2-SKP1_CDK2P1-CYCA_SKP2-SKP1-CDK2P1-CYCA_available_cdk2p1-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_SKP2-SKP1_CDK2P1-CYCA_SKP2-SKP1-CDK2P1-CYCA_available_skp2-skp1))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_CYCD_available_cycd))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCEP1_available_e2f5-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F5-DP12-GE2_P107_available_e2f5-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F5-DP12-GE2_P107P1_available_e2f5-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_P107P1_available_p107p1))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F5-DP12-GE2_P107P1_available_e2f5-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F5-DP12-GE2_P19ARF_available_e2f5-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_C-ABL_PRBP1_C-ABL-PRBP1_available_c-abl-prbp1))
  (probabilistic 0.5 (possclob_ASSOCIATE_C-ABL_PRBP1_C-ABL-PRBP1_available_prbp1))
  (probabilistic 0.5 (possclob_ASSOCIATE_C-ABL_PRBP1_C-ABL-PRBP1_available_c-abl))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_MDM2_PRB_MDM2-PRB_available_mdm2-prb))
  (probabilistic 0.5 (possclob_ASSOCIATE_MDM2_PRB_MDM2-PRB_available_prb))
  (probabilistic 0.5 (possclob_ASSOCIATE_MDM2_PRB_MDM2-PRB_available_mdm2))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P21_GADD45_P21-GADD45_available_p21-gadd45))
  (probabilistic 0.5 (possclob_ASSOCIATE_P21_GADD45_P21-GADD45_available_p21))
  (probabilistic 0.5 (possclob_ASSOCIATE_P21_GADD45_P21-GADD45_available_gadd45))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_PRBP2-JUN_C-FOS_PRBP2-JUN-C-FOS_available_prbp2-jun-c-fos))
  (probabilistic 0.5 (possclob_ASSOCIATE_PRBP2-JUN_C-FOS_PRBP2-JUN-C-FOS_available_prbp2-jun))
  (probabilistic 0.5 (possclob_ASSOCIATE_PRBP2-JUN_C-FOS_PRBP2-JUN-C-FOS_available_c-fos))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_C-MYC_available_c-myc))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCA_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_CYCDP1_available_cycdp1))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F13-DP12-GE2_P107_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_P107_available_p107))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F13-DP12-GE2_P107_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F13-DP12-GE2_P19ARF_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F13-DP12-GE2_P19ARF_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_P53_C-FOS_available_p53))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_P53_C-FOS_available_c-fos))
  (probabilistic 0.5 (possclob_SYNTHESIZE_P53_C-FOS_available_p53))
  (probabilistic 0.5 (openprec_SYNTHESIZE_P53_MDM2_available_p53))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_P53P1_C-FOS_available_c-fos))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_P53P1_GADD45_available_gadd45))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_P53P1_MDM2_available_mdm2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_P53P1_P21_available_p53p1))
  (probabilistic 0.5 (possclob_ASSOCIATE-WITH-CATALYZE_CDC25C_C-TAK1_CDC25CP2_available_cdc25c))
  (probabilistic 0.5 (openprec_ASSOCIATE-WITH-CATALYZE_PRB_CDK46P3-CYCD_PRBP1_available_cdk46p3-cycd))
  (probabilistic 0.5 (openprec_ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCD_PRBP1P2_available_cdk46p3-cycd))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_CDK2P1_CKS1_CDK2P1-CKS1_available_cdk2p1-cks1))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK2P1_CKS1_CDK2P1-CKS1_available_cdk2p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK2P1_CKS1_CDK2P1-CKS1_available_cks1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_e2f1-dp12))
  (probabilistic 0.5 (possclob_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_e2f1))
  (probabilistic 0.5 (possclob_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_dp12))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_HDAC1-P107-E2F4P1-DP12_GE2_HDAC1-P107-E2F4P1-DP12-GE2_available_hdac1-p107-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_HDAC1-P107-E2F4P1-DP12_GE2_HDAC1-P107-E2F4P1-DP12-GE2_available_hdac1-p107-e2f4p1-dp12))
  (probabilistic 0.5 (possclob_ASSOCIATE_HDAC1-P107-E2F4P1-DP12_GE2_HDAC1-P107-E2F4P1-DP12-GE2_available_ge2))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_HDAC1-PRBP1-E2F13-DP12_GE2_HDAC1-PRBP1-E2F13-DP12-GE2_available_hdac1-prbp1-e2f13-dp12-ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_HDAC1-PRBP1-E2F13-DP12_GE2_HDAC1-PRBP1-E2F13-DP12-GE2_available_ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_HDAC1-PRBP1-E2F13-DP12_GE2_HDAC1-PRBP1-E2F13-DP12-GE2_available_hdac1-prbp1-e2f13-dp12))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P130-E2F5-DP12P1_GE2_P130-E2F5-DP12P1-GE2_available_p130-e2f5-dp12p1-ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_P130-E2F5-DP12P1_GE2_P130-E2F5-DP12P1-GE2_available_ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_P130-E2F5-DP12P1_GE2_P130-E2F5-DP12P1-GE2_available_p130-e2f5-dp12p1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_PRB_E2F13-DP12_PRB-E2F13-DP12_available_prb-e2f13-dp12))
  (probabilistic 0.5 (possclob_ASSOCIATE_PRB_E2F13-DP12_PRB-E2F13-DP12_available_prb))
  (probabilistic 0.5 (possclob_ASSOCIATE_PRB_E2F13-DP12_PRB-E2F13-DP12_available_e2f13-dp12))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_PRB-E2F4P1-DP12_GE2_PRB-E2F4P1-DP12-GE2_available_prb-e2f4p1-dp12-ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_PRB-E2F4P1-DP12_GE2_PRB-E2F4P1-DP12-GE2_available_ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_PRB-E2F4P1-DP12_GE2_PRB-E2F4P1-DP12-GE2_available_prb-e2f4p1-dp12))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_PRBP2_JUN_PRBP2-JUN_available_prbp2-jun))
  (probabilistic 0.5 (possclob_ASSOCIATE_PRBP2_JUN_PRBP2-JUN_available_jun))
  (probabilistic 0.5 (possclob_ASSOCIATE_PRBP2_JUN_PRBP2-JUN_available_prbp2))
 )
 (:goal (and (done)))
)