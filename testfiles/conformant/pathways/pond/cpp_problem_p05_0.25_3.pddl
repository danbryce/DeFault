(define (problem GROUNDED-PATHWAYS-05)
 (:domain GROUNDED-PATHWAYS-PROPOSITIONAL)
 (:init
  (not-chosen_ge2)
  (not-chosen_e2f5-dp12p1)
  (num-subs_l0)
  (not-chosen_p16)
  (not-chosen_e2f1)
  (not-chosen_cks1)
  (not-chosen_cdk46p1)
  (not-chosen_e2f2)
  (not-chosen_e2f13-dp12)
  (not-chosen_e2f13p1-dp12p1)
  (not-chosen_dp12)
  (not-chosen_e2f5)
  (not-chosen_e2f6)
  (not-chosen_hdac1-prbp1-e2f4-dp12)
  (not-chosen_p53)
  (not-chosen_pcna)
  (not-chosen_cdk2)
  (not-chosen_cdk1p1p2)
  (not-chosen_jun)
  (not-chosen_cdk2p1)
  (not-chosen_p130)
  (not-chosen_gercc1)
  (not-chosen_sp1)
  (valid)
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_p21-cdk46p1-cycd))
  (probabilistic 0.5 (possclob_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_p21))
  (probabilistic 0.5 (possclob_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_cdk46p1-cycd))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_PCNA-P21_CDK2P1-CYCA_PCNA-P21-CDK2P1-CYCA_available_pcna-p21-cdk2p1-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCA_PCNA-P21-CDK2P1-CYCA_available_cdk2p1-cyca))
  (probabilistic 0.5 (possclob_ASSOCIATE_PCNA-P21_CDK2P1-CYCA_PCNA-P21-CDK2P1-CYCA_available_pcna-p21))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F5-DP12-GE2_CYCDP1_available_e2f5-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F5-DP12-GE2_POL_available_e2f5-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F5-DP12-GE2_POL_available_pol))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_JUN-C-FOS-GERCC1_ERCC1_available_ercc1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_CDK2_CYCEP1_CDK2-CYCEP1_available_cdk2-cycep1))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK2_CYCEP1_CDK2-CYCEP1_available_cdk2))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK2_CYCEP1_CDK2-CYCEP1_available_cycep1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cdk2p1-cycep1))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cdk2p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cycep1))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cdk46p1-cycd))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cdk46p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cycd))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_MDM2_E2F13-DP12_MDM2-E2F13-DP12_available_mdm2-e2f13-dp12))
  (probabilistic 0.5 (possclob_ASSOCIATE_MDM2_E2F13-DP12_MDM2-E2F13-DP12_available_mdm2))
  (probabilistic 0.5 (possclob_ASSOCIATE_MDM2_E2F13-DP12_MDM2-E2F13-DP12_available_e2f13-dp12))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P130_E2F5-DP12_P130-E2F5-DP12_available_p130-e2f5-dp12))
  (probabilistic 0.5 (possclob_ASSOCIATE_P130_E2F5-DP12_P130-E2F5-DP12_available_e2f5-dp12))
  (probabilistic 0.5 (possclob_ASSOCIATE_P130_E2F5-DP12_P130-E2F5-DP12_available_p130))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P21_GADD45_P21-GADD45_available_p21-gadd45))
  (probabilistic 0.5 (possclob_ASSOCIATE_P21_GADD45_P21-GADD45_available_p21))
  (probabilistic 0.5 (possclob_ASSOCIATE_P21_GADD45_P21-GADD45_available_gadd45))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_PCNA_GADD45_PCNA-GADD45_available_pcna-gadd45))
  (probabilistic 0.5 (possclob_ASSOCIATE_PCNA_GADD45_PCNA-GADD45_available_pcna))
  (probabilistic 0.5 (possclob_ASSOCIATE_PCNA_GADD45_PCNA-GADD45_available_gadd45))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_sp1-p107p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_p107p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_SP1_P107P1_SP1-P107P1_available_sp1))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F13-DP12-GE2_C-MYC_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_E2F13-DP12-GE2_CYCD_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_CYCE_available_cyce))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_P107_available_p107))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_E2F13-DP12-GE2_P107P1_available_p107p1))
  (probabilistic 0.5 (possclob_SYNTHESIZE_E2F13-DP12-GE2_POL_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_P53_GADD45_available_gadd45))
  (probabilistic 0.5 (possclob_SYNTHESIZE_P53_GADD45_available_p53))
  (probabilistic 0.5 (unlistedeffect_SYNTHESIZE_P53_MDM2_available_mdm2))
  (probabilistic 0.5 (openprec_SYNTHESIZE_P53_P21_available_p53))
  (probabilistic 0.5 (possclob_SYNTHESIZE_P53_P21_available_p53))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_E2F13-DP12_GE2_E2F13-DP12-GE2_available_e2f13-dp12-ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_E2F13-DP12_GE2_E2F13-DP12-GE2_available_ge2))
  (probabilistic 0.5 (possclob_ASSOCIATE_E2F13-DP12_GE2_E2F13-DP12-GE2_available_e2f13-dp12))
  (probabilistic 0.5 (unlistedeffect_ASSOCIATE_P130_E2F5-DP12P1_P130-E2F5-DP12P1_available_p130-e2f5-dp12p1))
  (probabilistic 0.5 (possclob_ASSOCIATE_P130_E2F5-DP12P1_P130-E2F5-DP12P1_available_p130))
  (probabilistic 0.5 (possclob_ASSOCIATE_P130_E2F5-DP12P1_P130-E2F5-DP12P1_available_e2f5-dp12p1))
 )
 (:goal (and (done)))
)