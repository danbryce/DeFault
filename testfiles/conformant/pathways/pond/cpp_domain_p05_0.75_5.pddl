(define (domain GROUNDED-PATHWAYS-PROPOSITIONAL)
 (:requirements :probabilistic-effects)
 (:predicates (available_c-myc) (available_pcna-cycd) (available_cdk2p1) (available_cks1) (available_p21-gadd45) (chosen_hdac1-prbp1-e2f4-dp12) (available_cdk46p1-cycd) (goal5_) (FOO) (available_p130-e2f5-dp12p1) (chosen_e2f5-dp12p1) (available_gadd45) (available_pcna-cycdp1) (not-chosen_sp1) (available_cdk2-cycep1) (available_p107) (available_dp12) (available_cdk2-cks1) (goal6_) (not-chosen_cks1) (available_p21-cdk2p1-cycep1) (available_cdk2-cyca) (chosen_cdk1p1p2) (available_pcna-p21-cdk2-cyce) (available_cdk1p1p2-gadd45) (available_e2f2-dp12) (available_cdk2-cyce) (available_pcna-p21-cdk2-cyca) (available_p130-e2f5-dp12p1-ge2) (available_c-fos) (available_p130-e2f5-dp12) (available_p19arf) (available_cdk46p1) (chosen_p130) (available_sp1-p107p1) (chosen_gercc1) (num-subs_l0) (available_pcna-gadd45) (num-subs_l2) (not-chosen_cdk46p1) (num-subs_l1) (num-subs_l4) (num-subs_l3) (available_sp1-p107) (num-subs_l6) (num-subs_l5) (num-subs_l7) (available_cdk2) (available_p21) (available_cdk2p1-cyca) (available_p130-e2f5-dp12-ge2) (available_cdk2p1-cyce) (available_pcna) (chosen_e2f13-dp12) (available_e2f6-dp12-ge2) (available_cdk1p1p2-cks1) (available_e2f2) (available_e2f1) (available_jun) (chosen_p53) (available_p21-cdk2p1-cyce) (available_e2f5-dp12-ge2) (available_cdk46p1-cycdp1) (not-chosen_e2f5-dp12p1) (available_p21-cdk2p1-cyca) (not-chosen_e2f1) (not-chosen_e2f2) (not-chosen_dp12) (available_p21-cdk2-cycep1) (not-chosen_e2f5) (not-chosen_e2f6) (available_ge2) (available_mdm2) (available_hdac1-prbp1-e2f4-dp12-ge2) (available_p16) (available_e2f5-dp12p1) (not-chosen_jun) (chosen_ge2) (available_e2f5) (not-chosen_p130) (not-chosen_cdk2p1) (available_e2f6) (available_pcna-p21-cdk46p1-cycdp1) (available_p130) (available_e2f5-dp12) (not-chosen_p16) (available_cycep1) (available_p21-cdk2-cyce) (available_cdk2p1-cycep1) (not-chosen_cdk1p1p2) (available_cycdp1) (chosen_cks1) (not-chosen_gercc1) (available_p21-cdk46p1-cycd) (available_p21-cdk2-cyca) (chosen_jun) (available_mdm2-e2f13p1-dp12p1) (chosen_cdk46p1) (available_cdk1p1p2) (available_p16-cdk46p1) (chosen_e2f13p1-dp12p1) (available_ercc1) (available_p53-dp12) (goal1_) (available_pcna-p21) (available_mdm2-e2f13-dp12) (available_pcna-p21-cdk2p1-cycep1) (available_p21-cdk46p1-cycdp1) (available_cdk2p1-cks1) (available_jun-c-fos-gercc1) (available_e2f13-dp12-ge2) (available_e2f1-dp12) (goal2_) (available_e2f13-dp12) (available_pol) (not-chosen_e2f13p1-dp12p1) (available_pcna-p21-cdk46p1-cycd) (available_gercc1) (chosen_e2f5) (chosen_cdk2p1) (not-chosen_pcna) (chosen_e2f6) (goal3_) (chosen_e2f1) (chosen_e2f2) (available_jun-c-fos) (available_sp1) (available_e2f13p1-dp12p1) (chosen_sp1) (chosen_pcna) (available_cyca) (available_pcna-p21-cdk2p1-cyce) (chosen_p16) (available_e2f6-dp12) (available_cyce) (not-chosen_ge2) (available_cycd) (available_pcna-p21-cdk2p1-cyca) (available_p107p1) (chosen_dp12) (not-chosen_e2f13-dp12) (chosen_cdk2) (not-chosen_hdac1-prbp1-e2f4-dp12) (available_hdac1-prbp1-e2f4-dp12) (goal4_) (not-chosen_p53) (available_pcna-p21-cdk2-cycep1) (available_p53) (not-chosen_cdk2) (unlistedeffect_ASSOCIATE_P21_CDK2-CYCA_P21-CDK2-CYCA_available_p21-cdk2-cyca) (possclob_ASSOCIATE_P21_CDK2-CYCA_P21-CDK2-CYCA_available_cdk2-cyca) (possclob_ASSOCIATE_P21_CDK2-CYCA_P21-CDK2-CYCA_available_p21) (unlistedeffect_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_p21-cdk2-cyce) (possclob_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_p21) (possclob_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_cdk2-cyce) (unlistedeffect_ASSOCIATE_P21_CDK2P1-CYCA_P21-CDK2P1-CYCA_available_p21-cdk2p1-cyca) (possclob_ASSOCIATE_P21_CDK2P1-CYCA_P21-CDK2P1-CYCA_available_cdk2p1-cyca) (possclob_ASSOCIATE_P21_CDK2P1-CYCA_P21-CDK2P1-CYCA_available_p21) (unlistedeffect_ASSOCIATE_P21_CDK2P1-CYCEP1_P21-CDK2P1-CYCEP1_available_p21-cdk2p1-cycep1) (possclob_ASSOCIATE_P21_CDK2P1-CYCEP1_P21-CDK2P1-CYCEP1_available_p21) (possclob_ASSOCIATE_P21_CDK2P1-CYCEP1_P21-CDK2P1-CYCEP1_available_cdk2p1-cycep1) (unlistedeffect_ASSOCIATE_P21_CDK46P1-CYCDP1_P21-CDK46P1-CYCDP1_available_p21-cdk46p1-cycdp1) (possclob_ASSOCIATE_P21_CDK46P1-CYCDP1_P21-CDK46P1-CYCDP1_available_p21) (possclob_ASSOCIATE_P21_CDK46P1-CYCDP1_P21-CDK46P1-CYCDP1_available_cdk46p1-cycdp1) (unlistedeffect_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_p21-cdk46p1-cycd) (possclob_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_p21) (possclob_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_cdk46p1-cycd) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK2-CYCA_PCNA-P21-CDK2-CYCA_available_pcna-p21-cdk2-cyca) (possclob_ASSOCIATE_PCNA-P21_CDK2-CYCA_PCNA-P21-CDK2-CYCA_available_cdk2-cyca) (possclob_ASSOCIATE_PCNA-P21_CDK2-CYCA_PCNA-P21-CDK2-CYCA_available_pcna-p21) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK2-CYCE_PCNA-P21-CDK2-CYCE_available_pcna-p21-cdk2-cyce) (possclob_ASSOCIATE_PCNA-P21_CDK2-CYCE_PCNA-P21-CDK2-CYCE_available_cdk2-cyce) (possclob_ASSOCIATE_PCNA-P21_CDK2-CYCE_PCNA-P21-CDK2-CYCE_available_pcna-p21) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK2P1-CYCA_PCNA-P21-CDK2P1-CYCA_available_pcna-p21-cdk2p1-cyca) (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCA_PCNA-P21-CDK2P1-CYCA_available_cdk2p1-cyca) (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCA_PCNA-P21-CDK2P1-CYCA_available_pcna-p21) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK2P1-CYCEP1_PCNA-P21-CDK2P1-CYCEP1_available_pcna-p21-cdk2p1-cycep1) (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCEP1_PCNA-P21-CDK2P1-CYCEP1_available_cdk2p1-cycep1) (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCEP1_PCNA-P21-CDK2P1-CYCEP1_available_pcna-p21) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK46P1-CYCDP1_PCNA-P21-CDK46P1-CYCDP1_available_pcna-p21-cdk46p1-cycdp1) (possclob_ASSOCIATE_PCNA-P21_CDK46P1-CYCDP1_PCNA-P21-CDK46P1-CYCDP1_available_cdk46p1-cycdp1) (possclob_ASSOCIATE_PCNA-P21_CDK46P1-CYCDP1_PCNA-P21-CDK46P1-CYCDP1_available_pcna-p21) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK46P1-CYCD_PCNA-P21-CDK46P1-CYCD_available_pcna-p21-cdk46p1-cycd) (possclob_ASSOCIATE_PCNA-P21_CDK46P1-CYCD_PCNA-P21-CDK46P1-CYCD_available_cdk46p1-cycd) (possclob_ASSOCIATE_PCNA-P21_CDK46P1-CYCD_PCNA-P21-CDK46P1-CYCD_available_pcna-p21) (openprec_SYNTHESIZE_E2F5-DP12-GE2_C-MYC_available_e2f5-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_C-MYC_available_c-myc) (possclob_SYNTHESIZE_E2F5-DP12-GE2_CYCA_available_e2f5-dp12-ge2) (possclob_SYNTHESIZE_E2F5-DP12-GE2_CYCD_available_e2f5-dp12-ge2) (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCDP1_available_e2f5-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_CYCDP1_available_cycdp1) (possclob_SYNTHESIZE_E2F5-DP12-GE2_CYCDP1_available_e2f5-dp12-ge2) (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCE_available_e2f5-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_CYCE_available_cyce) (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCEP1_available_e2f5-dp12-ge2) (possclob_SYNTHESIZE_E2F5-DP12-GE2_CYCEP1_available_e2f5-dp12-ge2) (openprec_SYNTHESIZE_E2F5-DP12-GE2_P107_available_e2f5-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_P107_available_p107) (openprec_SYNTHESIZE_E2F5-DP12-GE2_P107P1_available_e2f5-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_P107P1_available_p107p1) (possclob_SYNTHESIZE_E2F5-DP12-GE2_P107P1_available_e2f5-dp12-ge2) (openprec_SYNTHESIZE_E2F5-DP12-GE2_P19ARF_available_e2f5-dp12-ge2) (possclob_SYNTHESIZE_E2F5-DP12-GE2_P19ARF_available_e2f5-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_POL_available_pol) (possclob_SYNTHESIZE_E2F5-DP12-GE2_POL_available_e2f5-dp12-ge2) (openprec_SYNTHESIZE_JUN-C-FOS-GERCC1_ERCC1_available_jun-c-fos-gercc1) (unlistedeffect_SYNTHESIZE_JUN-C-FOS-GERCC1_ERCC1_available_ercc1) (unlistedeffect_ASSOCIATE_CDK2_CYCE_CDK2-CYCE_available_cdk2-cyce) (possclob_ASSOCIATE_CDK2_CYCE_CDK2-CYCE_available_cdk2) (possclob_ASSOCIATE_CDK2_CYCE_CDK2-CYCE_available_cyce) (unlistedeffect_ASSOCIATE_CDK2_CYCEP1_CDK2-CYCEP1_available_cdk2-cycep1) (possclob_ASSOCIATE_CDK2_CYCEP1_CDK2-CYCEP1_available_cdk2) (possclob_ASSOCIATE_CDK2_CYCEP1_CDK2-CYCEP1_available_cycep1) (unlistedeffect_ASSOCIATE_CDK2P1_CYCA_CDK2P1-CYCA_available_cdk2p1-cyca) (possclob_ASSOCIATE_CDK2P1_CYCA_CDK2P1-CYCA_available_cyca) (possclob_ASSOCIATE_CDK2P1_CYCA_CDK2P1-CYCA_available_cdk2p1) (unlistedeffect_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cdk2p1-cyce) (possclob_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cdk2p1) (possclob_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cyce) (unlistedeffect_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cdk2p1-cycep1) (possclob_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cdk2p1) (possclob_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cycep1) (unlistedeffect_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cdk46p1-cycd) (possclob_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cdk46p1) (possclob_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cycd) (unlistedeffect_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cdk46p1-cycdp1) (possclob_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cdk46p1) (possclob_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cycdp1) (unlistedeffect_ASSOCIATE_E2F5-DP12_GE2_E2F5-DP12-GE2_available_e2f5-dp12-ge2) (possclob_ASSOCIATE_E2F5-DP12_GE2_E2F5-DP12-GE2_available_ge2) (possclob_ASSOCIATE_E2F5-DP12_GE2_E2F5-DP12-GE2_available_e2f5-dp12) (unlistedeffect_ASSOCIATE_E2F6-DP12_GE2_E2F6-DP12-GE2_available_e2f6-dp12-ge2) (possclob_ASSOCIATE_E2F6-DP12_GE2_E2F6-DP12-GE2_available_ge2) (possclob_ASSOCIATE_E2F6-DP12_GE2_E2F6-DP12-GE2_available_e2f6-dp12) (unlistedeffect_ASSOCIATE_JUN-C-FOS_GERCC1_JUN-C-FOS-GERCC1_available_jun-c-fos-gercc1) (possclob_ASSOCIATE_JUN-C-FOS_GERCC1_JUN-C-FOS-GERCC1_available_gercc1) (possclob_ASSOCIATE_JUN-C-FOS_GERCC1_JUN-C-FOS-GERCC1_available_jun-c-fos) (unlistedeffect_ASSOCIATE_MDM2_E2F13-DP12_MDM2-E2F13-DP12_available_mdm2-e2f13-dp12) (possclob_ASSOCIATE_MDM2_E2F13-DP12_MDM2-E2F13-DP12_available_mdm2) (possclob_ASSOCIATE_MDM2_E2F13-DP12_MDM2-E2F13-DP12_available_e2f13-dp12) (unlistedeffect_ASSOCIATE_MDM2_E2F13P1-DP12P1_MDM2-E2F13P1-DP12P1_available_mdm2-e2f13p1-dp12p1) (possclob_ASSOCIATE_MDM2_E2F13P1-DP12P1_MDM2-E2F13P1-DP12P1_available_mdm2) (possclob_ASSOCIATE_MDM2_E2F13P1-DP12P1_MDM2-E2F13P1-DP12P1_available_e2f13p1-dp12p1) (unlistedeffect_ASSOCIATE_P130-E2F5-DP12_GE2_P130-E2F5-DP12-GE2_available_p130-e2f5-dp12-ge2) (possclob_ASSOCIATE_P130-E2F5-DP12_GE2_P130-E2F5-DP12-GE2_available_ge2) (possclob_ASSOCIATE_P130-E2F5-DP12_GE2_P130-E2F5-DP12-GE2_available_p130-e2f5-dp12) (unlistedeffect_ASSOCIATE_P130_E2F5-DP12_P130-E2F5-DP12_available_p130-e2f5-dp12) (possclob_ASSOCIATE_P130_E2F5-DP12_P130-E2F5-DP12_available_e2f5-dp12) (possclob_ASSOCIATE_P130_E2F5-DP12_P130-E2F5-DP12_available_p130) (unlistedeffect_ASSOCIATE_P21_GADD45_P21-GADD45_available_p21-gadd45) (possclob_ASSOCIATE_P21_GADD45_P21-GADD45_available_p21) (possclob_ASSOCIATE_P21_GADD45_P21-GADD45_available_gadd45) (unlistedeffect_ASSOCIATE_PCNA_CYCD_PCNA-CYCD_available_pcna-cycd) (possclob_ASSOCIATE_PCNA_CYCD_PCNA-CYCD_available_cycd) (possclob_ASSOCIATE_PCNA_CYCD_PCNA-CYCD_available_pcna) (unlistedeffect_ASSOCIATE_PCNA_GADD45_PCNA-GADD45_available_pcna-gadd45) (possclob_ASSOCIATE_PCNA_GADD45_PCNA-GADD45_available_pcna) (possclob_ASSOCIATE_PCNA_GADD45_PCNA-GADD45_available_gadd45) (unlistedeffect_ASSOCIATE_PCNA_P21_PCNA-P21_available_pcna-p21) (possclob_ASSOCIATE_PCNA_P21_PCNA-P21_available_p21) (possclob_ASSOCIATE_PCNA_P21_PCNA-P21_available_pcna) (unlistedeffect_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_sp1-p107p1) (possclob_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_p107p1) (possclob_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_sp1) (openprec_SYNTHESIZE_E2F13-DP12-GE2_C-MYC_available_e2f13-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_C-MYC_available_c-myc) (possclob_SYNTHESIZE_E2F13-DP12-GE2_C-MYC_available_e2f13-dp12-ge2) (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCA_available_e2f13-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_CYCA_available_cyca) (possclob_SYNTHESIZE_E2F13-DP12-GE2_CYCA_available_e2f13-dp12-ge2) (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCD_available_e2f13-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_CYCD_available_cycd) (possclob_SYNTHESIZE_E2F13-DP12-GE2_CYCD_available_e2f13-dp12-ge2) (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCDP1_available_e2f13-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_CYCDP1_available_cycdp1) (possclob_SYNTHESIZE_E2F13-DP12-GE2_CYCDP1_available_e2f13-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_CYCE_available_cyce) (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCEP1_available_e2f13-dp12-ge2) (possclob_SYNTHESIZE_E2F13-DP12-GE2_CYCEP1_available_e2f13-dp12-ge2) (openprec_SYNTHESIZE_E2F13-DP12-GE2_P107_available_e2f13-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_P107_available_p107) (possclob_SYNTHESIZE_E2F13-DP12-GE2_P107_available_e2f13-dp12-ge2) (openprec_SYNTHESIZE_E2F13-DP12-GE2_P107P1_available_e2f13-dp12-ge2) (possclob_SYNTHESIZE_E2F13-DP12-GE2_P107P1_available_e2f13-dp12-ge2) (openprec_SYNTHESIZE_E2F13-DP12-GE2_P19ARF_available_e2f13-dp12-ge2) (possclob_SYNTHESIZE_E2F13-DP12-GE2_P19ARF_available_e2f13-dp12-ge2) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_POL_available_pol) (possclob_SYNTHESIZE_E2F13-DP12-GE2_POL_available_e2f13-dp12-ge2) (openprec_SYNTHESIZE_P53_C-FOS_available_p53) (possclob_SYNTHESIZE_P53_C-FOS_available_p53) (openprec_SYNTHESIZE_P53_GADD45_available_p53) (possclob_SYNTHESIZE_P53_GADD45_available_p53) (openprec_SYNTHESIZE_P53_MDM2_available_p53) (possclob_SYNTHESIZE_P53_MDM2_available_p53) (openprec_SYNTHESIZE_P53_P21_available_p53) (unlistedeffect_SYNTHESIZE_P53_P21_available_p21) (possclob_SYNTHESIZE_P53_P21_available_p53) (unlistedeffect_ASSOCIATE_CDK1P1P2_CKS1_CDK1P1P2-CKS1_available_cdk1p1p2-cks1) (possclob_ASSOCIATE_CDK1P1P2_CKS1_CDK1P1P2-CKS1_available_cks1) (possclob_ASSOCIATE_CDK1P1P2_CKS1_CDK1P1P2-CKS1_available_cdk1p1p2) (unlistedeffect_ASSOCIATE_CDK2_CKS1_CDK2-CKS1_available_cdk2-cks1) (possclob_ASSOCIATE_CDK2_CKS1_CDK2-CKS1_available_cdk2) (possclob_ASSOCIATE_CDK2_CKS1_CDK2-CKS1_available_cks1) (unlistedeffect_ASSOCIATE_E2F13-DP12_GE2_E2F13-DP12-GE2_available_e2f13-dp12-ge2) (possclob_ASSOCIATE_E2F13-DP12_GE2_E2F13-DP12-GE2_available_ge2) (possclob_ASSOCIATE_E2F13-DP12_GE2_E2F13-DP12-GE2_available_e2f13-dp12) (unlistedeffect_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_e2f1-dp12) (possclob_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_e2f1) (possclob_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_dp12) (unlistedeffect_ASSOCIATE_E2F2_DP12_E2F2-DP12_available_e2f2-dp12) (possclob_ASSOCIATE_E2F2_DP12_E2F2-DP12_available_e2f2) (possclob_ASSOCIATE_E2F2_DP12_E2F2-DP12_available_dp12) (unlistedeffect_ASSOCIATE_E2F5_DP12_E2F5-DP12_available_e2f5-dp12) (possclob_ASSOCIATE_E2F5_DP12_E2F5-DP12_available_dp12) (possclob_ASSOCIATE_E2F5_DP12_E2F5-DP12_available_e2f5) (unlistedeffect_ASSOCIATE_HDAC1-PRBP1-E2F4-DP12_GE2_HDAC1-PRBP1-E2F4-DP12-GE2_available_hdac1-prbp1-e2f4-dp12-ge2) (possclob_ASSOCIATE_HDAC1-PRBP1-E2F4-DP12_GE2_HDAC1-PRBP1-E2F4-DP12-GE2_available_ge2) (possclob_ASSOCIATE_HDAC1-PRBP1-E2F4-DP12_GE2_HDAC1-PRBP1-E2F4-DP12-GE2_available_hdac1-prbp1-e2f4-dp12) (unlistedeffect_ASSOCIATE_P130-E2F5-DP12P1_GE2_P130-E2F5-DP12P1-GE2_available_p130-e2f5-dp12p1-ge2) (possclob_ASSOCIATE_P130-E2F5-DP12P1_GE2_P130-E2F5-DP12P1-GE2_available_ge2) (possclob_ASSOCIATE_P130-E2F5-DP12P1_GE2_P130-E2F5-DP12P1-GE2_available_p130-e2f5-dp12p1) (unlistedeffect_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16-cdk46p1) (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_cdk46p1) (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16) (valid) (done))

 (:action CHOOSE_CDK1P1P2_L7_L6
  :effect (and
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l6)) (valid)) (chosen_cdk1p1p2))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l6)) (valid)) (not (not-chosen_cdk1p1p2)))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_cdk1p1p2) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2_L7_L6
  :effect (and
    (when (and (and (not-chosen_cdk2) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_cdk2) (num-subs_l6)) (valid)) (chosen_cdk2))
    (when (and (and (not-chosen_cdk2) (num-subs_l6)) (valid)) (not (not-chosen_cdk2)))
    (when (and (and (not-chosen_cdk2) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_cdk2) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2P1_L7_L6
  :effect (and
    (when (and (and (not-chosen_cdk2p1) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_cdk2p1) (num-subs_l6)) (valid)) (chosen_cdk2p1))
    (when (and (and (not-chosen_cdk2p1) (num-subs_l6)) (valid)) (not (not-chosen_cdk2p1)))
    (when (and (and (not-chosen_cdk2p1) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_cdk2p1) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK46P1_L7_L6
  :effect (and
    (when (and (and (not-chosen_cdk46p1) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l6)) (valid)) (chosen_cdk46p1))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l6)) (valid)) (not (not-chosen_cdk46p1)))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_cdk46p1) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CKS1_L7_L6
  :effect (and
    (when (and (and (not-chosen_cks1) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_cks1) (num-subs_l6)) (valid)) (chosen_cks1))
    (when (and (and (not-chosen_cks1) (num-subs_l6)) (valid)) (not (not-chosen_cks1)))
    (when (and (and (not-chosen_cks1) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_cks1) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_DP12_L7_L6
  :effect (and
    (when (and (and (not-chosen_dp12) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_dp12) (num-subs_l6)) (valid)) (chosen_dp12))
    (when (and (and (not-chosen_dp12) (num-subs_l6)) (valid)) (not (not-chosen_dp12)))
    (when (and (and (not-chosen_dp12) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_dp12) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F1_L7_L6
  :effect (and
    (when (and (and (not-chosen_e2f1) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_e2f1) (num-subs_l6)) (valid)) (chosen_e2f1))
    (when (and (and (not-chosen_e2f1) (num-subs_l6)) (valid)) (not (not-chosen_e2f1)))
    (when (and (and (not-chosen_e2f1) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_e2f1) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13-DP12_L7_L6
  :effect (and
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l6)) (valid)) (chosen_e2f13-dp12))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l6)) (valid)) (not (not-chosen_e2f13-dp12)))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_e2f13-dp12) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13P1-DP12P1_L7_L6
  :effect (and
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l6)) (valid)) (chosen_e2f13p1-dp12p1))
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l6)) (valid)) (not (not-chosen_e2f13p1-dp12p1)))
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F2_L7_L6
  :effect (and
    (when (and (and (not-chosen_e2f2) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_e2f2) (num-subs_l6)) (valid)) (chosen_e2f2))
    (when (and (and (not-chosen_e2f2) (num-subs_l6)) (valid)) (not (not-chosen_e2f2)))
    (when (and (and (not-chosen_e2f2) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_e2f2) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5_L7_L6
  :effect (and
    (when (and (and (num-subs_l6) (not-chosen_e2f5)) (valid)) (num-subs_l7))
    (when (and (and (num-subs_l6) (not-chosen_e2f5)) (valid)) (chosen_e2f5))
    (when (and (and (num-subs_l6) (not-chosen_e2f5)) (valid)) (not (num-subs_l6)))
    (when (and (and (num-subs_l6) (not-chosen_e2f5)) (valid)) (not (not-chosen_e2f5)))
    (when (not (and (and (num-subs_l6) (not-chosen_e2f5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5-DP12P1_L7_L6
  :effect (and
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l6)) (valid)) (chosen_e2f5-dp12p1))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l6)) (valid)) (not (not-chosen_e2f5-dp12p1)))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_e2f5-dp12p1) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F6_L7_L6
  :effect (and
    (when (and (and (not-chosen_e2f6) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_e2f6) (num-subs_l6)) (valid)) (chosen_e2f6))
    (when (and (and (not-chosen_e2f6) (num-subs_l6)) (valid)) (not (not-chosen_e2f6)))
    (when (and (and (not-chosen_e2f6) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_e2f6) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GE2_L7_L6
  :effect (and
    (when (and (and (not-chosen_ge2) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_ge2) (num-subs_l6)) (valid)) (chosen_ge2))
    (when (and (and (not-chosen_ge2) (num-subs_l6)) (valid)) (not (not-chosen_ge2)))
    (when (and (and (not-chosen_ge2) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_ge2) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GERCC1_L7_L6
  :effect (and
    (when (and (and (not-chosen_gercc1) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_gercc1) (num-subs_l6)) (valid)) (chosen_gercc1))
    (when (and (and (not-chosen_gercc1) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (and (and (not-chosen_gercc1) (num-subs_l6)) (valid)) (not (not-chosen_gercc1)))
    (when (not (and (and (not-chosen_gercc1) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_HDAC1-PRBP1-E2F4-DP12_L7_L6
  :effect (and
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l6)) (valid)) (chosen_hdac1-prbp1-e2f4-dp12))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l6)) (valid)) (not (not-chosen_hdac1-prbp1-e2f4-dp12)))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_JUN_L7_L6
  :effect (and
    (when (and (and (not-chosen_jun) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_jun) (num-subs_l6)) (valid)) (chosen_jun))
    (when (and (and (not-chosen_jun) (num-subs_l6)) (valid)) (not (not-chosen_jun)))
    (when (and (and (not-chosen_jun) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_jun) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P130_L7_L6
  :effect (and
    (when (and (and (not-chosen_p130) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_p130) (num-subs_l6)) (valid)) (chosen_p130))
    (when (and (and (not-chosen_p130) (num-subs_l6)) (valid)) (not (not-chosen_p130)))
    (when (and (and (not-chosen_p130) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_p130) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P16_L7_L6
  :effect (and
    (when (and (and (not-chosen_p16) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_p16) (num-subs_l6)) (valid)) (chosen_p16))
    (when (and (and (not-chosen_p16) (num-subs_l6)) (valid)) (not (not-chosen_p16)))
    (when (and (and (not-chosen_p16) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_p16) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P53_L7_L6
  :effect (and
    (when (and (and (not-chosen_p53) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_p53) (num-subs_l6)) (valid)) (chosen_p53))
    (when (and (and (not-chosen_p53) (num-subs_l6)) (valid)) (not (not-chosen_p53)))
    (when (and (and (not-chosen_p53) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_p53) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PCNA_L7_L6
  :effect (and
    (when (and (and (not-chosen_pcna) (num-subs_l6)) (valid)) (num-subs_l7))
    (when (and (and (not-chosen_pcna) (num-subs_l6)) (valid)) (chosen_pcna))
    (when (and (and (not-chosen_pcna) (num-subs_l6)) (valid)) (not (not-chosen_pcna)))
    (when (and (and (not-chosen_pcna) (num-subs_l6)) (valid)) (not (num-subs_l6)))
    (when (not (and (and (not-chosen_pcna) (num-subs_l6)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_SP1_L7_L6
  :effect (and
    (when (and (and (num-subs_l6) (not-chosen_sp1)) (valid)) (num-subs_l7))
    (when (and (and (num-subs_l6) (not-chosen_sp1)) (valid)) (chosen_sp1))
    (when (and (and (num-subs_l6) (not-chosen_sp1)) (valid)) (not (num-subs_l6)))
    (when (and (and (num-subs_l6) (not-chosen_sp1)) (valid)) (not (not-chosen_sp1)))
    (when (not (and (and (num-subs_l6) (not-chosen_sp1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK1P1P2_L6_L5
  :effect (and
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l5)) (valid)) (chosen_cdk1p1p2))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l5)) (valid)) (not (not-chosen_cdk1p1p2)))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_cdk1p1p2) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2_L6_L5
  :effect (and
    (when (and (and (not-chosen_cdk2) (num-subs_l5)) (valid)) (chosen_cdk2))
    (when (and (and (not-chosen_cdk2) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_cdk2) (num-subs_l5)) (valid)) (not (not-chosen_cdk2)))
    (when (and (and (not-chosen_cdk2) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_cdk2) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2P1_L6_L5
  :effect (and
    (when (and (and (not-chosen_cdk2p1) (num-subs_l5)) (valid)) (chosen_cdk2p1))
    (when (and (and (not-chosen_cdk2p1) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_cdk2p1) (num-subs_l5)) (valid)) (not (not-chosen_cdk2p1)))
    (when (and (and (not-chosen_cdk2p1) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_cdk2p1) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK46P1_L6_L5
  :effect (and
    (when (and (and (not-chosen_cdk46p1) (num-subs_l5)) (valid)) (chosen_cdk46p1))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l5)) (valid)) (not (not-chosen_cdk46p1)))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_cdk46p1) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CKS1_L6_L5
  :effect (and
    (when (and (and (not-chosen_cks1) (num-subs_l5)) (valid)) (chosen_cks1))
    (when (and (and (not-chosen_cks1) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_cks1) (num-subs_l5)) (valid)) (not (not-chosen_cks1)))
    (when (and (and (not-chosen_cks1) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_cks1) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_DP12_L6_L5
  :effect (and
    (when (and (and (not-chosen_dp12) (num-subs_l5)) (valid)) (chosen_dp12))
    (when (and (and (not-chosen_dp12) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_dp12) (num-subs_l5)) (valid)) (not (not-chosen_dp12)))
    (when (and (and (not-chosen_dp12) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_dp12) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F1_L6_L5
  :effect (and
    (when (and (and (not-chosen_e2f1) (num-subs_l5)) (valid)) (chosen_e2f1))
    (when (and (and (not-chosen_e2f1) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_e2f1) (num-subs_l5)) (valid)) (not (not-chosen_e2f1)))
    (when (and (and (not-chosen_e2f1) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_e2f1) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13-DP12_L6_L5
  :effect (and
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l5)) (valid)) (chosen_e2f13-dp12))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l5)) (valid)) (not (not-chosen_e2f13-dp12)))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_e2f13-dp12) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13P1-DP12P1_L6_L5
  :effect (and
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l5)) (valid)) (chosen_e2f13p1-dp12p1))
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l5)) (valid)) (not (not-chosen_e2f13p1-dp12p1)))
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F2_L6_L5
  :effect (and
    (when (and (and (not-chosen_e2f2) (num-subs_l5)) (valid)) (chosen_e2f2))
    (when (and (and (not-chosen_e2f2) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_e2f2) (num-subs_l5)) (valid)) (not (not-chosen_e2f2)))
    (when (and (and (not-chosen_e2f2) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_e2f2) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5_L6_L5
  :effect (and
    (when (and (and (not-chosen_e2f5) (num-subs_l5)) (valid)) (chosen_e2f5))
    (when (and (and (not-chosen_e2f5) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_e2f5) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (and (and (not-chosen_e2f5) (num-subs_l5)) (valid)) (not (not-chosen_e2f5)))
    (when (not (and (and (not-chosen_e2f5) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5-DP12P1_L6_L5
  :effect (and
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l5)) (valid)) (chosen_e2f5-dp12p1))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l5)) (valid)) (not (not-chosen_e2f5-dp12p1)))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_e2f5-dp12p1) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F6_L6_L5
  :effect (and
    (when (and (and (not-chosen_e2f6) (num-subs_l5)) (valid)) (chosen_e2f6))
    (when (and (and (not-chosen_e2f6) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_e2f6) (num-subs_l5)) (valid)) (not (not-chosen_e2f6)))
    (when (and (and (not-chosen_e2f6) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_e2f6) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GE2_L6_L5
  :effect (and
    (when (and (and (not-chosen_ge2) (num-subs_l5)) (valid)) (chosen_ge2))
    (when (and (and (not-chosen_ge2) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_ge2) (num-subs_l5)) (valid)) (not (not-chosen_ge2)))
    (when (and (and (not-chosen_ge2) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_ge2) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GERCC1_L6_L5
  :effect (and
    (when (and (and (not-chosen_gercc1) (num-subs_l5)) (valid)) (chosen_gercc1))
    (when (and (and (not-chosen_gercc1) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_gercc1) (num-subs_l5)) (valid)) (not (not-chosen_gercc1)))
    (when (and (and (not-chosen_gercc1) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_gercc1) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_HDAC1-PRBP1-E2F4-DP12_L6_L5
  :effect (and
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l5)) (valid)) (chosen_hdac1-prbp1-e2f4-dp12))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l5)) (valid)) (not (not-chosen_hdac1-prbp1-e2f4-dp12)))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_JUN_L6_L5
  :effect (and
    (when (and (and (not-chosen_jun) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_jun) (num-subs_l5)) (valid)) (chosen_jun))
    (when (and (and (not-chosen_jun) (num-subs_l5)) (valid)) (not (not-chosen_jun)))
    (when (and (and (not-chosen_jun) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_jun) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P130_L6_L5
  :effect (and
    (when (and (and (not-chosen_p130) (num-subs_l5)) (valid)) (chosen_p130))
    (when (and (and (not-chosen_p130) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_p130) (num-subs_l5)) (valid)) (not (not-chosen_p130)))
    (when (and (and (not-chosen_p130) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_p130) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P16_L6_L5
  :effect (and
    (when (and (and (not-chosen_p16) (num-subs_l5)) (valid)) (chosen_p16))
    (when (and (and (not-chosen_p16) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_p16) (num-subs_l5)) (valid)) (not (not-chosen_p16)))
    (when (and (and (not-chosen_p16) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_p16) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P53_L6_L5
  :effect (and
    (when (and (and (not-chosen_p53) (num-subs_l5)) (valid)) (chosen_p53))
    (when (and (and (not-chosen_p53) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_p53) (num-subs_l5)) (valid)) (not (not-chosen_p53)))
    (when (and (and (not-chosen_p53) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_p53) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PCNA_L6_L5
  :effect (and
    (when (and (and (not-chosen_pcna) (num-subs_l5)) (valid)) (chosen_pcna))
    (when (and (and (not-chosen_pcna) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_pcna) (num-subs_l5)) (valid)) (not (not-chosen_pcna)))
    (when (and (and (not-chosen_pcna) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (not (and (and (not-chosen_pcna) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_SP1_L6_L5
  :effect (and
    (when (and (and (not-chosen_sp1) (num-subs_l5)) (valid)) (num-subs_l6))
    (when (and (and (not-chosen_sp1) (num-subs_l5)) (valid)) (chosen_sp1))
    (when (and (and (not-chosen_sp1) (num-subs_l5)) (valid)) (not (num-subs_l5)))
    (when (and (and (not-chosen_sp1) (num-subs_l5)) (valid)) (not (not-chosen_sp1)))
    (when (not (and (and (not-chosen_sp1) (num-subs_l5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK1P1P2_L5_L4
  :effect (and
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l4)) (valid)) (chosen_cdk1p1p2))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l4)) (valid)) (not (not-chosen_cdk1p1p2)))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_cdk1p1p2) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2_L5_L4
  :effect (and
    (when (and (and (not-chosen_cdk2) (num-subs_l4)) (valid)) (chosen_cdk2))
    (when (and (and (not-chosen_cdk2) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_cdk2) (num-subs_l4)) (valid)) (not (not-chosen_cdk2)))
    (when (and (and (not-chosen_cdk2) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_cdk2) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2P1_L5_L4
  :effect (and
    (when (and (and (num-subs_l4) (not-chosen_cdk2p1)) (valid)) (chosen_cdk2p1))
    (when (and (and (num-subs_l4) (not-chosen_cdk2p1)) (valid)) (num-subs_l5))
    (when (and (and (num-subs_l4) (not-chosen_cdk2p1)) (valid)) (not (num-subs_l4)))
    (when (and (and (num-subs_l4) (not-chosen_cdk2p1)) (valid)) (not (not-chosen_cdk2p1)))
    (when (not (and (and (num-subs_l4) (not-chosen_cdk2p1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK46P1_L5_L4
  :effect (and
    (when (and (and (not-chosen_cdk46p1) (num-subs_l4)) (valid)) (chosen_cdk46p1))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l4)) (valid)) (not (not-chosen_cdk46p1)))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_cdk46p1) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CKS1_L5_L4
  :effect (and
    (when (and (and (not-chosen_cks1) (num-subs_l4)) (valid)) (chosen_cks1))
    (when (and (and (not-chosen_cks1) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_cks1) (num-subs_l4)) (valid)) (not (not-chosen_cks1)))
    (when (and (and (not-chosen_cks1) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_cks1) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_DP12_L5_L4
  :effect (and
    (when (and (and (num-subs_l4) (not-chosen_dp12)) (valid)) (chosen_dp12))
    (when (and (and (num-subs_l4) (not-chosen_dp12)) (valid)) (num-subs_l5))
    (when (and (and (num-subs_l4) (not-chosen_dp12)) (valid)) (not (num-subs_l4)))
    (when (and (and (num-subs_l4) (not-chosen_dp12)) (valid)) (not (not-chosen_dp12)))
    (when (not (and (and (num-subs_l4) (not-chosen_dp12)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F1_L5_L4
  :effect (and
    (when (and (and (not-chosen_e2f1) (num-subs_l4)) (valid)) (chosen_e2f1))
    (when (and (and (not-chosen_e2f1) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_e2f1) (num-subs_l4)) (valid)) (not (not-chosen_e2f1)))
    (when (and (and (not-chosen_e2f1) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_e2f1) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13-DP12_L5_L4
  :effect (and
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l4)) (valid)) (chosen_e2f13-dp12))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l4)) (valid)) (not (not-chosen_e2f13-dp12)))
    (when (not (and (and (not-chosen_e2f13-dp12) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13P1-DP12P1_L5_L4
  :effect (and
    (when (and (and (num-subs_l4) (not-chosen_e2f13p1-dp12p1)) (valid)) (chosen_e2f13p1-dp12p1))
    (when (and (and (num-subs_l4) (not-chosen_e2f13p1-dp12p1)) (valid)) (num-subs_l5))
    (when (and (and (num-subs_l4) (not-chosen_e2f13p1-dp12p1)) (valid)) (not (num-subs_l4)))
    (when (and (and (num-subs_l4) (not-chosen_e2f13p1-dp12p1)) (valid)) (not (not-chosen_e2f13p1-dp12p1)))
    (when (not (and (and (num-subs_l4) (not-chosen_e2f13p1-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F2_L5_L4
  :effect (and
    (when (and (and (not-chosen_e2f2) (num-subs_l4)) (valid)) (chosen_e2f2))
    (when (and (and (not-chosen_e2f2) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_e2f2) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (and (and (not-chosen_e2f2) (num-subs_l4)) (valid)) (not (not-chosen_e2f2)))
    (when (not (and (and (not-chosen_e2f2) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5_L5_L4
  :effect (and
    (when (and (and (num-subs_l4) (not-chosen_e2f5)) (valid)) (chosen_e2f5))
    (when (and (and (num-subs_l4) (not-chosen_e2f5)) (valid)) (num-subs_l5))
    (when (and (and (num-subs_l4) (not-chosen_e2f5)) (valid)) (not (num-subs_l4)))
    (when (and (and (num-subs_l4) (not-chosen_e2f5)) (valid)) (not (not-chosen_e2f5)))
    (when (not (and (and (num-subs_l4) (not-chosen_e2f5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5-DP12P1_L5_L4
  :effect (and
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l4)) (valid)) (chosen_e2f5-dp12p1))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l4)) (valid)) (not (not-chosen_e2f5-dp12p1)))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_e2f5-dp12p1) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F6_L5_L4
  :effect (and
    (when (and (and (not-chosen_e2f6) (num-subs_l4)) (valid)) (chosen_e2f6))
    (when (and (and (not-chosen_e2f6) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_e2f6) (num-subs_l4)) (valid)) (not (not-chosen_e2f6)))
    (when (and (and (not-chosen_e2f6) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_e2f6) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GE2_L5_L4
  :effect (and
    (when (and (and (not-chosen_ge2) (num-subs_l4)) (valid)) (chosen_ge2))
    (when (and (and (not-chosen_ge2) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_ge2) (num-subs_l4)) (valid)) (not (not-chosen_ge2)))
    (when (and (and (not-chosen_ge2) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_ge2) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GERCC1_L5_L4
  :effect (and
    (when (and (and (num-subs_l4) (not-chosen_gercc1)) (valid)) (chosen_gercc1))
    (when (and (and (num-subs_l4) (not-chosen_gercc1)) (valid)) (num-subs_l5))
    (when (and (and (num-subs_l4) (not-chosen_gercc1)) (valid)) (not (num-subs_l4)))
    (when (and (and (num-subs_l4) (not-chosen_gercc1)) (valid)) (not (not-chosen_gercc1)))
    (when (not (and (and (num-subs_l4) (not-chosen_gercc1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_HDAC1-PRBP1-E2F4-DP12_L5_L4
  :effect (and
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l4)) (valid)) (chosen_hdac1-prbp1-e2f4-dp12))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l4)) (valid)) (not (not-chosen_hdac1-prbp1-e2f4-dp12)))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_JUN_L5_L4
  :effect (and
    (when (and (and (not-chosen_jun) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_jun) (num-subs_l4)) (valid)) (chosen_jun))
    (when (and (and (not-chosen_jun) (num-subs_l4)) (valid)) (not (not-chosen_jun)))
    (when (and (and (not-chosen_jun) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_jun) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P130_L5_L4
  :effect (and
    (when (and (and (num-subs_l4) (not-chosen_p130)) (valid)) (chosen_p130))
    (when (and (and (num-subs_l4) (not-chosen_p130)) (valid)) (num-subs_l5))
    (when (and (and (num-subs_l4) (not-chosen_p130)) (valid)) (not (num-subs_l4)))
    (when (and (and (num-subs_l4) (not-chosen_p130)) (valid)) (not (not-chosen_p130)))
    (when (not (and (and (num-subs_l4) (not-chosen_p130)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P16_L5_L4
  :effect (and
    (when (and (and (not-chosen_p16) (num-subs_l4)) (valid)) (chosen_p16))
    (when (and (and (not-chosen_p16) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_p16) (num-subs_l4)) (valid)) (not (not-chosen_p16)))
    (when (and (and (not-chosen_p16) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_p16) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P53_L5_L4
  :effect (and
    (when (and (and (not-chosen_p53) (num-subs_l4)) (valid)) (chosen_p53))
    (when (and (and (not-chosen_p53) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_p53) (num-subs_l4)) (valid)) (not (not-chosen_p53)))
    (when (and (and (not-chosen_p53) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_p53) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PCNA_L5_L4
  :effect (and
    (when (and (and (not-chosen_pcna) (num-subs_l4)) (valid)) (chosen_pcna))
    (when (and (and (not-chosen_pcna) (num-subs_l4)) (valid)) (num-subs_l5))
    (when (and (and (not-chosen_pcna) (num-subs_l4)) (valid)) (not (not-chosen_pcna)))
    (when (and (and (not-chosen_pcna) (num-subs_l4)) (valid)) (not (num-subs_l4)))
    (when (not (and (and (not-chosen_pcna) (num-subs_l4)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_SP1_L5_L4
  :effect (and
    (when (and (and (num-subs_l4) (not-chosen_sp1)) (valid)) (num-subs_l5))
    (when (and (and (num-subs_l4) (not-chosen_sp1)) (valid)) (chosen_sp1))
    (when (and (and (num-subs_l4) (not-chosen_sp1)) (valid)) (not (num-subs_l4)))
    (when (and (and (num-subs_l4) (not-chosen_sp1)) (valid)) (not (not-chosen_sp1)))
    (when (not (and (and (num-subs_l4) (not-chosen_sp1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK1P1P2_L4_L3
  :effect (and
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l3)) (valid)) (chosen_cdk1p1p2))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l3)) (valid)) (not (not-chosen_cdk1p1p2)))
    (when (and (and (not-chosen_cdk1p1p2) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_cdk1p1p2) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2_L4_L3
  :effect (and
    (when (and (and (not-chosen_cdk2) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_cdk2) (num-subs_l3)) (valid)) (chosen_cdk2))
    (when (and (and (not-chosen_cdk2) (num-subs_l3)) (valid)) (not (not-chosen_cdk2)))
    (when (and (and (not-chosen_cdk2) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_cdk2) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2P1_L4_L3
  :effect (and
    (when (and (and (not-chosen_cdk2p1) (num-subs_l3)) (valid)) (chosen_cdk2p1))
    (when (and (and (not-chosen_cdk2p1) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_cdk2p1) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (and (and (not-chosen_cdk2p1) (num-subs_l3)) (valid)) (not (not-chosen_cdk2p1)))
    (when (not (and (and (not-chosen_cdk2p1) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK46P1_L4_L3
  :effect (and
    (when (and (and (not-chosen_cdk46p1) (num-subs_l3)) (valid)) (chosen_cdk46p1))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l3)) (valid)) (not (not-chosen_cdk46p1)))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_cdk46p1) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CKS1_L4_L3
  :effect (and
    (when (and (and (not-chosen_cks1) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_cks1) (num-subs_l3)) (valid)) (chosen_cks1))
    (when (and (and (not-chosen_cks1) (num-subs_l3)) (valid)) (not (not-chosen_cks1)))
    (when (and (and (not-chosen_cks1) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_cks1) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_DP12_L4_L3
  :effect (and
    (when (and (and (not-chosen_dp12) (num-subs_l3)) (valid)) (chosen_dp12))
    (when (and (and (not-chosen_dp12) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_dp12) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (and (and (not-chosen_dp12) (num-subs_l3)) (valid)) (not (not-chosen_dp12)))
    (when (not (and (and (not-chosen_dp12) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F1_L4_L3
  :effect (and
    (when (and (and (not-chosen_e2f1) (num-subs_l3)) (valid)) (chosen_e2f1))
    (when (and (and (not-chosen_e2f1) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_e2f1) (num-subs_l3)) (valid)) (not (not-chosen_e2f1)))
    (when (and (and (not-chosen_e2f1) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_e2f1) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13-DP12_L4_L3
  :effect (and
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l3)) (valid)) (chosen_e2f13-dp12))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l3)) (valid)) (not (not-chosen_e2f13-dp12)))
    (when (and (and (not-chosen_e2f13-dp12) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_e2f13-dp12) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13P1-DP12P1_L4_L3
  :effect (and
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l3)) (valid)) (chosen_e2f13p1-dp12p1))
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l3)) (valid)) (not (not-chosen_e2f13p1-dp12p1)))
    (when (not (and (and (not-chosen_e2f13p1-dp12p1) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F2_L4_L3
  :effect (and
    (when (and (and (not-chosen_e2f2) (num-subs_l3)) (valid)) (chosen_e2f2))
    (when (and (and (not-chosen_e2f2) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_e2f2) (num-subs_l3)) (valid)) (not (not-chosen_e2f2)))
    (when (and (and (not-chosen_e2f2) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_e2f2) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5_L4_L3
  :effect (and
    (when (and (and (num-subs_l3) (not-chosen_e2f5)) (valid)) (chosen_e2f5))
    (when (and (and (num-subs_l3) (not-chosen_e2f5)) (valid)) (num-subs_l4))
    (when (and (and (num-subs_l3) (not-chosen_e2f5)) (valid)) (not (num-subs_l3)))
    (when (and (and (num-subs_l3) (not-chosen_e2f5)) (valid)) (not (not-chosen_e2f5)))
    (when (not (and (and (num-subs_l3) (not-chosen_e2f5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5-DP12P1_L4_L3
  :effect (and
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l3)) (valid)) (chosen_e2f5-dp12p1))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l3)) (valid)) (not (not-chosen_e2f5-dp12p1)))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_e2f5-dp12p1) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F6_L4_L3
  :effect (and
    (when (and (and (not-chosen_e2f6) (num-subs_l3)) (valid)) (chosen_e2f6))
    (when (and (and (not-chosen_e2f6) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_e2f6) (num-subs_l3)) (valid)) (not (not-chosen_e2f6)))
    (when (and (and (not-chosen_e2f6) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_e2f6) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GE2_L4_L3
  :effect (and
    (when (and (and (not-chosen_ge2) (num-subs_l3)) (valid)) (chosen_ge2))
    (when (and (and (not-chosen_ge2) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_ge2) (num-subs_l3)) (valid)) (not (not-chosen_ge2)))
    (when (and (and (not-chosen_ge2) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_ge2) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GERCC1_L4_L3
  :effect (and
    (when (and (and (num-subs_l3) (not-chosen_gercc1)) (valid)) (chosen_gercc1))
    (when (and (and (num-subs_l3) (not-chosen_gercc1)) (valid)) (num-subs_l4))
    (when (and (and (num-subs_l3) (not-chosen_gercc1)) (valid)) (not (num-subs_l3)))
    (when (and (and (num-subs_l3) (not-chosen_gercc1)) (valid)) (not (not-chosen_gercc1)))
    (when (not (and (and (num-subs_l3) (not-chosen_gercc1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_HDAC1-PRBP1-E2F4-DP12_L4_L3
  :effect (and
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l3)) (valid)) (chosen_hdac1-prbp1-e2f4-dp12))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l3)) (valid)) (not (not-chosen_hdac1-prbp1-e2f4-dp12)))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_JUN_L4_L3
  :effect (and
    (when (and (and (not-chosen_jun) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_jun) (num-subs_l3)) (valid)) (chosen_jun))
    (when (and (and (not-chosen_jun) (num-subs_l3)) (valid)) (not (not-chosen_jun)))
    (when (and (and (not-chosen_jun) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_jun) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P130_L4_L3
  :effect (and
    (when (and (and (not-chosen_p130) (num-subs_l3)) (valid)) (chosen_p130))
    (when (and (and (not-chosen_p130) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_p130) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (and (and (not-chosen_p130) (num-subs_l3)) (valid)) (not (not-chosen_p130)))
    (when (not (and (and (not-chosen_p130) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P16_L4_L3
  :effect (and
    (when (and (and (not-chosen_p16) (num-subs_l3)) (valid)) (chosen_p16))
    (when (and (and (not-chosen_p16) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_p16) (num-subs_l3)) (valid)) (not (not-chosen_p16)))
    (when (and (and (not-chosen_p16) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_p16) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P53_L4_L3
  :effect (and
    (when (and (and (not-chosen_p53) (num-subs_l3)) (valid)) (chosen_p53))
    (when (and (and (not-chosen_p53) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_p53) (num-subs_l3)) (valid)) (not (not-chosen_p53)))
    (when (and (and (not-chosen_p53) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_p53) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PCNA_L4_L3
  :effect (and
    (when (and (and (not-chosen_pcna) (num-subs_l3)) (valid)) (chosen_pcna))
    (when (and (and (not-chosen_pcna) (num-subs_l3)) (valid)) (num-subs_l4))
    (when (and (and (not-chosen_pcna) (num-subs_l3)) (valid)) (not (not-chosen_pcna)))
    (when (and (and (not-chosen_pcna) (num-subs_l3)) (valid)) (not (num-subs_l3)))
    (when (not (and (and (not-chosen_pcna) (num-subs_l3)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_SP1_L4_L3
  :effect (and
    (when (and (and (num-subs_l3) (not-chosen_sp1)) (valid)) (num-subs_l4))
    (when (and (and (num-subs_l3) (not-chosen_sp1)) (valid)) (chosen_sp1))
    (when (and (and (num-subs_l3) (not-chosen_sp1)) (valid)) (not (num-subs_l3)))
    (when (and (and (num-subs_l3) (not-chosen_sp1)) (valid)) (not (not-chosen_sp1)))
    (when (not (and (and (num-subs_l3) (not-chosen_sp1)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-5-1
  :effect (and
    (when (and (and (available_pcna-p21-cdk2p1-cyce)) (valid)) (goal5_))
    (when (not (and (and (available_pcna-p21-cdk2p1-cyce)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-3-1
  :effect (and
    (when (and (and (available_pcna-p21-cdk2-cyce)) (valid)) (goal3_))
    (when (not (and (and (available_pcna-p21-cdk2-cyce)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-2-1
  :effect (and
    (when (and (and (available_p21-cdk2p1-cycep1)) (valid)) (goal2_))
    (when (not (and (and (available_p21-cdk2p1-cycep1)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-1-1
  :effect (and
    (when (and (and (available_pcna-p21-cdk2p1-cycep1)) (valid)) (goal1_))
    (when (not (and (and (available_pcna-p21-cdk2p1-cycep1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P21_CDK2-CYCA_P21-CDK2-CYCA
  :effect (and
    (when (and (and (available_cdk2-cyca) (available_p21)) (valid) (unlistedeffect_ASSOCIATE_P21_CDK2-CYCA_P21-CDK2-CYCA_available_p21-cdk2-cyca)) (available_p21-cdk2-cyca))
    (when (and (and (available_cdk2-cyca) (available_p21)) (valid) (possclob_ASSOCIATE_P21_CDK2-CYCA_P21-CDK2-CYCA_available_cdk2-cyca)) (not (available_cdk2-cyca)))
    (when (and (and (available_cdk2-cyca) (available_p21)) (valid) (possclob_ASSOCIATE_P21_CDK2-CYCA_P21-CDK2-CYCA_available_p21)) (not (available_p21)))
    (when (not (and (and (available_cdk2-cyca) (available_p21)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P21_CDK2-CYCEP1_P21-CDK2-CYCEP1
  :effect (and
    (when (and (and (available_cdk2-cycep1) (available_p21)) (valid)) (available_p21-cdk2-cycep1))
    (when (and (and (available_cdk2-cycep1) (available_p21)) (valid)) (not (available_cdk2-cycep1)))
    (when (and (and (available_cdk2-cycep1) (available_p21)) (valid)) (not (available_p21)))
    (when (not (and (and (available_cdk2-cycep1) (available_p21)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE
  :effect (and
    (when (and (and (available_p21) (available_cdk2-cyce)) (valid) (unlistedeffect_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_p21-cdk2-cyce)) (available_p21-cdk2-cyce))
    (when (and (and (available_p21) (available_cdk2-cyce)) (valid) (possclob_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_p21)) (not (available_p21)))
    (when (and (and (available_p21) (available_cdk2-cyce)) (valid) (possclob_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_cdk2-cyce)) (not (available_cdk2-cyce)))
    (when (not (and (and (available_p21) (available_cdk2-cyce)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P21_CDK2P1-CYCA_P21-CDK2P1-CYCA
  :effect (and
    (when (and (and (available_p21) (available_cdk2p1-cyca)) (valid) (unlistedeffect_ASSOCIATE_P21_CDK2P1-CYCA_P21-CDK2P1-CYCA_available_p21-cdk2p1-cyca)) (available_p21-cdk2p1-cyca))
    (when (and (and (available_p21) (available_cdk2p1-cyca)) (valid) (possclob_ASSOCIATE_P21_CDK2P1-CYCA_P21-CDK2P1-CYCA_available_cdk2p1-cyca)) (not (available_cdk2p1-cyca)))
    (when (and (and (available_p21) (available_cdk2p1-cyca)) (valid) (possclob_ASSOCIATE_P21_CDK2P1-CYCA_P21-CDK2P1-CYCA_available_p21)) (not (available_p21)))
    (when (not (and (and (available_p21) (available_cdk2p1-cyca)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P21_CDK2P1-CYCEP1_P21-CDK2P1-CYCEP1
  :effect (and
    (when (and (and (available_p21) (available_cdk2p1-cycep1)) (valid) (unlistedeffect_ASSOCIATE_P21_CDK2P1-CYCEP1_P21-CDK2P1-CYCEP1_available_p21-cdk2p1-cycep1)) (available_p21-cdk2p1-cycep1))
    (when (and (and (available_p21) (available_cdk2p1-cycep1)) (valid) (possclob_ASSOCIATE_P21_CDK2P1-CYCEP1_P21-CDK2P1-CYCEP1_available_p21)) (not (available_p21)))
    (when (and (and (available_p21) (available_cdk2p1-cycep1)) (valid) (possclob_ASSOCIATE_P21_CDK2P1-CYCEP1_P21-CDK2P1-CYCEP1_available_cdk2p1-cycep1)) (not (available_cdk2p1-cycep1)))
    (when (not (and (and (available_p21) (available_cdk2p1-cycep1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P21_CDK2P1-CYCE_P21-CDK2P1-CYCE
  :effect (and
    (when (and (and (available_p21) (available_cdk2p1-cyce)) (valid)) (available_p21-cdk2p1-cyce))
    (when (and (and (available_p21) (available_cdk2p1-cyce)) (valid)) (not (available_p21)))
    (when (and (and (available_p21) (available_cdk2p1-cyce)) (valid)) (not (available_cdk2p1-cyce)))
    (when (not (and (and (available_p21) (available_cdk2p1-cyce)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P21_CDK46P1-CYCDP1_P21-CDK46P1-CYCDP1
  :effect (and
    (when (and (and (available_p21) (available_cdk46p1-cycdp1)) (valid) (unlistedeffect_ASSOCIATE_P21_CDK46P1-CYCDP1_P21-CDK46P1-CYCDP1_available_p21-cdk46p1-cycdp1)) (available_p21-cdk46p1-cycdp1))
    (when (and (and (available_p21) (available_cdk46p1-cycdp1)) (valid) (possclob_ASSOCIATE_P21_CDK46P1-CYCDP1_P21-CDK46P1-CYCDP1_available_p21)) (not (available_p21)))
    (when (and (and (available_p21) (available_cdk46p1-cycdp1)) (valid) (possclob_ASSOCIATE_P21_CDK46P1-CYCDP1_P21-CDK46P1-CYCDP1_available_cdk46p1-cycdp1)) (not (available_cdk46p1-cycdp1)))
    (when (not (and (and (available_p21) (available_cdk46p1-cycdp1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD
  :effect (and
    (when (and (and (available_p21) (available_cdk46p1-cycd)) (valid) (unlistedeffect_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_p21-cdk46p1-cycd)) (available_p21-cdk46p1-cycd))
    (when (and (and (available_p21) (available_cdk46p1-cycd)) (valid) (possclob_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_p21)) (not (available_p21)))
    (when (and (and (available_p21) (available_cdk46p1-cycd)) (valid) (possclob_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_cdk46p1-cycd)) (not (available_cdk46p1-cycd)))
    (when (not (and (and (available_p21) (available_cdk46p1-cycd)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA-P21_CDK2-CYCA_PCNA-P21-CDK2-CYCA
  :effect (and
    (when (and (and (available_cdk2-cyca) (available_pcna-p21)) (valid) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK2-CYCA_PCNA-P21-CDK2-CYCA_available_pcna-p21-cdk2-cyca)) (available_pcna-p21-cdk2-cyca))
    (when (and (and (available_cdk2-cyca) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK2-CYCA_PCNA-P21-CDK2-CYCA_available_cdk2-cyca)) (not (available_cdk2-cyca)))
    (when (and (and (available_cdk2-cyca) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK2-CYCA_PCNA-P21-CDK2-CYCA_available_pcna-p21)) (not (available_pcna-p21)))
    (when (not (and (and (available_cdk2-cyca) (available_pcna-p21)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA-P21_CDK2-CYCEP1_PCNA-P21-CDK2-CYCEP1
  :effect (and
    (when (and (and (available_cdk2-cycep1) (available_pcna-p21)) (valid)) (available_pcna-p21-cdk2-cycep1))
    (when (and (and (available_cdk2-cycep1) (available_pcna-p21)) (valid)) (not (available_cdk2-cycep1)))
    (when (and (and (available_cdk2-cycep1) (available_pcna-p21)) (valid)) (not (available_pcna-p21)))
    (when (not (and (and (available_cdk2-cycep1) (available_pcna-p21)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA-P21_CDK2-CYCE_PCNA-P21-CDK2-CYCE
  :effect (and
    (when (and (and (available_cdk2-cyce) (available_pcna-p21)) (valid) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK2-CYCE_PCNA-P21-CDK2-CYCE_available_pcna-p21-cdk2-cyce)) (available_pcna-p21-cdk2-cyce))
    (when (and (and (available_cdk2-cyce) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK2-CYCE_PCNA-P21-CDK2-CYCE_available_cdk2-cyce)) (not (available_cdk2-cyce)))
    (when (and (and (available_cdk2-cyce) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK2-CYCE_PCNA-P21-CDK2-CYCE_available_pcna-p21)) (not (available_pcna-p21)))
    (when (not (and (and (available_cdk2-cyce) (available_pcna-p21)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA-P21_CDK2P1-CYCA_PCNA-P21-CDK2P1-CYCA
  :effect (and
    (when (and (and (available_cdk2p1-cyca) (available_pcna-p21)) (valid) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK2P1-CYCA_PCNA-P21-CDK2P1-CYCA_available_pcna-p21-cdk2p1-cyca)) (available_pcna-p21-cdk2p1-cyca))
    (when (and (and (available_cdk2p1-cyca) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCA_PCNA-P21-CDK2P1-CYCA_available_cdk2p1-cyca)) (not (available_cdk2p1-cyca)))
    (when (and (and (available_cdk2p1-cyca) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCA_PCNA-P21-CDK2P1-CYCA_available_pcna-p21)) (not (available_pcna-p21)))
    (when (not (and (and (available_cdk2p1-cyca) (available_pcna-p21)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA-P21_CDK2P1-CYCEP1_PCNA-P21-CDK2P1-CYCEP1
  :effect (and
    (when (and (and (available_cdk2p1-cycep1) (available_pcna-p21)) (valid) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK2P1-CYCEP1_PCNA-P21-CDK2P1-CYCEP1_available_pcna-p21-cdk2p1-cycep1)) (available_pcna-p21-cdk2p1-cycep1))
    (when (and (and (available_cdk2p1-cycep1) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCEP1_PCNA-P21-CDK2P1-CYCEP1_available_cdk2p1-cycep1)) (not (available_cdk2p1-cycep1)))
    (when (and (and (available_cdk2p1-cycep1) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCEP1_PCNA-P21-CDK2P1-CYCEP1_available_pcna-p21)) (not (available_pcna-p21)))
    (when (not (and (and (available_cdk2p1-cycep1) (available_pcna-p21)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA-P21_CDK2P1-CYCE_PCNA-P21-CDK2P1-CYCE
  :effect (and
    (when (and (and (available_cdk2p1-cyce) (available_pcna-p21)) (valid)) (available_pcna-p21-cdk2p1-cyce))
    (when (and (and (available_cdk2p1-cyce) (available_pcna-p21)) (valid)) (not (available_cdk2p1-cyce)))
    (when (and (and (available_cdk2p1-cyce) (available_pcna-p21)) (valid)) (not (available_pcna-p21)))
    (when (not (and (and (available_cdk2p1-cyce) (available_pcna-p21)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA-P21_CDK46P1-CYCDP1_PCNA-P21-CDK46P1-CYCDP1
  :effect (and
    (when (and (and (available_cdk46p1-cycdp1) (available_pcna-p21)) (valid) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK46P1-CYCDP1_PCNA-P21-CDK46P1-CYCDP1_available_pcna-p21-cdk46p1-cycdp1)) (available_pcna-p21-cdk46p1-cycdp1))
    (when (and (and (available_cdk46p1-cycdp1) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK46P1-CYCDP1_PCNA-P21-CDK46P1-CYCDP1_available_cdk46p1-cycdp1)) (not (available_cdk46p1-cycdp1)))
    (when (and (and (available_cdk46p1-cycdp1) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK46P1-CYCDP1_PCNA-P21-CDK46P1-CYCDP1_available_pcna-p21)) (not (available_pcna-p21)))
    (when (not (and (and (available_cdk46p1-cycdp1) (available_pcna-p21)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA-P21_CDK46P1-CYCD_PCNA-P21-CDK46P1-CYCD
  :effect (and
    (when (and (and (available_cdk46p1-cycd) (available_pcna-p21)) (valid) (unlistedeffect_ASSOCIATE_PCNA-P21_CDK46P1-CYCD_PCNA-P21-CDK46P1-CYCD_available_pcna-p21-cdk46p1-cycd)) (available_pcna-p21-cdk46p1-cycd))
    (when (and (and (available_cdk46p1-cycd) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK46P1-CYCD_PCNA-P21-CDK46P1-CYCD_available_cdk46p1-cycd)) (not (available_cdk46p1-cycd)))
    (when (and (and (available_cdk46p1-cycd) (available_pcna-p21)) (valid) (possclob_ASSOCIATE_PCNA-P21_CDK46P1-CYCD_PCNA-P21-CDK46P1-CYCD_available_pcna-p21)) (not (available_pcna-p21)))
    (when (not (and (and (available_cdk46p1-cycd) (available_pcna-p21)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK1P1P2_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_cdk1p1p2)) (valid)) (chosen_cdk1p1p2))
    (when (and (and (num-subs_l2) (not-chosen_cdk1p1p2)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_cdk1p1p2)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_cdk1p1p2)) (valid)) (not (not-chosen_cdk1p1p2)))
    (when (not (and (and (num-subs_l2) (not-chosen_cdk1p1p2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_cdk2)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_cdk2)) (valid)) (chosen_cdk2))
    (when (and (and (num-subs_l2) (not-chosen_cdk2)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_cdk2)) (valid)) (not (not-chosen_cdk2)))
    (when (not (and (and (num-subs_l2) (not-chosen_cdk2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2P1_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_cdk2p1)) (valid)) (chosen_cdk2p1))
    (when (and (and (num-subs_l2) (not-chosen_cdk2p1)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_cdk2p1)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_cdk2p1)) (valid)) (not (not-chosen_cdk2p1)))
    (when (not (and (and (num-subs_l2) (not-chosen_cdk2p1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK46P1_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_cdk46p1)) (valid)) (chosen_cdk46p1))
    (when (and (and (num-subs_l2) (not-chosen_cdk46p1)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_cdk46p1)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_cdk46p1)) (valid)) (not (not-chosen_cdk46p1)))
    (when (not (and (and (num-subs_l2) (not-chosen_cdk46p1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CKS1_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_cks1)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_cks1)) (valid)) (chosen_cks1))
    (when (and (and (num-subs_l2) (not-chosen_cks1)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_cks1)) (valid)) (not (not-chosen_cks1)))
    (when (not (and (and (num-subs_l2) (not-chosen_cks1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_DP12_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_dp12)) (valid)) (chosen_dp12))
    (when (and (and (num-subs_l2) (not-chosen_dp12)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_dp12)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_dp12)) (valid)) (not (not-chosen_dp12)))
    (when (not (and (and (num-subs_l2) (not-chosen_dp12)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F1_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_e2f1)) (valid)) (chosen_e2f1))
    (when (and (and (num-subs_l2) (not-chosen_e2f1)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_e2f1)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_e2f1)) (valid)) (not (not-chosen_e2f1)))
    (when (not (and (and (num-subs_l2) (not-chosen_e2f1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13-DP12_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_e2f13-dp12)) (valid)) (chosen_e2f13-dp12))
    (when (and (and (num-subs_l2) (not-chosen_e2f13-dp12)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_e2f13-dp12)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_e2f13-dp12)) (valid)) (not (not-chosen_e2f13-dp12)))
    (when (not (and (and (num-subs_l2) (not-chosen_e2f13-dp12)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13P1-DP12P1_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_e2f13p1-dp12p1)) (valid)) (chosen_e2f13p1-dp12p1))
    (when (and (and (num-subs_l2) (not-chosen_e2f13p1-dp12p1)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_e2f13p1-dp12p1)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_e2f13p1-dp12p1)) (valid)) (not (not-chosen_e2f13p1-dp12p1)))
    (when (not (and (and (num-subs_l2) (not-chosen_e2f13p1-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F2_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_e2f2)) (valid)) (chosen_e2f2))
    (when (and (and (num-subs_l2) (not-chosen_e2f2)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_e2f2)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_e2f2)) (valid)) (not (not-chosen_e2f2)))
    (when (not (and (and (num-subs_l2) (not-chosen_e2f2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_e2f5)) (valid)) (chosen_e2f5))
    (when (and (and (num-subs_l2) (not-chosen_e2f5)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_e2f5)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_e2f5)) (valid)) (not (not-chosen_e2f5)))
    (when (not (and (and (num-subs_l2) (not-chosen_e2f5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5-DP12P1_L3_L2
  :effect (and
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l2)) (valid)) (chosen_e2f5-dp12p1))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l2)) (valid)) (not (not-chosen_e2f5-dp12p1)))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_e2f5-dp12p1) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F6_L3_L2
  :effect (and
    (when (and (and (not-chosen_e2f6) (num-subs_l2)) (valid)) (chosen_e2f6))
    (when (and (and (not-chosen_e2f6) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_e2f6) (num-subs_l2)) (valid)) (not (not-chosen_e2f6)))
    (when (and (and (not-chosen_e2f6) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_e2f6) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GE2_L3_L2
  :effect (and
    (when (and (and (not-chosen_ge2) (num-subs_l2)) (valid)) (chosen_ge2))
    (when (and (and (not-chosen_ge2) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_ge2) (num-subs_l2)) (valid)) (not (not-chosen_ge2)))
    (when (and (and (not-chosen_ge2) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_ge2) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GERCC1_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_gercc1)) (valid)) (chosen_gercc1))
    (when (and (and (num-subs_l2) (not-chosen_gercc1)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_gercc1)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_gercc1)) (valid)) (not (not-chosen_gercc1)))
    (when (not (and (and (num-subs_l2) (not-chosen_gercc1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_HDAC1-PRBP1-E2F4-DP12_L3_L2
  :effect (and
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l2)) (valid)) (chosen_hdac1-prbp1-e2f4-dp12))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l2)) (valid)) (not (not-chosen_hdac1-prbp1-e2f4-dp12)))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_JUN_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_jun)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_jun)) (valid)) (chosen_jun))
    (when (and (and (num-subs_l2) (not-chosen_jun)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_jun)) (valid)) (not (not-chosen_jun)))
    (when (not (and (and (num-subs_l2) (not-chosen_jun)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P130_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_p130)) (valid)) (chosen_p130))
    (when (and (and (num-subs_l2) (not-chosen_p130)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_p130)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_p130)) (valid)) (not (not-chosen_p130)))
    (when (not (and (and (num-subs_l2) (not-chosen_p130)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P16_L3_L2
  :effect (and
    (when (and (and (not-chosen_p16) (num-subs_l2)) (valid)) (chosen_p16))
    (when (and (and (not-chosen_p16) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_p16) (num-subs_l2)) (valid)) (not (not-chosen_p16)))
    (when (and (and (not-chosen_p16) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_p16) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P53_L3_L2
  :effect (and
    (when (and (and (not-chosen_p53) (num-subs_l2)) (valid)) (chosen_p53))
    (when (and (and (not-chosen_p53) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_p53) (num-subs_l2)) (valid)) (not (not-chosen_p53)))
    (when (and (and (not-chosen_p53) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_p53) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PCNA_L3_L2
  :effect (and
    (when (and (and (not-chosen_pcna) (num-subs_l2)) (valid)) (chosen_pcna))
    (when (and (and (not-chosen_pcna) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_pcna) (num-subs_l2)) (valid)) (not (not-chosen_pcna)))
    (when (and (and (not-chosen_pcna) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_pcna) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_SP1_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_sp1)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_sp1)) (valid)) (chosen_sp1))
    (when (and (and (num-subs_l2) (not-chosen_sp1)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_sp1)) (valid)) (not (not-chosen_sp1)))
    (when (not (and (and (num-subs_l2) (not-chosen_sp1)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-6-1
  :effect (and
    (when (and (and (available_e2f5-dp12-ge2)) (valid)) (goal6_))
    (when (not (and (and (available_e2f5-dp12-ge2)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-5-2
  :effect (and
    (when (and (and (available_sp1-p107p1)) (valid)) (goal5_))
    (when (not (and (and (available_sp1-p107p1)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-4-1
  :effect (and
    (when (and (and (available_pcna-p21)) (valid)) (goal4_))
    (when (not (and (and (available_pcna-p21)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-3-2
  :effect (and
    (when (and (and (available_cdk1p1p2-gadd45)) (valid)) (goal3_))
    (when (not (and (and (available_cdk1p1p2-gadd45)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-2-2
  :effect (and
    (when (and (and (available_sp1-p107)) (valid)) (goal2_))
    (when (not (and (and (available_sp1-p107)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F5-DP12-GE2_C-MYC
  :effect (and
    (when (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_C-MYC_available_e2f5-dp12-ge2))) (valid) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_C-MYC_available_c-myc)) (available_c-myc))
    (when (not (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_C-MYC_available_e2f5-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F5-DP12-GE2_CYCA
  :effect (and
    (when (and (and (available_e2f5-dp12-ge2)) (valid)) (available_cyca))
    (when (and (and (available_e2f5-dp12-ge2)) (valid) (possclob_SYNTHESIZE_E2F5-DP12-GE2_CYCA_available_e2f5-dp12-ge2)) (not (available_e2f5-dp12-ge2)))
    (when (not (and (and (available_e2f5-dp12-ge2)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F5-DP12-GE2_CYCD
  :effect (and
    (when (and (and (available_e2f5-dp12-ge2)) (valid)) (available_cycd))
    (when (and (and (available_e2f5-dp12-ge2)) (valid) (possclob_SYNTHESIZE_E2F5-DP12-GE2_CYCD_available_e2f5-dp12-ge2)) (not (available_e2f5-dp12-ge2)))
    (when (not (and (and (available_e2f5-dp12-ge2)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F5-DP12-GE2_CYCDP1
  :effect (and
    (when (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCDP1_available_e2f5-dp12-ge2))) (valid) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_CYCDP1_available_cycdp1)) (available_cycdp1))
    (when (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCDP1_available_e2f5-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F5-DP12-GE2_CYCDP1_available_e2f5-dp12-ge2)) (not (available_e2f5-dp12-ge2)))
    (when (not (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCDP1_available_e2f5-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F5-DP12-GE2_CYCE
  :effect (and
    (when (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCE_available_e2f5-dp12-ge2))) (valid) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_CYCE_available_cyce)) (available_cyce))
    (when (not (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCE_available_e2f5-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F5-DP12-GE2_CYCEP1
  :effect (and
    (when (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCEP1_available_e2f5-dp12-ge2))) (valid)) (available_cycep1))
    (when (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCEP1_available_e2f5-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F5-DP12-GE2_CYCEP1_available_e2f5-dp12-ge2)) (not (available_e2f5-dp12-ge2)))
    (when (not (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_CYCEP1_available_e2f5-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F5-DP12-GE2_P107
  :effect (and
    (when (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_P107_available_e2f5-dp12-ge2))) (valid) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_P107_available_p107)) (available_p107))
    (when (not (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_P107_available_e2f5-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F5-DP12-GE2_P107P1
  :effect (and
    (when (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_P107P1_available_e2f5-dp12-ge2))) (valid) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_P107P1_available_p107p1)) (available_p107p1))
    (when (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_P107P1_available_e2f5-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F5-DP12-GE2_P107P1_available_e2f5-dp12-ge2)) (not (available_e2f5-dp12-ge2)))
    (when (not (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_P107P1_available_e2f5-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F5-DP12-GE2_P19ARF
  :effect (and
    (when (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_P19ARF_available_e2f5-dp12-ge2))) (valid)) (available_p19arf))
    (when (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_P19ARF_available_e2f5-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F5-DP12-GE2_P19ARF_available_e2f5-dp12-ge2)) (not (available_e2f5-dp12-ge2)))
    (when (not (and (and) (or (available_e2f5-dp12-ge2) (not (openprec_SYNTHESIZE_E2F5-DP12-GE2_P19ARF_available_e2f5-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F5-DP12-GE2_POL
  :effect (and
    (when (and (and (available_e2f5-dp12-ge2)) (valid) (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_POL_available_pol)) (available_pol))
    (when (and (and (available_e2f5-dp12-ge2)) (valid) (possclob_SYNTHESIZE_E2F5-DP12-GE2_POL_available_e2f5-dp12-ge2)) (not (available_e2f5-dp12-ge2)))
    (when (not (and (and (available_e2f5-dp12-ge2)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_JUN-C-FOS-GERCC1_ERCC1
  :effect (and
    (when (and (and) (or (available_jun-c-fos-gercc1) (not (openprec_SYNTHESIZE_JUN-C-FOS-GERCC1_ERCC1_available_jun-c-fos-gercc1))) (valid) (unlistedeffect_SYNTHESIZE_JUN-C-FOS-GERCC1_ERCC1_available_ercc1)) (available_ercc1))
    (when (not (and (and) (or (available_jun-c-fos-gercc1) (not (openprec_SYNTHESIZE_JUN-C-FOS-GERCC1_ERCC1_available_jun-c-fos-gercc1))) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK1P1P2_GADD45_CDK1P1P2-GADD45
  :effect (and
    (when (and (and (available_cdk1p1p2) (available_gadd45)) (valid)) (available_cdk1p1p2-gadd45))
    (when (and (and (available_cdk1p1p2) (available_gadd45)) (valid)) (not (available_cdk1p1p2)))
    (when (and (and (available_cdk1p1p2) (available_gadd45)) (valid)) (not (available_gadd45)))
    (when (not (and (and (available_cdk1p1p2) (available_gadd45)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK2_CYCA_CDK2-CYCA
  :effect (and
    (when (and (and (available_cdk2) (available_cyca)) (valid)) (available_cdk2-cyca))
    (when (and (and (available_cdk2) (available_cyca)) (valid)) (not (available_cdk2)))
    (when (and (and (available_cdk2) (available_cyca)) (valid)) (not (available_cyca)))
    (when (not (and (and (available_cdk2) (available_cyca)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK2_CYCE_CDK2-CYCE
  :effect (and
    (when (and (and (available_cdk2) (available_cyce)) (valid) (unlistedeffect_ASSOCIATE_CDK2_CYCE_CDK2-CYCE_available_cdk2-cyce)) (available_cdk2-cyce))
    (when (and (and (available_cdk2) (available_cyce)) (valid) (possclob_ASSOCIATE_CDK2_CYCE_CDK2-CYCE_available_cdk2)) (not (available_cdk2)))
    (when (and (and (available_cdk2) (available_cyce)) (valid) (possclob_ASSOCIATE_CDK2_CYCE_CDK2-CYCE_available_cyce)) (not (available_cyce)))
    (when (not (and (and (available_cdk2) (available_cyce)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK2_CYCEP1_CDK2-CYCEP1
  :effect (and
    (when (and (and (available_cdk2) (available_cycep1)) (valid) (unlistedeffect_ASSOCIATE_CDK2_CYCEP1_CDK2-CYCEP1_available_cdk2-cycep1)) (available_cdk2-cycep1))
    (when (and (and (available_cdk2) (available_cycep1)) (valid) (possclob_ASSOCIATE_CDK2_CYCEP1_CDK2-CYCEP1_available_cdk2)) (not (available_cdk2)))
    (when (and (and (available_cdk2) (available_cycep1)) (valid) (possclob_ASSOCIATE_CDK2_CYCEP1_CDK2-CYCEP1_available_cycep1)) (not (available_cycep1)))
    (when (not (and (and (available_cdk2) (available_cycep1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK2P1_CYCA_CDK2P1-CYCA
  :effect (and
    (when (and (and (available_cyca) (available_cdk2p1)) (valid) (unlistedeffect_ASSOCIATE_CDK2P1_CYCA_CDK2P1-CYCA_available_cdk2p1-cyca)) (available_cdk2p1-cyca))
    (when (and (and (available_cyca) (available_cdk2p1)) (valid) (possclob_ASSOCIATE_CDK2P1_CYCA_CDK2P1-CYCA_available_cyca)) (not (available_cyca)))
    (when (and (and (available_cyca) (available_cdk2p1)) (valid) (possclob_ASSOCIATE_CDK2P1_CYCA_CDK2P1-CYCA_available_cdk2p1)) (not (available_cdk2p1)))
    (when (not (and (and (available_cyca) (available_cdk2p1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE
  :effect (and
    (when (and (and (available_cdk2p1) (available_cyce)) (valid) (unlistedeffect_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cdk2p1-cyce)) (available_cdk2p1-cyce))
    (when (and (and (available_cdk2p1) (available_cyce)) (valid) (possclob_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cdk2p1)) (not (available_cdk2p1)))
    (when (and (and (available_cdk2p1) (available_cyce)) (valid) (possclob_ASSOCIATE_CDK2P1_CYCE_CDK2P1-CYCE_available_cyce)) (not (available_cyce)))
    (when (not (and (and (available_cdk2p1) (available_cyce)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1
  :effect (and
    (when (and (and (available_cdk2p1) (available_cycep1)) (valid) (unlistedeffect_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cdk2p1-cycep1)) (available_cdk2p1-cycep1))
    (when (and (and (available_cdk2p1) (available_cycep1)) (valid) (possclob_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cdk2p1)) (not (available_cdk2p1)))
    (when (and (and (available_cdk2p1) (available_cycep1)) (valid) (possclob_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cycep1)) (not (available_cycep1)))
    (when (not (and (and (available_cdk2p1) (available_cycep1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD
  :effect (and
    (when (and (and (available_cdk46p1) (available_cycd)) (valid) (unlistedeffect_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cdk46p1-cycd)) (available_cdk46p1-cycd))
    (when (and (and (available_cdk46p1) (available_cycd)) (valid) (possclob_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cdk46p1)) (not (available_cdk46p1)))
    (when (and (and (available_cdk46p1) (available_cycd)) (valid) (possclob_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cycd)) (not (available_cycd)))
    (when (not (and (and (available_cdk46p1) (available_cycd)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1
  :effect (and
    (when (and (and (available_cdk46p1) (available_cycdp1)) (valid) (unlistedeffect_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cdk46p1-cycdp1)) (available_cdk46p1-cycdp1))
    (when (and (and (available_cdk46p1) (available_cycdp1)) (valid) (possclob_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cdk46p1)) (not (available_cdk46p1)))
    (when (and (and (available_cdk46p1) (available_cycdp1)) (valid) (possclob_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cycdp1)) (not (available_cycdp1)))
    (when (not (and (and (available_cdk46p1) (available_cycdp1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_E2F5-DP12_GE2_E2F5-DP12-GE2
  :effect (and
    (when (and (and (available_ge2) (available_e2f5-dp12)) (valid) (unlistedeffect_ASSOCIATE_E2F5-DP12_GE2_E2F5-DP12-GE2_available_e2f5-dp12-ge2)) (available_e2f5-dp12-ge2))
    (when (and (and (available_ge2) (available_e2f5-dp12)) (valid) (possclob_ASSOCIATE_E2F5-DP12_GE2_E2F5-DP12-GE2_available_ge2)) (not (available_ge2)))
    (when (and (and (available_ge2) (available_e2f5-dp12)) (valid) (possclob_ASSOCIATE_E2F5-DP12_GE2_E2F5-DP12-GE2_available_e2f5-dp12)) (not (available_e2f5-dp12)))
    (when (not (and (and (available_ge2) (available_e2f5-dp12)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_E2F6-DP12_GE2_E2F6-DP12-GE2
  :effect (and
    (when (and (and (available_ge2) (available_e2f6-dp12)) (valid) (unlistedeffect_ASSOCIATE_E2F6-DP12_GE2_E2F6-DP12-GE2_available_e2f6-dp12-ge2)) (available_e2f6-dp12-ge2))
    (when (and (and (available_ge2) (available_e2f6-dp12)) (valid) (possclob_ASSOCIATE_E2F6-DP12_GE2_E2F6-DP12-GE2_available_ge2)) (not (available_ge2)))
    (when (and (and (available_ge2) (available_e2f6-dp12)) (valid) (possclob_ASSOCIATE_E2F6-DP12_GE2_E2F6-DP12-GE2_available_e2f6-dp12)) (not (available_e2f6-dp12)))
    (when (not (and (and (available_ge2) (available_e2f6-dp12)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_JUN-C-FOS_GERCC1_JUN-C-FOS-GERCC1
  :effect (and
    (when (and (and (available_gercc1) (available_jun-c-fos)) (valid) (unlistedeffect_ASSOCIATE_JUN-C-FOS_GERCC1_JUN-C-FOS-GERCC1_available_jun-c-fos-gercc1)) (available_jun-c-fos-gercc1))
    (when (and (and (available_gercc1) (available_jun-c-fos)) (valid) (possclob_ASSOCIATE_JUN-C-FOS_GERCC1_JUN-C-FOS-GERCC1_available_gercc1)) (not (available_gercc1)))
    (when (and (and (available_gercc1) (available_jun-c-fos)) (valid) (possclob_ASSOCIATE_JUN-C-FOS_GERCC1_JUN-C-FOS-GERCC1_available_jun-c-fos)) (not (available_jun-c-fos)))
    (when (not (and (and (available_gercc1) (available_jun-c-fos)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_JUN_C-FOS_JUN-C-FOS
  :effect (and
    (when (and (and (available_jun) (available_c-fos)) (valid)) (available_jun-c-fos))
    (when (and (and (available_jun) (available_c-fos)) (valid)) (not (available_jun)))
    (when (and (and (available_jun) (available_c-fos)) (valid)) (not (available_c-fos)))
    (when (not (and (and (available_jun) (available_c-fos)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_MDM2_E2F13-DP12_MDM2-E2F13-DP12
  :effect (and
    (when (and (and (available_mdm2) (available_e2f13-dp12)) (valid) (unlistedeffect_ASSOCIATE_MDM2_E2F13-DP12_MDM2-E2F13-DP12_available_mdm2-e2f13-dp12)) (available_mdm2-e2f13-dp12))
    (when (and (and (available_mdm2) (available_e2f13-dp12)) (valid) (possclob_ASSOCIATE_MDM2_E2F13-DP12_MDM2-E2F13-DP12_available_mdm2)) (not (available_mdm2)))
    (when (and (and (available_mdm2) (available_e2f13-dp12)) (valid) (possclob_ASSOCIATE_MDM2_E2F13-DP12_MDM2-E2F13-DP12_available_e2f13-dp12)) (not (available_e2f13-dp12)))
    (when (not (and (and (available_mdm2) (available_e2f13-dp12)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_MDM2_E2F13P1-DP12P1_MDM2-E2F13P1-DP12P1
  :effect (and
    (when (and (and (available_mdm2) (available_e2f13p1-dp12p1)) (valid) (unlistedeffect_ASSOCIATE_MDM2_E2F13P1-DP12P1_MDM2-E2F13P1-DP12P1_available_mdm2-e2f13p1-dp12p1)) (available_mdm2-e2f13p1-dp12p1))
    (when (and (and (available_mdm2) (available_e2f13p1-dp12p1)) (valid) (possclob_ASSOCIATE_MDM2_E2F13P1-DP12P1_MDM2-E2F13P1-DP12P1_available_mdm2)) (not (available_mdm2)))
    (when (and (and (available_mdm2) (available_e2f13p1-dp12p1)) (valid) (possclob_ASSOCIATE_MDM2_E2F13P1-DP12P1_MDM2-E2F13P1-DP12P1_available_e2f13p1-dp12p1)) (not (available_e2f13p1-dp12p1)))
    (when (not (and (and (available_mdm2) (available_e2f13p1-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P130-E2F5-DP12_GE2_P130-E2F5-DP12-GE2
  :effect (and
    (when (and (and (available_ge2) (available_p130-e2f5-dp12)) (valid) (unlistedeffect_ASSOCIATE_P130-E2F5-DP12_GE2_P130-E2F5-DP12-GE2_available_p130-e2f5-dp12-ge2)) (available_p130-e2f5-dp12-ge2))
    (when (and (and (available_ge2) (available_p130-e2f5-dp12)) (valid) (possclob_ASSOCIATE_P130-E2F5-DP12_GE2_P130-E2F5-DP12-GE2_available_ge2)) (not (available_ge2)))
    (when (and (and (available_ge2) (available_p130-e2f5-dp12)) (valid) (possclob_ASSOCIATE_P130-E2F5-DP12_GE2_P130-E2F5-DP12-GE2_available_p130-e2f5-dp12)) (not (available_p130-e2f5-dp12)))
    (when (not (and (and (available_ge2) (available_p130-e2f5-dp12)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P130_E2F5-DP12_P130-E2F5-DP12
  :effect (and
    (when (and (and (available_e2f5-dp12) (available_p130)) (valid) (unlistedeffect_ASSOCIATE_P130_E2F5-DP12_P130-E2F5-DP12_available_p130-e2f5-dp12)) (available_p130-e2f5-dp12))
    (when (and (and (available_e2f5-dp12) (available_p130)) (valid) (possclob_ASSOCIATE_P130_E2F5-DP12_P130-E2F5-DP12_available_e2f5-dp12)) (not (available_e2f5-dp12)))
    (when (and (and (available_e2f5-dp12) (available_p130)) (valid) (possclob_ASSOCIATE_P130_E2F5-DP12_P130-E2F5-DP12_available_p130)) (not (available_p130)))
    (when (not (and (and (available_e2f5-dp12) (available_p130)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P21_GADD45_P21-GADD45
  :effect (and
    (when (and (and (available_p21) (available_gadd45)) (valid) (unlistedeffect_ASSOCIATE_P21_GADD45_P21-GADD45_available_p21-gadd45)) (available_p21-gadd45))
    (when (and (and (available_p21) (available_gadd45)) (valid) (possclob_ASSOCIATE_P21_GADD45_P21-GADD45_available_p21)) (not (available_p21)))
    (when (and (and (available_p21) (available_gadd45)) (valid) (possclob_ASSOCIATE_P21_GADD45_P21-GADD45_available_gadd45)) (not (available_gadd45)))
    (when (not (and (and (available_p21) (available_gadd45)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA_CYCDP1_PCNA-CYCDP1
  :effect (and
    (when (and (and (available_pcna) (available_cycdp1)) (valid)) (available_pcna-cycdp1))
    (when (and (and (available_pcna) (available_cycdp1)) (valid)) (not (available_pcna)))
    (when (and (and (available_pcna) (available_cycdp1)) (valid)) (not (available_cycdp1)))
    (when (not (and (and (available_pcna) (available_cycdp1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA_CYCD_PCNA-CYCD
  :effect (and
    (when (and (and (available_cycd) (available_pcna)) (valid) (unlistedeffect_ASSOCIATE_PCNA_CYCD_PCNA-CYCD_available_pcna-cycd)) (available_pcna-cycd))
    (when (and (and (available_cycd) (available_pcna)) (valid) (possclob_ASSOCIATE_PCNA_CYCD_PCNA-CYCD_available_cycd)) (not (available_cycd)))
    (when (and (and (available_cycd) (available_pcna)) (valid) (possclob_ASSOCIATE_PCNA_CYCD_PCNA-CYCD_available_pcna)) (not (available_pcna)))
    (when (not (and (and (available_cycd) (available_pcna)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA_GADD45_PCNA-GADD45
  :effect (and
    (when (and (and (available_pcna) (available_gadd45)) (valid) (unlistedeffect_ASSOCIATE_PCNA_GADD45_PCNA-GADD45_available_pcna-gadd45)) (available_pcna-gadd45))
    (when (and (and (available_pcna) (available_gadd45)) (valid) (possclob_ASSOCIATE_PCNA_GADD45_PCNA-GADD45_available_pcna)) (not (available_pcna)))
    (when (and (and (available_pcna) (available_gadd45)) (valid) (possclob_ASSOCIATE_PCNA_GADD45_PCNA-GADD45_available_gadd45)) (not (available_gadd45)))
    (when (not (and (and (available_pcna) (available_gadd45)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCNA_P21_PCNA-P21
  :effect (and
    (when (and (and (available_p21) (available_pcna)) (valid) (unlistedeffect_ASSOCIATE_PCNA_P21_PCNA-P21_available_pcna-p21)) (available_pcna-p21))
    (when (and (and (available_p21) (available_pcna)) (valid) (possclob_ASSOCIATE_PCNA_P21_PCNA-P21_available_p21)) (not (available_p21)))
    (when (and (and (available_p21) (available_pcna)) (valid) (possclob_ASSOCIATE_PCNA_P21_PCNA-P21_available_pcna)) (not (available_pcna)))
    (when (not (and (and (available_p21) (available_pcna)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_SP1_P107P1_SP1-P107P1
  :effect (and
    (when (and (and (available_p107p1) (available_sp1)) (valid) (unlistedeffect_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_sp1-p107p1)) (available_sp1-p107p1))
    (when (and (and (available_p107p1) (available_sp1)) (valid) (possclob_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_p107p1)) (not (available_p107p1)))
    (when (and (and (available_p107p1) (available_sp1)) (valid) (possclob_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_sp1)) (not (available_sp1)))
    (when (not (and (and (available_p107p1) (available_sp1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_SP1_P107_SP1-P107
  :effect (and
    (when (and (and (available_p107) (available_sp1)) (valid)) (available_sp1-p107))
    (when (and (and (available_p107) (available_sp1)) (valid)) (not (available_p107)))
    (when (and (and (available_p107) (available_sp1)) (valid)) (not (available_sp1)))
    (when (not (and (and (available_p107) (available_sp1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK1P1P2_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_cdk1p1p2)) (valid)) (chosen_cdk1p1p2))
    (when (and (and (num-subs_l1) (not-chosen_cdk1p1p2)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_cdk1p1p2)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_cdk1p1p2)) (valid)) (not (not-chosen_cdk1p1p2)))
    (when (not (and (and (num-subs_l1) (not-chosen_cdk1p1p2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2_L2_L1
  :effect (and
    (when (and (and (not-chosen_cdk2) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_cdk2) (num-subs_l1)) (valid)) (chosen_cdk2))
    (when (and (and (not-chosen_cdk2) (num-subs_l1)) (valid)) (not (not-chosen_cdk2)))
    (when (and (and (not-chosen_cdk2) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_cdk2) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2P1_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_cdk2p1)) (valid)) (chosen_cdk2p1))
    (when (and (and (num-subs_l1) (not-chosen_cdk2p1)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_cdk2p1)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_cdk2p1)) (valid)) (not (not-chosen_cdk2p1)))
    (when (not (and (and (num-subs_l1) (not-chosen_cdk2p1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK46P1_L2_L1
  :effect (and
    (when (and (and (not-chosen_cdk46p1) (num-subs_l1)) (valid)) (chosen_cdk46p1))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (and (and (not-chosen_cdk46p1) (num-subs_l1)) (valid)) (not (not-chosen_cdk46p1)))
    (when (not (and (and (not-chosen_cdk46p1) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CKS1_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_cks1)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_cks1)) (valid)) (chosen_cks1))
    (when (and (and (num-subs_l1) (not-chosen_cks1)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_cks1)) (valid)) (not (not-chosen_cks1)))
    (when (not (and (and (num-subs_l1) (not-chosen_cks1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_DP12_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_dp12)) (valid)) (chosen_dp12))
    (when (and (and (num-subs_l1) (not-chosen_dp12)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_dp12)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_dp12)) (valid)) (not (not-chosen_dp12)))
    (when (not (and (and (num-subs_l1) (not-chosen_dp12)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F1_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_e2f1)) (valid)) (chosen_e2f1))
    (when (and (and (num-subs_l1) (not-chosen_e2f1)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_e2f1)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_e2f1)) (valid)) (not (not-chosen_e2f1)))
    (when (not (and (and (num-subs_l1) (not-chosen_e2f1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13-DP12_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_e2f13-dp12)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_e2f13-dp12)) (valid)) (chosen_e2f13-dp12))
    (when (and (and (num-subs_l1) (not-chosen_e2f13-dp12)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_e2f13-dp12)) (valid)) (not (not-chosen_e2f13-dp12)))
    (when (not (and (and (num-subs_l1) (not-chosen_e2f13-dp12)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13P1-DP12P1_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_e2f13p1-dp12p1)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_e2f13p1-dp12p1)) (valid)) (chosen_e2f13p1-dp12p1))
    (when (and (and (num-subs_l1) (not-chosen_e2f13p1-dp12p1)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_e2f13p1-dp12p1)) (valid)) (not (not-chosen_e2f13p1-dp12p1)))
    (when (not (and (and (num-subs_l1) (not-chosen_e2f13p1-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F2_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_e2f2)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_e2f2)) (valid)) (chosen_e2f2))
    (when (and (and (num-subs_l1) (not-chosen_e2f2)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_e2f2)) (valid)) (not (not-chosen_e2f2)))
    (when (not (and (and (num-subs_l1) (not-chosen_e2f2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_e2f5)) (valid)) (chosen_e2f5))
    (when (and (and (num-subs_l1) (not-chosen_e2f5)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_e2f5)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_e2f5)) (valid)) (not (not-chosen_e2f5)))
    (when (not (and (and (num-subs_l1) (not-chosen_e2f5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5-DP12P1_L2_L1
  :effect (and
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l1)) (valid)) (chosen_e2f5-dp12p1))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l1)) (valid)) (not (not-chosen_e2f5-dp12p1)))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_e2f5-dp12p1) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F6_L2_L1
  :effect (and
    (when (and (and (not-chosen_e2f6) (num-subs_l1)) (valid)) (chosen_e2f6))
    (when (and (and (not-chosen_e2f6) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_e2f6) (num-subs_l1)) (valid)) (not (not-chosen_e2f6)))
    (when (and (and (not-chosen_e2f6) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_e2f6) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GE2_L2_L1
  :effect (and
    (when (and (and (not-chosen_ge2) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_ge2) (num-subs_l1)) (valid)) (chosen_ge2))
    (when (and (and (not-chosen_ge2) (num-subs_l1)) (valid)) (not (not-chosen_ge2)))
    (when (and (and (not-chosen_ge2) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_ge2) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GERCC1_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_gercc1)) (valid)) (chosen_gercc1))
    (when (and (and (num-subs_l1) (not-chosen_gercc1)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_gercc1)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_gercc1)) (valid)) (not (not-chosen_gercc1)))
    (when (not (and (and (num-subs_l1) (not-chosen_gercc1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_HDAC1-PRBP1-E2F4-DP12_L2_L1
  :effect (and
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l1)) (valid)) (chosen_hdac1-prbp1-e2f4-dp12))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l1)) (valid)) (not (not-chosen_hdac1-prbp1-e2f4-dp12)))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_JUN_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_jun)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_jun)) (valid)) (chosen_jun))
    (when (and (and (num-subs_l1) (not-chosen_jun)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_jun)) (valid)) (not (not-chosen_jun)))
    (when (not (and (and (num-subs_l1) (not-chosen_jun)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P130_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_p130)) (valid)) (chosen_p130))
    (when (and (and (num-subs_l1) (not-chosen_p130)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_p130)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_p130)) (valid)) (not (not-chosen_p130)))
    (when (not (and (and (num-subs_l1) (not-chosen_p130)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P16_L2_L1
  :effect (and
    (when (and (and (not-chosen_p16) (num-subs_l1)) (valid)) (chosen_p16))
    (when (and (and (not-chosen_p16) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_p16) (num-subs_l1)) (valid)) (not (not-chosen_p16)))
    (when (and (and (not-chosen_p16) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_p16) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P53_L2_L1
  :effect (and
    (when (and (and (not-chosen_p53) (num-subs_l1)) (valid)) (chosen_p53))
    (when (and (and (not-chosen_p53) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_p53) (num-subs_l1)) (valid)) (not (not-chosen_p53)))
    (when (and (and (not-chosen_p53) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_p53) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PCNA_L2_L1
  :effect (and
    (when (and (and (not-chosen_pcna) (num-subs_l1)) (valid)) (chosen_pcna))
    (when (and (and (not-chosen_pcna) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_pcna) (num-subs_l1)) (valid)) (not (not-chosen_pcna)))
    (when (and (and (not-chosen_pcna) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_pcna) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_SP1_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_sp1)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_sp1)) (valid)) (chosen_sp1))
    (when (and (and (num-subs_l1) (not-chosen_sp1)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_sp1)) (valid)) (not (not-chosen_sp1)))
    (when (not (and (and (num-subs_l1) (not-chosen_sp1)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-6-2
  :effect (and
    (when (and (and (available_c-myc)) (valid)) (goal6_))
    (when (not (and (and (available_c-myc)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-4-2
  :effect (and
    (when (and (and (available_p130-e2f5-dp12p1-ge2)) (valid)) (goal4_))
    (when (not (and (and (available_p130-e2f5-dp12p1-ge2)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-1-2
  :effect (and
    (when (and (and (available_cyce)) (valid)) (goal1_))
    (when (not (and (and (available_cyce)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F13-DP12-GE2_C-MYC
  :effect (and
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_C-MYC_available_e2f13-dp12-ge2))) (valid) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_C-MYC_available_c-myc)) (available_c-myc))
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_C-MYC_available_e2f13-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F13-DP12-GE2_C-MYC_available_e2f13-dp12-ge2)) (not (available_e2f13-dp12-ge2)))
    (when (not (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_C-MYC_available_e2f13-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F13-DP12-GE2_CYCA
  :effect (and
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCA_available_e2f13-dp12-ge2))) (valid) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_CYCA_available_cyca)) (available_cyca))
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCA_available_e2f13-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F13-DP12-GE2_CYCA_available_e2f13-dp12-ge2)) (not (available_e2f13-dp12-ge2)))
    (when (not (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCA_available_e2f13-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F13-DP12-GE2_CYCD
  :effect (and
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCD_available_e2f13-dp12-ge2))) (valid) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_CYCD_available_cycd)) (available_cycd))
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCD_available_e2f13-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F13-DP12-GE2_CYCD_available_e2f13-dp12-ge2)) (not (available_e2f13-dp12-ge2)))
    (when (not (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCD_available_e2f13-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F13-DP12-GE2_CYCDP1
  :effect (and
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCDP1_available_e2f13-dp12-ge2))) (valid) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_CYCDP1_available_cycdp1)) (available_cycdp1))
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCDP1_available_e2f13-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F13-DP12-GE2_CYCDP1_available_e2f13-dp12-ge2)) (not (available_e2f13-dp12-ge2)))
    (when (not (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCDP1_available_e2f13-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F13-DP12-GE2_CYCE
  :effect (and
    (when (and (and (available_e2f13-dp12-ge2)) (valid) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_CYCE_available_cyce)) (available_cyce))
    (when (not (and (and (available_e2f13-dp12-ge2)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F13-DP12-GE2_CYCEP1
  :effect (and
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCEP1_available_e2f13-dp12-ge2))) (valid)) (available_cycep1))
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCEP1_available_e2f13-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F13-DP12-GE2_CYCEP1_available_e2f13-dp12-ge2)) (not (available_e2f13-dp12-ge2)))
    (when (not (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCEP1_available_e2f13-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F13-DP12-GE2_P107
  :effect (and
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_P107_available_e2f13-dp12-ge2))) (valid) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_P107_available_p107)) (available_p107))
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_P107_available_e2f13-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F13-DP12-GE2_P107_available_e2f13-dp12-ge2)) (not (available_e2f13-dp12-ge2)))
    (when (not (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_P107_available_e2f13-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F13-DP12-GE2_P107P1
  :effect (and
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_P107P1_available_e2f13-dp12-ge2))) (valid)) (available_p107p1))
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_P107P1_available_e2f13-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F13-DP12-GE2_P107P1_available_e2f13-dp12-ge2)) (not (available_e2f13-dp12-ge2)))
    (when (not (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_P107P1_available_e2f13-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F13-DP12-GE2_P19ARF
  :effect (and
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_P19ARF_available_e2f13-dp12-ge2))) (valid)) (available_p19arf))
    (when (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_P19ARF_available_e2f13-dp12-ge2))) (valid) (possclob_SYNTHESIZE_E2F13-DP12-GE2_P19ARF_available_e2f13-dp12-ge2)) (not (available_e2f13-dp12-ge2)))
    (when (not (and (and) (or (available_e2f13-dp12-ge2) (not (openprec_SYNTHESIZE_E2F13-DP12-GE2_P19ARF_available_e2f13-dp12-ge2))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_E2F13-DP12-GE2_POL
  :effect (and
    (when (and (and (available_e2f13-dp12-ge2)) (valid) (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_POL_available_pol)) (available_pol))
    (when (and (and (available_e2f13-dp12-ge2)) (valid) (possclob_SYNTHESIZE_E2F13-DP12-GE2_POL_available_e2f13-dp12-ge2)) (not (available_e2f13-dp12-ge2)))
    (when (not (and (and (available_e2f13-dp12-ge2)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_P53_C-FOS
  :effect (and
    (when (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_C-FOS_available_p53))) (valid)) (available_c-fos))
    (when (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_C-FOS_available_p53))) (valid) (possclob_SYNTHESIZE_P53_C-FOS_available_p53)) (not (available_p53)))
    (when (not (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_C-FOS_available_p53))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_P53_GADD45
  :effect (and
    (when (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_GADD45_available_p53))) (valid)) (available_gadd45))
    (when (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_GADD45_available_p53))) (valid) (possclob_SYNTHESIZE_P53_GADD45_available_p53)) (not (available_p53)))
    (when (not (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_GADD45_available_p53))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_P53_MDM2
  :effect (and
    (when (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_MDM2_available_p53))) (valid)) (available_mdm2))
    (when (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_MDM2_available_p53))) (valid) (possclob_SYNTHESIZE_P53_MDM2_available_p53)) (not (available_p53)))
    (when (not (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_MDM2_available_p53))) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_P53_P21
  :effect (and
    (when (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_P21_available_p53))) (valid) (unlistedeffect_SYNTHESIZE_P53_P21_available_p21)) (available_p21))
    (when (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_P21_available_p53))) (valid) (possclob_SYNTHESIZE_P53_P21_available_p53)) (not (available_p53)))
    (when (not (and (and) (or (available_p53) (not (openprec_SYNTHESIZE_P53_P21_available_p53))) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK1P1P2_CKS1_CDK1P1P2-CKS1
  :effect (and
    (when (and (and (available_cks1) (available_cdk1p1p2)) (valid) (unlistedeffect_ASSOCIATE_CDK1P1P2_CKS1_CDK1P1P2-CKS1_available_cdk1p1p2-cks1)) (available_cdk1p1p2-cks1))
    (when (and (and (available_cks1) (available_cdk1p1p2)) (valid) (possclob_ASSOCIATE_CDK1P1P2_CKS1_CDK1P1P2-CKS1_available_cks1)) (not (available_cks1)))
    (when (and (and (available_cks1) (available_cdk1p1p2)) (valid) (possclob_ASSOCIATE_CDK1P1P2_CKS1_CDK1P1P2-CKS1_available_cdk1p1p2)) (not (available_cdk1p1p2)))
    (when (not (and (and (available_cks1) (available_cdk1p1p2)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK2_CKS1_CDK2-CKS1
  :effect (and
    (when (and (and (available_cdk2) (available_cks1)) (valid) (unlistedeffect_ASSOCIATE_CDK2_CKS1_CDK2-CKS1_available_cdk2-cks1)) (available_cdk2-cks1))
    (when (and (and (available_cdk2) (available_cks1)) (valid) (possclob_ASSOCIATE_CDK2_CKS1_CDK2-CKS1_available_cdk2)) (not (available_cdk2)))
    (when (and (and (available_cdk2) (available_cks1)) (valid) (possclob_ASSOCIATE_CDK2_CKS1_CDK2-CKS1_available_cks1)) (not (available_cks1)))
    (when (not (and (and (available_cdk2) (available_cks1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK2P1_CKS1_CDK2P1-CKS1
  :effect (and
    (when (and (and (available_cdk2p1) (available_cks1)) (valid)) (available_cdk2p1-cks1))
    (when (and (and (available_cdk2p1) (available_cks1)) (valid)) (not (available_cdk2p1)))
    (when (and (and (available_cdk2p1) (available_cks1)) (valid)) (not (available_cks1)))
    (when (not (and (and (available_cdk2p1) (available_cks1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_E2F13-DP12_GE2_E2F13-DP12-GE2
  :effect (and
    (when (and (and (available_ge2) (available_e2f13-dp12)) (valid) (unlistedeffect_ASSOCIATE_E2F13-DP12_GE2_E2F13-DP12-GE2_available_e2f13-dp12-ge2)) (available_e2f13-dp12-ge2))
    (when (and (and (available_ge2) (available_e2f13-dp12)) (valid) (possclob_ASSOCIATE_E2F13-DP12_GE2_E2F13-DP12-GE2_available_ge2)) (not (available_ge2)))
    (when (and (and (available_ge2) (available_e2f13-dp12)) (valid) (possclob_ASSOCIATE_E2F13-DP12_GE2_E2F13-DP12-GE2_available_e2f13-dp12)) (not (available_e2f13-dp12)))
    (when (not (and (and (available_ge2) (available_e2f13-dp12)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_E2F1_DP12_E2F1-DP12
  :effect (and
    (when (and (and (available_e2f1) (available_dp12)) (valid) (unlistedeffect_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_e2f1-dp12)) (available_e2f1-dp12))
    (when (and (and (available_e2f1) (available_dp12)) (valid) (possclob_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_e2f1)) (not (available_e2f1)))
    (when (and (and (available_e2f1) (available_dp12)) (valid) (possclob_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_dp12)) (not (available_dp12)))
    (when (not (and (and (available_e2f1) (available_dp12)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_E2F2_DP12_E2F2-DP12
  :effect (and
    (when (and (and (available_e2f2) (available_dp12)) (valid) (unlistedeffect_ASSOCIATE_E2F2_DP12_E2F2-DP12_available_e2f2-dp12)) (available_e2f2-dp12))
    (when (and (and (available_e2f2) (available_dp12)) (valid) (possclob_ASSOCIATE_E2F2_DP12_E2F2-DP12_available_e2f2)) (not (available_e2f2)))
    (when (and (and (available_e2f2) (available_dp12)) (valid) (possclob_ASSOCIATE_E2F2_DP12_E2F2-DP12_available_dp12)) (not (available_dp12)))
    (when (not (and (and (available_e2f2) (available_dp12)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_E2F5_DP12_E2F5-DP12
  :effect (and
    (when (and (and (available_dp12) (available_e2f5)) (valid) (unlistedeffect_ASSOCIATE_E2F5_DP12_E2F5-DP12_available_e2f5-dp12)) (available_e2f5-dp12))
    (when (and (and (available_dp12) (available_e2f5)) (valid) (possclob_ASSOCIATE_E2F5_DP12_E2F5-DP12_available_dp12)) (not (available_dp12)))
    (when (and (and (available_dp12) (available_e2f5)) (valid) (possclob_ASSOCIATE_E2F5_DP12_E2F5-DP12_available_e2f5)) (not (available_e2f5)))
    (when (not (and (and (available_dp12) (available_e2f5)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_E2F6_DP12_E2F6-DP12
  :effect (and
    (when (and (and (available_dp12) (available_e2f6)) (valid)) (available_e2f6-dp12))
    (when (and (and (available_dp12) (available_e2f6)) (valid)) (not (available_dp12)))
    (when (and (and (available_dp12) (available_e2f6)) (valid)) (not (available_e2f6)))
    (when (not (and (and (available_dp12) (available_e2f6)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_HDAC1-PRBP1-E2F4-DP12_GE2_HDAC1-PRBP1-E2F4-DP12-GE2
  :effect (and
    (when (and (and (available_hdac1-prbp1-e2f4-dp12) (available_ge2)) (valid) (unlistedeffect_ASSOCIATE_HDAC1-PRBP1-E2F4-DP12_GE2_HDAC1-PRBP1-E2F4-DP12-GE2_available_hdac1-prbp1-e2f4-dp12-ge2)) (available_hdac1-prbp1-e2f4-dp12-ge2))
    (when (and (and (available_hdac1-prbp1-e2f4-dp12) (available_ge2)) (valid) (possclob_ASSOCIATE_HDAC1-PRBP1-E2F4-DP12_GE2_HDAC1-PRBP1-E2F4-DP12-GE2_available_ge2)) (not (available_ge2)))
    (when (and (and (available_hdac1-prbp1-e2f4-dp12) (available_ge2)) (valid) (possclob_ASSOCIATE_HDAC1-PRBP1-E2F4-DP12_GE2_HDAC1-PRBP1-E2F4-DP12-GE2_available_hdac1-prbp1-e2f4-dp12)) (not (available_hdac1-prbp1-e2f4-dp12)))
    (when (not (and (and (available_hdac1-prbp1-e2f4-dp12) (available_ge2)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P130-E2F5-DP12P1_GE2_P130-E2F5-DP12P1-GE2
  :effect (and
    (when (and (and (available_ge2) (available_p130-e2f5-dp12p1)) (valid) (unlistedeffect_ASSOCIATE_P130-E2F5-DP12P1_GE2_P130-E2F5-DP12P1-GE2_available_p130-e2f5-dp12p1-ge2)) (available_p130-e2f5-dp12p1-ge2))
    (when (and (and (available_ge2) (available_p130-e2f5-dp12p1)) (valid) (possclob_ASSOCIATE_P130-E2F5-DP12P1_GE2_P130-E2F5-DP12P1-GE2_available_ge2)) (not (available_ge2)))
    (when (and (and (available_ge2) (available_p130-e2f5-dp12p1)) (valid) (possclob_ASSOCIATE_P130-E2F5-DP12P1_GE2_P130-E2F5-DP12P1-GE2_available_p130-e2f5-dp12p1)) (not (available_p130-e2f5-dp12p1)))
    (when (not (and (and (available_ge2) (available_p130-e2f5-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P130_E2F5-DP12P1_P130-E2F5-DP12P1
  :effect (and
    (when (and (and (available_p130) (available_e2f5-dp12p1)) (valid)) (available_p130-e2f5-dp12p1))
    (when (and (and (available_p130) (available_e2f5-dp12p1)) (valid)) (not (available_p130)))
    (when (and (and (available_p130) (available_e2f5-dp12p1)) (valid)) (not (available_e2f5-dp12p1)))
    (when (not (and (and (available_p130) (available_e2f5-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P16_CDK46P1_P16-CDK46P1
  :effect (and
    (when (and (and (available_cdk46p1) (available_p16)) (valid) (unlistedeffect_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16-cdk46p1)) (available_p16-cdk46p1))
    (when (and (and (available_cdk46p1) (available_p16)) (valid) (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_cdk46p1)) (not (available_cdk46p1)))
    (when (and (and (available_cdk46p1) (available_p16)) (valid) (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16)) (not (available_p16)))
    (when (not (and (and (available_cdk46p1) (available_p16)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P53_DP12_P53-DP12
  :effect (and
    (when (and (and (available_p53) (available_dp12)) (valid)) (available_p53-dp12))
    (when (and (and (available_p53) (available_dp12)) (valid)) (not (available_dp12)))
    (when (and (and (available_p53) (available_dp12)) (valid)) (not (available_p53)))
    (when (not (and (and (available_p53) (available_dp12)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CDK1P1P2
  :effect (and
    (when (and (and (chosen_cdk1p1p2)) (valid)) (available_cdk1p1p2))
    (when (not (and (and (chosen_cdk1p1p2)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CDK2
  :effect (and
    (when (and (and (chosen_cdk2)) (valid)) (available_cdk2))
    (when (not (and (and (chosen_cdk2)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CDK2P1
  :effect (and
    (when (and (and (chosen_cdk2p1)) (valid)) (available_cdk2p1))
    (when (not (and (and (chosen_cdk2p1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CDK46P1
  :effect (and
    (when (and (and (chosen_cdk46p1)) (valid)) (available_cdk46p1))
    (when (not (and (and (chosen_cdk46p1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CKS1
  :effect (and
    (when (and (and (chosen_cks1)) (valid)) (available_cks1))
    (when (not (and (and (chosen_cks1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_DP12
  :effect (and
    (when (and (and (chosen_dp12)) (valid)) (available_dp12))
    (when (not (and (and (chosen_dp12)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_E2F1
  :effect (and
    (when (and (and (chosen_e2f1)) (valid)) (available_e2f1))
    (when (not (and (and (chosen_e2f1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_E2F13-DP12
  :effect (and
    (when (and (and (chosen_e2f13-dp12)) (valid)) (available_e2f13-dp12))
    (when (not (and (and (chosen_e2f13-dp12)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_E2F13P1-DP12P1
  :effect (and
    (when (and (and (chosen_e2f13p1-dp12p1)) (valid)) (available_e2f13p1-dp12p1))
    (when (not (and (and (chosen_e2f13p1-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_E2F2
  :effect (and
    (when (and (and (chosen_e2f2)) (valid)) (available_e2f2))
    (when (not (and (and (chosen_e2f2)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_E2F5
  :effect (and
    (when (and (and (chosen_e2f5)) (valid)) (available_e2f5))
    (when (not (and (and (chosen_e2f5)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_E2F5-DP12P1
  :effect (and
    (when (and (and (chosen_e2f5-dp12p1)) (valid)) (available_e2f5-dp12p1))
    (when (not (and (and (chosen_e2f5-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_E2F6
  :effect (and
    (when (and (and (chosen_e2f6)) (valid)) (available_e2f6))
    (when (not (and (and (chosen_e2f6)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_GE2
  :effect (and
    (when (and (and (chosen_ge2)) (valid)) (available_ge2))
    (when (not (and (and (chosen_ge2)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_GERCC1
  :effect (and
    (when (and (and (chosen_gercc1)) (valid)) (available_gercc1))
    (when (not (and (and (chosen_gercc1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_HDAC1-PRBP1-E2F4-DP12
  :effect (and
    (when (and (and (chosen_hdac1-prbp1-e2f4-dp12)) (valid)) (available_hdac1-prbp1-e2f4-dp12))
    (when (not (and (and (chosen_hdac1-prbp1-e2f4-dp12)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_JUN
  :effect (and
    (when (and (and (chosen_jun)) (valid)) (available_jun))
    (when (not (and (and (chosen_jun)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_P130
  :effect (and
    (when (and (and (chosen_p130)) (valid)) (available_p130))
    (when (not (and (and (chosen_p130)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_P16
  :effect (and
    (when (and (and (chosen_p16)) (valid)) (available_p16))
    (when (not (and (and (chosen_p16)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_P53
  :effect (and
    (when (and (and (chosen_p53)) (valid)) (available_p53))
    (when (not (and (and (chosen_p53)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_PCNA
  :effect (and
    (when (and (and (chosen_pcna)) (valid)) (available_pcna))
    (when (not (and (and (chosen_pcna)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_SP1
  :effect (and
    (when (and (and (chosen_sp1)) (valid)) (available_sp1))
    (when (not (and (and (chosen_sp1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK1P1P2_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_cdk1p1p2)) (valid)) (chosen_cdk1p1p2))
    (when (and (and (num-subs_l0) (not-chosen_cdk1p1p2)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_cdk1p1p2)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_cdk1p1p2)) (valid)) (not (not-chosen_cdk1p1p2)))
    (when (not (and (and (num-subs_l0) (not-chosen_cdk1p1p2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_cdk2)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_cdk2)) (valid)) (chosen_cdk2))
    (when (and (and (num-subs_l0) (not-chosen_cdk2)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_cdk2)) (valid)) (not (not-chosen_cdk2)))
    (when (not (and (and (num-subs_l0) (not-chosen_cdk2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK2P1_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_cdk2p1)) (valid)) (chosen_cdk2p1))
    (when (and (and (num-subs_l0) (not-chosen_cdk2p1)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_cdk2p1)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_cdk2p1)) (valid)) (not (not-chosen_cdk2p1)))
    (when (not (and (and (num-subs_l0) (not-chosen_cdk2p1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK46P1_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_cdk46p1)) (valid)) (chosen_cdk46p1))
    (when (and (and (num-subs_l0) (not-chosen_cdk46p1)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_cdk46p1)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_cdk46p1)) (valid)) (not (not-chosen_cdk46p1)))
    (when (not (and (and (num-subs_l0) (not-chosen_cdk46p1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CKS1_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_cks1)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_cks1)) (valid)) (chosen_cks1))
    (when (and (and (num-subs_l0) (not-chosen_cks1)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_cks1)) (valid)) (not (not-chosen_cks1)))
    (when (not (and (and (num-subs_l0) (not-chosen_cks1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_DP12_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_dp12)) (valid)) (chosen_dp12))
    (when (and (and (num-subs_l0) (not-chosen_dp12)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_dp12)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_dp12)) (valid)) (not (not-chosen_dp12)))
    (when (not (and (and (num-subs_l0) (not-chosen_dp12)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F1_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_e2f1)) (valid)) (chosen_e2f1))
    (when (and (and (num-subs_l0) (not-chosen_e2f1)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_e2f1)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_e2f1)) (valid)) (not (not-chosen_e2f1)))
    (when (not (and (and (num-subs_l0) (not-chosen_e2f1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13-DP12_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_e2f13-dp12)) (valid)) (chosen_e2f13-dp12))
    (when (and (and (num-subs_l0) (not-chosen_e2f13-dp12)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_e2f13-dp12)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_e2f13-dp12)) (valid)) (not (not-chosen_e2f13-dp12)))
    (when (not (and (and (num-subs_l0) (not-chosen_e2f13-dp12)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13P1-DP12P1_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_e2f13p1-dp12p1)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_e2f13p1-dp12p1)) (valid)) (chosen_e2f13p1-dp12p1))
    (when (and (and (num-subs_l0) (not-chosen_e2f13p1-dp12p1)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_e2f13p1-dp12p1)) (valid)) (not (not-chosen_e2f13p1-dp12p1)))
    (when (not (and (and (num-subs_l0) (not-chosen_e2f13p1-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F2_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_e2f2)) (valid)) (chosen_e2f2))
    (when (and (and (num-subs_l0) (not-chosen_e2f2)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_e2f2)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_e2f2)) (valid)) (not (not-chosen_e2f2)))
    (when (not (and (and (num-subs_l0) (not-chosen_e2f2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_e2f5)) (valid)) (chosen_e2f5))
    (when (and (and (num-subs_l0) (not-chosen_e2f5)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_e2f5)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_e2f5)) (valid)) (not (not-chosen_e2f5)))
    (when (not (and (and (num-subs_l0) (not-chosen_e2f5)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F5-DP12P1_L1_L0
  :effect (and
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l0)) (valid)) (chosen_e2f5-dp12p1))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l0)) (valid)) (not (not-chosen_e2f5-dp12p1)))
    (when (and (and (not-chosen_e2f5-dp12p1) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_e2f5-dp12p1) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F6_L1_L0
  :effect (and
    (when (and (and (not-chosen_e2f6) (num-subs_l0)) (valid)) (chosen_e2f6))
    (when (and (and (not-chosen_e2f6) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_e2f6) (num-subs_l0)) (valid)) (not (not-chosen_e2f6)))
    (when (and (and (not-chosen_e2f6) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_e2f6) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GE2_L1_L0
  :effect (and
    (when (and (and (not-chosen_ge2) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_ge2) (num-subs_l0)) (valid)) (chosen_ge2))
    (when (and (and (not-chosen_ge2) (num-subs_l0)) (valid)) (not (not-chosen_ge2)))
    (when (and (and (not-chosen_ge2) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_ge2) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GERCC1_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_gercc1)) (valid)) (chosen_gercc1))
    (when (and (and (num-subs_l0) (not-chosen_gercc1)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_gercc1)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_gercc1)) (valid)) (not (not-chosen_gercc1)))
    (when (not (and (and (num-subs_l0) (not-chosen_gercc1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_HDAC1-PRBP1-E2F4-DP12_L1_L0
  :effect (and
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l0)) (valid)) (chosen_hdac1-prbp1-e2f4-dp12))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l0)) (valid)) (not (not-chosen_hdac1-prbp1-e2f4-dp12)))
    (when (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_hdac1-prbp1-e2f4-dp12) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_JUN_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_jun)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_jun)) (valid)) (chosen_jun))
    (when (and (and (num-subs_l0) (not-chosen_jun)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_jun)) (valid)) (not (not-chosen_jun)))
    (when (not (and (and (num-subs_l0) (not-chosen_jun)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P130_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_p130)) (valid)) (chosen_p130))
    (when (and (and (num-subs_l0) (not-chosen_p130)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_p130)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_p130)) (valid)) (not (not-chosen_p130)))
    (when (not (and (and (num-subs_l0) (not-chosen_p130)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P16_L1_L0
  :effect (and
    (when (and (and (not-chosen_p16) (num-subs_l0)) (valid)) (chosen_p16))
    (when (and (and (not-chosen_p16) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_p16) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (and (and (not-chosen_p16) (num-subs_l0)) (valid)) (not (not-chosen_p16)))
    (when (not (and (and (not-chosen_p16) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P53_L1_L0
  :effect (and
    (when (and (and (not-chosen_p53) (num-subs_l0)) (valid)) (chosen_p53))
    (when (and (and (not-chosen_p53) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_p53) (num-subs_l0)) (valid)) (not (not-chosen_p53)))
    (when (and (and (not-chosen_p53) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_p53) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PCNA_L1_L0
  :effect (and
    (when (and (and (not-chosen_pcna) (num-subs_l0)) (valid)) (chosen_pcna))
    (when (and (and (not-chosen_pcna) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_pcna) (num-subs_l0)) (valid)) (not (not-chosen_pcna)))
    (when (and (and (not-chosen_pcna) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_pcna) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_SP1_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_sp1)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_sp1)) (valid)) (chosen_sp1))
    (when (and (and (num-subs_l0) (not-chosen_sp1)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_sp1)) (valid)) (not (not-chosen_sp1)))
    (when (not (and (and (num-subs_l0) (not-chosen_sp1)) (valid))) (not (valid)))
  )
 )

 (:action cpp_goal
  :precondition (and )
  :effect (when (and (goal6_ ) (goal5_ ) (goal4_ ) (goal3_ ) (goal2_ ) (goal1_ ) (valid)) (done))
 )
)
