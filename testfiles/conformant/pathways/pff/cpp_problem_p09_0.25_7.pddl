(define (problem GROUNDED-PATHWAYS-09)
 (:domain GROUNDED-PATHWAYS-PROPOSITIONAL)
 (:init
  (not-chosen_e2f13-dp12p1)
  (not-chosen_c-tak1)
  (not-chosen_ge-c)
  (not-chosen_p16)
  (not-chosen_e2f13p1-dp12)
  (not-chosen_cdc25c)
  (not-chosen_c-abl)
  (not-chosen_plk1)
  (not-chosen_prb)
  (not-chosen_cdk1p1p2)
  (not-chosen_apc)
  (not-chosen_sl1)
  (not-chosen_prbp1-e2f4p1-dp12)
  (not-chosen_prbp2)
  (not-chosen_cks1)
  (not-chosen_raf1)
  (not-chosen_cdk46p3-cycdp1)
  (not-chosen_cycb)
  (not-chosen_m1433)
  (not-chosen_cych)
  (not-chosen_cdk7)
  (not-chosen_cebp)
  (not-chosen_hdac1)
  (not-chosen_p130-e2f5p1-dp12)
  (num-subs_l0)
  (not-chosen_cdk46p1)
  (not-chosen_p130-e2f4p1-dp12)
  (not-chosen_e2f13p1-dp12p1)
  (not-chosen_ap2)
  (not-chosen_pcna)
  (not-chosen_cdk2-cycb)
  (not-chosen_hbp1)
  (not-chosen_cdk46p3-cycd)
  (not-chosen_wee1)
  (not-chosen_e2f1)
  (not-chosen_e2f13-dp12)
  (not-chosen_e2f2)
  (not-chosen_dp12)
  (not-chosen_e2f3)
  (not-chosen_e2f4)
  (not-chosen_e2f5)
  (not-chosen_e2f6)
  (not-chosen_p53)
  (not-chosen_cdk2p2-cycb)
  (not-chosen_myt1)
  (not-chosen_cdk2)
  (not-chosen_jun)
  (not-chosen_cdk2p1)
  (not-chosen_p130)
  (valid)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDC25C_CDK1P3-CYCB_CDC25CP1_available_cdk1p3-cycb) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK1P1P3_CDC25CP1_CDK1P3_available_cdk1p1p3) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P1P3-CYCB_CDC25CP1_CDK1P3-CYCB_available_cdc25cp1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK1P1P3-CYCB_CDC25CP1_CDK1P3-CYCB_available_cdk1p1p3-cycb) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK1P1P3-CYCB_WEE1_CDK1P1P2P3-CYCB_available_cdk1p1p3-cycb) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P2_CDC25CP1_CDK1_available_cdc25cp1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P2_CDC25CP1P2_CDK1_available_cdc25cp1p2) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P2_CDK7-CYCH_CDK1P2P3_available_cdk7-cych) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P2P3-CYCB_CDC25CP1_CDK1P3-CYCB_available_cdc25cp1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P2P3-CYCB_CDC25CP1P2_CDK1P3-CYCB_available_cdc25cp1p2) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P3-CYCB_MYT1_CDK1P1P3-CYCB_available_myt1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK1P3-CYCB_WEE1_CDK1P2P3-CYCB_available_cdk1p3-cycb) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_SL1_CDK1P3-CYCB_SL1P1_available_cdk1p3-cycb) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK1_CKS1_CDK1-CKS1_available_cdk1-cks1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1_CKS1_CDK1-CKS1_available_cdk1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1_CKS1_CDK1-CKS1_available_cks1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK1P1P3_CKS1_CDK1P1P3-CKS1_available_cdk1p1p3-cks1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P1P3_CKS1_CDK1P1P3-CKS1_available_cks1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P1P3_CKS1_CDK1P1P3-CKS1_available_cdk1p1p3) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK1P2_GADD45_CDK1P2-GADD45_available_cdk1p2-gadd45) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P2_GADD45_CDK1P2-GADD45_available_cdk1p2) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P2_GADD45_CDK1P2-GADD45_available_gadd45) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK1P2P3_CYCB_CDK1P2P3-CYCB_available_cdk1p2p3-cycb) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P2P3_CYCB_CDK1P2P3-CYCB_available_cycb) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P2P3_CYCB_CDK1P2P3-CYCB_available_cdk1p2p3) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK1P2P3_GADD45_CDK1P2P3-GADD45_available_cdk1p2p3-gadd45) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P2P3_GADD45_CDK1P2P3-GADD45_available_cdk1p2p3) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P2P3_GADD45_CDK1P2P3-GADD45_available_gadd45) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK1P3_CKS1_CDK1P3-CKS1_available_cdk1p3-cks1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P3_CKS1_CDK1P3-CKS1_available_cks1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P3_CKS1_CDK1P3-CKS1_available_cdk1p3) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_RAF1_P130-E2F4-DP12_RAF1-P130-E2F4-DP12_available_raf1-p130-e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_P130-E2F4-DP12_RAF1-P130-E2F4-DP12_available_raf1) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_P130-E2F4-DP12_RAF1-P130-E2F4-DP12_available_p130-e2f4-dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_RAF1_PRBP1-E2F13P1-DP12P1_RAF1-PRBP1-E2F13P1-DP12P1_available_raf1-prbp1-e2f13p1-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRBP1-E2F13P1-DP12P1_RAF1-PRBP1-E2F13P1-DP12P1_available_raf1) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRBP1-E2F13P1-DP12P1_RAF1-PRBP1-E2F13P1-DP12P1_available_prbp1-e2f13p1-dp12p1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_RAF1_PRBP1-E2F4-DP12_RAF1-PRBP1-E2F4-DP12_available_raf1-prbp1-e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRBP1-E2F4-DP12_RAF1-PRBP1-E2F4-DP12_available_prbp1-e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRBP1-E2F4-DP12_RAF1-PRBP1-E2F4-DP12_available_raf1) 0.5)
  (cpt (openprec_SYNTHESIZE_PRBP1-AP2-GE-C_ECADHERIN_available_prbp1-ap2-ge-c) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_PRBP1P2-AP2-GE-C_ECADHERIN_available_ecadherin) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK1P1_CDC25CP1_CDK1_available_cdk1p1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P1_CDC25CP1P2_CDK1_available_cdc25cp1p2) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P1P2_CDC25CP1_CDK1P1_available_cdc25cp1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK1P1P2_CDC25CP1P2_CDK1P2_available_cdk1p1p2) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P1P2P3_CDC25CP1_CDK1P1P3_available_cdc25cp1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P1P2P3-CYCB_CDC25CP1P2_CDK1P2P3-CYCB_available_cdc25cp1p2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_C-ABL_PRBP1P2_C-ABL-PRBP1P2_available_c-abl-prbp1p2) 0.5)
  (cpt (possclob_ASSOCIATE_C-ABL_PRBP1P2_C-ABL-PRBP1P2_available_prbp1p2) 0.5)
  (cpt (possclob_ASSOCIATE_C-ABL_PRBP1P2_C-ABL-PRBP1P2_available_c-abl) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK7P1_CYCH_CDK7P1-CYCH_available_cdk7p1-cych) 0.5)
  (cpt (possclob_ASSOCIATE_CDK7P1_CYCH_CDK7P1-CYCH_available_cdk7p1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK7P1_CYCH_CDK7P1-CYCH_available_cych) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_MDM2_PRB_MDM2-PRB_available_mdm2-prb) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRB_MDM2-PRB_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRB_MDM2-PRB_available_mdm2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_MDM2_PRBP1_MDM2-PRBP1_available_mdm2-prbp1) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRBP1_MDM2-PRBP1_available_mdm2) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRBP1_MDM2-PRBP1_available_prbp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P130_E2F4-DP12_P130-E2F4-DP12_available_p130-e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_P130_E2F4-DP12_P130-E2F4-DP12_available_e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_P130_E2F4-DP12_P130-E2F4-DP12_available_p130) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P16_CDK7P1_P16-CDK7P1_available_p16-cdk7p1) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK7P1_P16-CDK7P1_available_cdk7p1) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK7P1_P16-CDK7P1_available_p16) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PCNA_P21_PCNA-P21_available_pcna-p21) 0.5)
  (cpt (possclob_ASSOCIATE_PCNA_P21_PCNA-P21_available_p21) 0.5)
  (cpt (possclob_ASSOCIATE_PCNA_P21_PCNA-P21_available_pcna) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB-JUN_C-FOS_PRB-JUN-C-FOS_available_prb-jun-c-fos) 0.5)
  (cpt (possclob_ASSOCIATE_PRB-JUN_C-FOS_PRB-JUN-C-FOS_available_prb-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRB-JUN_C-FOS_PRB-JUN-C-FOS_available_c-fos) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_prbp1-ap2) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_prbp1) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_ap2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_E2F13-DP12P1_PRBP1-E2F13-DP12P1_available_prbp1-e2f13-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F13-DP12P1_PRBP1-E2F13-DP12P1_available_prbp1) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F13-DP12P1_PRBP1-E2F13-DP12P1_available_e2f13-dp12p1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_E2F13-DP12_PRBP1-E2F13-DP12_available_prbp1-e2f13-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F13-DP12_PRBP1-E2F13-DP12_available_prbp1) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F13-DP12_PRBP1-E2F13-DP12_available_e2f13-dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_JUN_PRBP1-JUN_available_prbp1-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_JUN_PRBP1-JUN_available_jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_JUN_PRBP1-JUN_available_prbp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP2-JUN_C-FOS_PRBP2-JUN-C-FOS_available_prbp2-jun-c-fos) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP2-JUN_C-FOS_PRBP2-JUN-C-FOS_available_prbp2-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP2-JUN_C-FOS_PRBP2-JUN-C-FOS_available_c-fos) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_RAF1_PRB-E2F13-DP12_RAF1-PRB-E2F13-DP12_available_raf1-prb-e2f13-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRB-E2F13-DP12_RAF1-PRB-E2F13-DP12_available_prb-e2f13-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRB-E2F13-DP12_RAF1-PRB-E2F13-DP12_available_raf1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_RAF1_PRB-E2F13P1-DP12_RAF1-PRB-E2F13P1-DP12_available_raf1-prb-e2f13p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRB-E2F13P1-DP12_RAF1-PRB-E2F13P1-DP12_available_raf1) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_PRB-E2F13P1-DP12_RAF1-PRB-E2F13P1-DP12_available_prb-e2f13p1-dp12) 0.5)
  (cpt (openprec_SYNTHESIZE_P53_GADD45_available_p53) 0.5)
  (cpt (openprec_SYNTHESIZE_P53_MDM2_available_p53) 0.5)
  (cpt (possclob_SYNTHESIZE_P53_MDM2_available_p53) 0.5)
  (cpt (possclob_SYNTHESIZE_PRB-AP2-GE-C_ECADHERIN_available_prb-ap2-ge-c) 0.5)
  (cpt (openprec_SYNTHESIZE_PRBP2-AP2-GE-C_ECADHERIN_available_prbp2-ap2-ge-c) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_PRBP2-AP2-GE-C_ECADHERIN_available_ecadherin) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_APC_PLK1_APCP1_available_plk1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDC25C_C-TAK1_CDC25CP2_available_c-tak1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDC25CP1_C-TAK1_CDC25CP1P2_available_cdc25cp1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK1P1P2_CDK7-CYCH_CDK1P1P2P3_available_cdk1p1p2) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK7_CDK7-CYCH_CDK7P1_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK7_CDK7-CYCH_CDK7P1_available_cdk7) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_PRB_CDK46P3-CYCD_PRBP1_available_cdk46p3-cycd) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_AP2_GE-C_AP2-GE-C_available_ap2-ge-c) 0.5)
  (cpt (possclob_ASSOCIATE_AP2_GE-C_AP2-GE-C_available_ge-c) 0.5)
  (cpt (possclob_ASSOCIATE_AP2_GE-C_AP2-GE-C_available_ap2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_C-ABL_PRBP2_C-ABL-PRBP2_available_c-abl-prbp2) 0.5)
  (cpt (possclob_ASSOCIATE_C-ABL_PRBP2_C-ABL-PRBP2_available_prbp2) 0.5)
  (cpt (possclob_ASSOCIATE_C-ABL_PRBP2_C-ABL-PRBP2_available_c-abl) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CEBP_PRB_CEBP-PRB_available_cebp-prb) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP_PRB_CEBP-PRB_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP_PRB_CEBP-PRB_available_cebp) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_E2F6_DP12_E2F6-DP12_available_e2f6-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F6_DP12_E2F6-DP12_available_dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F6_DP12_E2F6-DP12_available_e2f6) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_HDAC1_PRB-E2F13-DP12P1_HDAC1-PRB-E2F13-DP12P1_available_hdac1-prb-e2f13-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F13-DP12P1_HDAC1-PRB-E2F13-DP12P1_available_prb-e2f13-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F13-DP12P1_HDAC1-PRB-E2F13-DP12P1_available_hdac1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_HDAC1_PRB-E2F13P1-DP12P1_HDAC1-PRB-E2F13P1-DP12P1_available_hdac1-prb-e2f13p1-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F13P1-DP12P1_HDAC1-PRB-E2F13P1-DP12P1_available_prb-e2f13p1-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F13P1-DP12P1_HDAC1-PRB-E2F13P1-DP12P1_available_hdac1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16-cdk46p1) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_cdk46p1) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P16_CDK7_P16-CDK7_available_p16-cdk7) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK7_P16-CDK7_available_cdk7) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK7_P16-CDK7_available_p16) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB-AP2_GE-C_PRB-AP2-GE-C_available_prb-ap2-ge-c) 0.5)
  (cpt (possclob_ASSOCIATE_PRB-AP2_GE-C_PRB-AP2-GE-C_available_ge-c) 0.5)
  (cpt (possclob_ASSOCIATE_PRB-AP2_GE-C_PRB-AP2-GE-C_available_prb-ap2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB_AP2_PRB-AP2_available_prb-ap2) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_AP2_PRB-AP2_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_AP2_PRB-AP2_available_ap2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB_E2F13-DP12P1_PRB-E2F13-DP12P1_available_prb-e2f13-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13-DP12P1_PRB-E2F13-DP12P1_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13-DP12P1_PRB-E2F13-DP12P1_available_e2f13-dp12p1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB_E2F13P1-DP12P1_PRB-E2F13P1-DP12P1_available_prb-e2f13p1-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13P1-DP12P1_PRB-E2F13P1-DP12P1_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13P1-DP12P1_PRB-E2F13P1-DP12P1_available_e2f13p1-dp12p1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB_JUN_PRB-JUN_available_prb-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_JUN_PRB-JUN_available_jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_JUN_PRB-JUN_available_prb) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_RAF1_P130-E2F5P1-DP12_RAF1-P130-E2F5P1-DP12_available_raf1-p130-e2f5p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_P130-E2F5P1-DP12_RAF1-P130-E2F5P1-DP12_available_raf1) 0.5)
  (cpt (possclob_ASSOCIATE_RAF1_P130-E2F5P1-DP12_RAF1-P130-E2F5P1-DP12_available_p130-e2f5p1-dp12) 0.5)
 )
 (:goal 0.000001
 (and (done)))
)
