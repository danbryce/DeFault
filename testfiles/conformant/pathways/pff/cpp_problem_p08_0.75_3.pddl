(define (problem GROUNDED-PATHWAYS-08)
 (:domain GROUNDED-PATHWAYS-PROPOSITIONAL)
 (:init
  (not-chosen_hdac1)
  (not-chosen_c-tak1)
  (not-chosen_p16)
  (num-subs_l0)
  (not-chosen_e2f13p1-dp12)
  (not-chosen_cdk46p1)
  (not-chosen_e2f13p1-dp12p1)
  (not-chosen_cdc25c)
  (not-chosen_prb)
  (not-chosen_cdk2-cycb)
  (not-chosen_p53p1)
  (not-chosen_cdk1p1p2)
  (not-chosen_cdk46p3-cycd)
  (not-chosen_gercc1)
  (not-chosen_skp2)
  (not-chosen_prb-e2f4p1-dp12)
  (not-chosen_skp1)
  (not-chosen_sp1)
  (not-chosen_p68)
  (not-chosen_wee1)
  (not-chosen_prbp2)
  (not-chosen_e2f1)
  (not-chosen_cks1)
  (not-chosen_e2f13-dp12)
  (not-chosen_rpa)
  (not-chosen_e2f2)
  (not-chosen_dp12)
  (not-chosen_e2f3)
  (not-chosen_e2f4)
  (not-chosen_e2f5)
  (not-chosen_cycb)
  (not-chosen_cdk46p3-cycdp1)
  (not-chosen_e2f6)
  (not-chosen_m1433)
  (not-chosen_gp)
  (not-chosen_cych)
  (not-chosen_p53)
  (not-chosen_cdk7)
  (not-chosen_cebp)
  (not-chosen_cdk2)
  (not-chosen_jun)
  (not-chosen_cdk2p1)
  (valid)
  (cpt (openprec_SYNTHESIZE_CEBP-PRBP1-GP_P_available_cebp-prbp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_CEBP-PRBP1-GP_P_available_p) 0.5)
  (cpt (possclob_SYNTHESIZE_CEBP-PRBP1-GP_P_available_cebp-prbp1-gp) 0.5)
  (cpt (openprec_SYNTHESIZE_CEBP-PRBP1P2-GP_P_available_cebp-prbp1p2-gp) 0.5)
  (cpt (possclob_SYNTHESIZE_CEBP-PRBP1P2-GP_P_available_cebp-prbp1p2-gp) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_P68P1_CDK2P2-CYCA_P68P1P2_available_cdk2p2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_P68P1_CDK2P2-CYCA_P68P1P2_available_p68p1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_P68P2_CDK2P2-CYCEP1_P68P1P2_available_cdk2p2-cycep1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_P68P2_CDK2P2-CYCE_P68P1P2_available_cdk2p2-cyce) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CEBP-PRBP1_GP_CEBP-PRBP1-GP_available_cebp-prbp1-gp) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP-PRBP1_GP_CEBP-PRBP1-GP_available_cebp-prbp1) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP-PRBP1_GP_CEBP-PRBP1-GP_available_gp) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK2-CYCA_P21-CDK2-CYCA_available_p21-cdk2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2-CYCA_P21-CDK2-CYCA_available_cdk2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2-CYCA_P21-CDK2-CYCA_available_p21) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK2-CYCEP1_P21-CDK2-CYCEP1_available_p21-cdk2-cycep1) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2-CYCEP1_P21-CDK2-CYCEP1_available_cdk2-cycep1) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2-CYCEP1_P21-CDK2-CYCEP1_available_p21) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_p21-cdk2-cyce) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_p21) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2-CYCE_P21-CDK2-CYCE_available_cdk2-cyce) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK2P1-CYCEP1_P21-CDK2P1-CYCEP1_available_p21-cdk2p1-cycep1) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P1-CYCEP1_P21-CDK2P1-CYCEP1_available_p21) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P1-CYCEP1_P21-CDK2P1-CYCEP1_available_cdk2p1-cycep1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK2P1-CYCE_P21-CDK2P1-CYCE_available_p21-cdk2p1-cyce) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P1-CYCE_P21-CDK2P1-CYCE_available_p21) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P1-CYCE_P21-CDK2P1-CYCE_available_cdk2p1-cyce) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK2P1P2-CYCA_P21-CDK2P1P2-CYCA_available_p21-cdk2p1p2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P1P2-CYCA_P21-CDK2P1P2-CYCA_available_cdk2p1p2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P1P2-CYCA_P21-CDK2P1P2-CYCA_available_p21) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK2P1P2-CYCEP1_P21-CDK2P1P2-CYCEP1_available_p21-cdk2p1p2-cycep1) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P1P2-CYCEP1_P21-CDK2P1P2-CYCEP1_available_p21) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P1P2-CYCEP1_P21-CDK2P1P2-CYCEP1_available_cdk2p1p2-cycep1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK2P1P2-CYCE_P21-CDK2P1P2-CYCE_available_p21-cdk2p1p2-cyce) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P1P2-CYCE_P21-CDK2P1P2-CYCE_available_p21) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P1P2-CYCE_P21-CDK2P1P2-CYCE_available_cdk2p1p2-cyce) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK2P2-CYCE_P21-CDK2P2-CYCE_available_p21-cdk2p2-cyce) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P2-CYCE_P21-CDK2P2-CYCE_available_p21) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK2P2-CYCE_P21-CDK2P2-CYCE_available_cdk2p2-cyce) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK46P1-CYCDP1_P21-CDK46P1-CYCDP1_available_p21-cdk46p1-cycdp1) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK46P1-CYCDP1_P21-CDK46P1-CYCDP1_available_p21) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK46P1-CYCDP1_P21-CDK46P1-CYCDP1_available_cdk46p1-cycdp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_p21-cdk46p1-cycd) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_p21) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK46P1-CYCD_P21-CDK46P1-CYCD_available_cdk46p1-cycd) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK46P1P2-CYCDP1_P21-CDK46P1P2-CYCDP1_available_p21-cdk46p1p2-cycdp1) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK46P1P2-CYCDP1_P21-CDK46P1P2-CYCDP1_available_p21) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK46P1P2-CYCDP1_P21-CDK46P1P2-CYCDP1_available_cdk46p1p2-cycdp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P21_CDK46P1P2-CYCD_P21-CDK46P1P2-CYCD_available_p21-cdk46p1p2-cycd) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK46P1P2-CYCD_P21-CDK46P1P2-CYCD_available_cdk46p1p2-cycd) 0.5)
  (cpt (possclob_ASSOCIATE_P21_CDK46P1P2-CYCD_P21-CDK46P1P2-CYCD_available_p21) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P53_DP12P1_P53-DP12P1_available_p53-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_P53_DP12P1_P53-DP12P1_available_dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_P53_DP12P1_P53-DP12P1_available_p53) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2_CDK2-CYCA_SKP2-CDK2-CYCA_available_skp2-cdk2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_CDK2-CYCA_SKP2-CDK2-CYCA_available_cdk2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_CDK2-CYCA_SKP2-CDK2-CYCA_available_skp2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2_CDK2P1-CYCA_SKP2-CDK2P1-CYCA_available_skp2-cdk2p1-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_CDK2P1-CYCA_SKP2-CDK2P1-CYCA_available_cdk2p1-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_CDK2P1-CYCA_SKP2-CDK2P1-CYCA_available_skp2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2_CDK2P1P2-CYCA_SKP2-CDK2P1P2-CYCA_available_skp2-cdk2p1p2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_CDK2P1P2-CYCA_SKP2-CDK2P1P2-CYCA_available_cdk2p1p2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_CDK2P1P2-CYCA_SKP2-CDK2P1P2-CYCA_available_skp2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2_CDK2P2-CYCA_SKP2-CDK2P2-CYCA_available_skp2-cdk2p2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_CDK2P2-CYCA_SKP2-CDK2P2-CYCA_available_skp2) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_CDK2P2-CYCA_SKP2-CDK2P2-CYCA_available_cdk2p2-cyca) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2P1_SKP1P1_SKP2P1-SKP1P1_available_skp2p1-skp1p1) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2P1_SKP1P1_SKP2P1-SKP1P1_available_skp2p1) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2P1_SKP1P1_SKP2P1-SKP1P1_available_skp1p1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2P1_SKP1_SKP2P1-SKP1_available_skp2p1-skp1) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2P1_SKP1_SKP2P1-SKP1_available_skp2p1) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2P1_SKP1_SKP2P1-SKP1_available_skp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2-SKP1_CDK2-CYCA_SKP2-SKP1-CDK2-CYCA_available_skp2-skp1-cdk2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1_CDK2-CYCA_SKP2-SKP1-CDK2-CYCA_available_cdk2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1_CDK2-CYCA_SKP2-SKP1-CDK2-CYCA_available_skp2-skp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2-SKP1_CDK2P1-CYCA_SKP2-SKP1-CDK2P1-CYCA_available_skp2-skp1-cdk2p1-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1_CDK2P1-CYCA_SKP2-SKP1-CDK2P1-CYCA_available_cdk2p1-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1_CDK2P1-CYCA_SKP2-SKP1-CDK2P1-CYCA_available_skp2-skp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2-SKP1_CDK2P2-CYCA_SKP2-SKP1-CDK2P2-CYCA_available_skp2-skp1-cdk2p2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1_CDK2P2-CYCA_SKP2-SKP1-CDK2P2-CYCA_available_skp2-skp1) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1_CDK2P2-CYCA_SKP2-SKP1-CDK2P2-CYCA_available_cdk2p2-cyca) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2-SKP1P1_CDK2P1-CYCA_SKP2-SKP1P1-CDK2P1-CYCA_available_skp2-skp1p1-cdk2p1-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1P1_CDK2P1-CYCA_SKP2-SKP1P1-CDK2P1-CYCA_available_skp2-skp1p1) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1P1_CDK2P1-CYCA_SKP2-SKP1P1-CDK2P1-CYCA_available_cdk2p1-cyca) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2-SKP1P1_CDK2P1P2-CYCA_SKP2-SKP1P1-CDK2P1P2-CYCA_available_skp2-skp1p1-cdk2p1p2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1P1_CDK2P1P2-CYCA_SKP2-SKP1P1-CDK2P1P2-CYCA_available_skp2-skp1p1) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1P1_CDK2P1P2-CYCA_SKP2-SKP1P1-CDK2P1P2-CYCA_available_cdk2p1p2-cyca) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2-SKP1P1_CDK2P2-CYCA_SKP2-SKP1P1-CDK2P2-CYCA_available_skp2-skp1p1-cdk2p2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1P1_CDK2P2-CYCA_SKP2-SKP1P1-CDK2P2-CYCA_available_skp2-skp1p1) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2-SKP1P1_CDK2P2-CYCA_SKP2-SKP1P1-CDK2P2-CYCA_available_cdk2p2-cyca) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2_SKP1P1_SKP2-SKP1P1_available_skp2-skp1p1) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_SKP1P1_SKP2-SKP1P1_available_skp2) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_SKP1P1_SKP2-SKP1P1_available_skp1p1) 0.5)
  (cpt (openprec_SYNTHESIZE_CEBP-PRB-GP_P_available_cebp-prb-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_CEBP-PRB-GP_P_available_p) 0.5)
  (cpt (possclob_SYNTHESIZE_CEBP-PRB-GP_P_available_cebp-prb-gp) 0.5)
  (cpt (openprec_SYNTHESIZE_CEBP-PRBP2-GP_P_available_cebp-prbp2-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_CEBP-PRBP2-GP_P_available_p) 0.5)
  (cpt (openprec_SYNTHESIZE_JUN-C-FOS-GERCC1_ERCC1_available_jun-c-fos-gercc1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_JUN-C-FOS-GERCC1_ERCC1_available_ercc1) 0.5)
  (cpt (openprec_SYNTHESIZE_PRB-JUN-C-FOS-GERCC1_ERCC1_available_prb-jun-c-fos-gercc1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_PRB-JUN-C-FOS-GERCC1_ERCC1_available_ercc1) 0.5)
  (cpt (possclob_SYNTHESIZE_PRB-JUN-C-FOS-GERCC1_ERCC1_available_prb-jun-c-fos-gercc1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_PRBP1-JUN-C-FOS-GERCC1_ERCC1_available_ercc1) 0.5)
  (cpt (possclob_SYNTHESIZE_PRBP1-JUN-C-FOS-GERCC1_ERCC1_available_prbp1-jun-c-fos-gercc1) 0.5)
  (cpt (openprec_SYNTHESIZE_PRBP1P2-JUN-C-FOS-GERCC1_ERCC1_available_prbp1p2-jun-c-fos-gercc1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_PRBP1P2-JUN-C-FOS-GERCC1_ERCC1_available_ercc1) 0.5)
  (cpt (possclob_SYNTHESIZE_PRBP1P2-JUN-C-FOS-GERCC1_ERCC1_available_prbp1p2-jun-c-fos-gercc1) 0.5)
  (cpt (openprec_SYNTHESIZE_PRBP2-JUN-C-FOS-GERCC1_ERCC1_available_prbp2-jun-c-fos-gercc1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_PRBP2-JUN-C-FOS-GERCC1_ERCC1_available_ercc1) 0.5)
  (cpt (possclob_SYNTHESIZE_PRBP2-JUN-C-FOS-GERCC1_ERCC1_available_prbp2-jun-c-fos-gercc1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK2-CYCA_CDK7-CYCH_CDK2P2-CYCA_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK2-CYCA_CDK7-CYCH_CDK2P2-CYCA_available_cdk2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK2-CYCA_WEE1_CDK2P1-CYCA_available_cdk2-cyca) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK2-CYCE_CDK7-CYCH_CDK2P2-CYCE_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK2-CYCE_CDK7-CYCH_CDK2P2-CYCE_available_cdk2-cyce) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK2-CYCEP1_CDK7-CYCH_CDK2P2-CYCEP1_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK2-CYCEP1_CDK7-CYCH_CDK2P2-CYCEP1_available_cdk2-cycep1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK2P1-CYCA_CDK7-CYCH_CDK2P1P2-CYCA_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK2P1-CYCA_CDK7-CYCH_CDK2P1P2-CYCA_available_cdk2p1-cyca) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK2P1-CYCE_CDK7-CYCH_CDK2P1P2-CYCE_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK2P1-CYCE_CDK7-CYCH_CDK2P1P2-CYCE_available_cdk2p1-cyce) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK2P1-CYCEP1_CDK7-CYCH_CDK2P1P2-CYCEP1_available_cdk2p1-cycep1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK2P2-CYCA_WEE1_CDK2P1P2-CYCA_available_wee1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK2P2-CYCA_WEE1_CDK2P1P2-CYCA_available_cdk2p2-cyca) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK46P1-CYCD_CDK7-CYCH_CDK46P1P2-CYCD_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK46P1-CYCD_CDK7-CYCH_CDK46P1P2-CYCD_available_cdk46p1-cycd) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK46P1-CYCDP1_CDK7-CYCH_CDK46P1P2-CYCDP1_available_cdk7-cych) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CYCA_SKP2P1-SKP1_SKP2P1-SKP1_available_skp2p1-skp1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CYCA_SKP2P1-SKP1_SKP2P1-SKP1_available_cyca) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CYCA_SKP2P1-SKP1P1_SKP2P1-SKP1P1_available_skp2p1-skp1p1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CYCA_SKP2-SKP1_SKP2-SKP1_available_cyca) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CYCA_SKP2-SKP1P1_SKP2-SKP1P1_available_skp2-skp1p1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CYCA_SKP2-SKP1P1_SKP2-SKP1P1_available_cyca) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CYCE_CDK2P2-CYCE_CYCEP1_available_cdk2p2-cyce) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CYCE_CDK2P2-CYCE_CYCEP1_available_cyce) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CYCE_CDK2P2-CYCEP1_CYCEP1_available_cdk2p2-cycep1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CYCE_CDK2P2-CYCEP1_CYCEP1_available_cyce) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_DP12_CDK2P2-CYCA_DP12P1_available_dp12) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_P68_CDK2P2-CYCA_P68P2_available_cdk2p2-cyca) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_P68_CDK2P2-CYCEP1_P68P1_available_cdk2p2-cycep1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_P68_CDK2P2-CYCEP1_P68P1_available_p68) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_P68_CDK2P2-CYCE_P68P1_available_cdk2p2-cyce) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_PRBP1_CDK2P2-CYCEP1_PRBP1P2_available_prbp1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_PRBP1_CDK2P2-CYCE_PRBP1P2_available_cdk2p2-cyce) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_SKP1_CDK2P2-CYCA_SKP1P1_available_cdk2p2-cyca) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_SKP2_CDK2P2-CYCA_SKP2P1_available_cdk2p2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_SKP2_CDK2P2-CYCA_SKP2P1_available_skp2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK1P1P2_GADD45_CDK1P1P2-GADD45_available_cdk1p1p2-gadd45) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P1P2_GADD45_CDK1P1P2-GADD45_available_cdk1p1p2) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P1P2_GADD45_CDK1P1P2-GADD45_available_gadd45) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK1P1P2P3_GADD45_CDK1P1P2P3-GADD45_available_cdk1p1p2p3-gadd45) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P1P2P3_GADD45_CDK1P1P2P3-GADD45_available_cdk1p1p2p3) 0.5)
  (cpt (possclob_ASSOCIATE_CDK1P1P2P3_GADD45_CDK1P1P2P3-GADD45_available_gadd45) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK2_CYCA_CDK2-CYCA_available_cdk2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2_CYCA_CDK2-CYCA_available_cdk2) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2_CYCA_CDK2-CYCA_available_cyca) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK2_CYCE_CDK2-CYCE_available_cdk2-cyce) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2_CYCE_CDK2-CYCE_available_cdk2) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2_CYCE_CDK2-CYCE_available_cyce) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cdk2p1-cycep1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cdk2p1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P1_CYCEP1_CDK2P1-CYCEP1_available_cycep1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK2P1P2_CYCE_CDK2P1P2-CYCE_available_cdk2p1p2-cyce) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P1P2_CYCE_CDK2P1P2-CYCE_available_cyce) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P1P2_CYCE_CDK2P1P2-CYCE_available_cdk2p1p2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK2P2_CYCA_CDK2P2-CYCA_available_cdk2p2-cyca) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P2_CYCA_CDK2P2-CYCA_available_cyca) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P2_CYCA_CDK2P2-CYCA_available_cdk2p2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK2P2_CYCE_CDK2P2-CYCE_available_cdk2p2-cyce) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P2_CYCE_CDK2P2-CYCE_available_cyce) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P2_CYCE_CDK2P2-CYCE_available_cdk2p2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cdk46p1-cycd) 0.5)
  (cpt (possclob_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cdk46p1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cycd) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cdk46p1-cycdp1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cdk46p1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK46P1_CYCDP1_CDK46P1-CYCDP1_available_cycdp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK46P1P2_CYCD_CDK46P1P2-CYCD_available_cdk46p1p2-cycd) 0.5)
  (cpt (possclob_ASSOCIATE_CDK46P1P2_CYCD_CDK46P1P2-CYCD_available_cycd) 0.5)
  (cpt (possclob_ASSOCIATE_CDK46P1P2_CYCD_CDK46P1P2-CYCD_available_cdk46p1p2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK46P1P2_CYCDP1_CDK46P1P2-CYCDP1_available_cdk46p1p2-cycdp1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK46P1P2_CYCDP1_CDK46P1P2-CYCDP1_available_cdk46p1p2) 0.5)
  (cpt (possclob_ASSOCIATE_CDK46P1P2_CYCDP1_CDK46P1P2-CYCDP1_available_cycdp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK7P1_CYCH_CDK7P1-CYCH_available_cdk7p1-cych) 0.5)
  (cpt (possclob_ASSOCIATE_CDK7P1_CYCH_CDK7P1-CYCH_available_cdk7p1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK7P1_CYCH_CDK7P1-CYCH_available_cych) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CEBP-PRB_GP_CEBP-PRB-GP_available_cebp-prb-gp) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP-PRB_GP_CEBP-PRB-GP_available_cebp-prb) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP-PRB_GP_CEBP-PRB-GP_available_gp) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CEBP-PRBP2_GP_CEBP-PRBP2-GP_available_cebp-prbp2-gp) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP-PRBP2_GP_CEBP-PRBP2-GP_available_cebp-prbp2) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP-PRBP2_GP_CEBP-PRBP2-GP_available_gp) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_HDAC1_PRB-E2F4-DP12_HDAC1-PRB-E2F4-DP12_available_hdac1-prb-e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F4-DP12_HDAC1-PRB-E2F4-DP12_available_prb-e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F4-DP12_HDAC1-PRB-E2F4-DP12_available_hdac1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_JUN-C-FOS_GERCC1_JUN-C-FOS-GERCC1_available_jun-c-fos-gercc1) 0.5)
  (cpt (possclob_ASSOCIATE_JUN-C-FOS_GERCC1_JUN-C-FOS-GERCC1_available_gercc1) 0.5)
  (cpt (possclob_ASSOCIATE_JUN-C-FOS_GERCC1_JUN-C-FOS-GERCC1_available_jun-c-fos) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_JUN_C-FOS_JUN-C-FOS_available_jun-c-fos) 0.5)
  (cpt (possclob_ASSOCIATE_JUN_C-FOS_JUN-C-FOS_available_jun) 0.5)
  (cpt (possclob_ASSOCIATE_JUN_C-FOS_JUN-C-FOS_available_c-fos) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_M1433_CDC25CP2_M1433-CDC25CP2_available_m1433-cdc25cp2) 0.5)
  (cpt (possclob_ASSOCIATE_M1433_CDC25CP2_M1433-CDC25CP2_available_m1433) 0.5)
  (cpt (possclob_ASSOCIATE_M1433_CDC25CP2_M1433-CDC25CP2_available_cdc25cp2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_MDM2_E2F13P1-DP12_MDM2-E2F13P1-DP12_available_mdm2-e2f13p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_E2F13P1-DP12_MDM2-E2F13P1-DP12_available_mdm2) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_E2F13P1-DP12_MDM2-E2F13P1-DP12_available_e2f13p1-dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_MDM2_E2F13P1-DP12P1_MDM2-E2F13P1-DP12P1_available_mdm2-e2f13p1-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_E2F13P1-DP12P1_MDM2-E2F13P1-DP12P1_available_mdm2) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_E2F13P1-DP12P1_MDM2-E2F13P1-DP12P1_available_e2f13p1-dp12p1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_MDM2_PRB_MDM2-PRB_available_mdm2-prb) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRB_MDM2-PRB_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRB_MDM2-PRB_available_mdm2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_MDM2_PRBP1_MDM2-PRBP1_available_mdm2-prbp1) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRBP1_MDM2-PRBP1_available_mdm2) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRBP1_MDM2-PRBP1_available_prbp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_MDM2_PRBP1P2_MDM2-PRBP1P2_available_mdm2-prbp1p2) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRBP1P2_MDM2-PRBP1P2_available_prbp1p2) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRBP1P2_MDM2-PRBP1P2_available_mdm2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_MDM2_PRBP2_MDM2-PRBP2_available_mdm2-prbp2) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRBP2_MDM2-PRBP2_available_prbp2) 0.5)
  (cpt (possclob_ASSOCIATE_MDM2_PRBP2_MDM2-PRBP2_available_mdm2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P16_CDK46P1P2_P16-CDK46P1P2_available_p16-cdk46p1p2) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK46P1P2_P16-CDK46P1P2_available_cdk46p1p2) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK46P1P2_P16-CDK46P1P2_available_p16) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P16_CDK7P1_P16-CDK7P1_available_p16-cdk7p1) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK7P1_P16-CDK7P1_available_cdk7p1) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK7P1_P16-CDK7P1_available_p16) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB-JUN_C-FOS_PRB-JUN-C-FOS_available_prb-jun-c-fos) 0.5)
  (cpt (possclob_ASSOCIATE_PRB-JUN_C-FOS_PRB-JUN-C-FOS_available_prb-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRB-JUN_C-FOS_PRB-JUN-C-FOS_available_c-fos) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_E2F13-DP12_PRBP1-E2F13-DP12_available_prbp1-e2f13-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F13-DP12_PRBP1-E2F13-DP12_available_prbp1) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F13-DP12_PRBP1-E2F13-DP12_available_e2f13-dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_E2F13P1-DP12P1_PRBP1-E2F13P1-DP12P1_available_prbp1-e2f13p1-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F13P1-DP12P1_PRBP1-E2F13P1-DP12P1_available_prbp1) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F13P1-DP12P1_PRBP1-E2F13P1-DP12P1_available_e2f13p1-dp12p1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_E2F4-DP12_PRBP1-E2F4-DP12_available_prbp1-e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F4-DP12_PRBP1-E2F4-DP12_available_e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_E2F4-DP12_PRBP1-E2F4-DP12_available_prbp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1-JUN-C-FOS_GERCC1_PRBP1-JUN-C-FOS-GERCC1_available_prbp1-jun-c-fos-gercc1) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1-JUN-C-FOS_GERCC1_PRBP1-JUN-C-FOS-GERCC1_available_gercc1) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1-JUN-C-FOS_GERCC1_PRBP1-JUN-C-FOS-GERCC1_available_prbp1-jun-c-fos) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1-JUN_C-FOS_PRBP1-JUN-C-FOS_available_prbp1-jun-c-fos) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1-JUN_C-FOS_PRBP1-JUN-C-FOS_available_prbp1-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1-JUN_C-FOS_PRBP1-JUN-C-FOS_available_c-fos) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1_JUN_PRBP1-JUN_available_prbp1-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_JUN_PRBP1-JUN_available_jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1_JUN_PRBP1-JUN_available_prbp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP1P2-JUN_C-FOS_PRBP1P2-JUN-C-FOS_available_prbp1p2-jun-c-fos) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1P2-JUN_C-FOS_PRBP1P2-JUN-C-FOS_available_prbp1p2-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP1P2-JUN_C-FOS_PRBP1P2-JUN-C-FOS_available_c-fos) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP2-JUN_C-FOS_PRBP2-JUN-C-FOS_available_prbp2-jun-c-fos) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP2-JUN_C-FOS_PRBP2-JUN-C-FOS_available_prbp2-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP2-JUN_C-FOS_PRBP2-JUN-C-FOS_available_c-fos) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SP1-P107_GP_SP1-P107-GP_available_sp1-p107-gp) 0.5)
  (cpt (possclob_ASSOCIATE_SP1-P107_GP_SP1-P107-GP_available_gp) 0.5)
  (cpt (possclob_ASSOCIATE_SP1-P107_GP_SP1-P107-GP_available_sp1-p107) 0.5)
  (cpt (openprec_SYNTHESIZE_CEBP-GP_P_available_cebp-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_P53_C-FOS_available_c-fos) 0.5)
  (cpt (possclob_SYNTHESIZE_P53_C-FOS_available_p53) 0.5)
  (cpt (openprec_SYNTHESIZE_P53_GADD45_available_p53) 0.5)
  (cpt (possclob_SYNTHESIZE_P53_GADD45_available_p53) 0.5)
  (cpt (openprec_SYNTHESIZE_P53_MDM2_available_p53) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_P53_MDM2_available_mdm2) 0.5)
  (cpt (possclob_SYNTHESIZE_P53_MDM2_available_p53) 0.5)
  (cpt (openprec_SYNTHESIZE_P53P1_C-FOS_available_p53p1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_P53P1_C-FOS_available_c-fos) 0.5)
  (cpt (openprec_SYNTHESIZE_P53P1_GADD45_available_p53p1) 0.5)
  (cpt (possclob_SYNTHESIZE_P53P1_GADD45_available_p53p1) 0.5)
  (cpt (openprec_SYNTHESIZE_P53P1_MDM2_available_p53p1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_P53P1_MDM2_available_mdm2) 0.5)
  (cpt (possclob_SYNTHESIZE_P53P1_MDM2_available_p53p1) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_P53P1_P21_available_p21) 0.5)
  (cpt (possclob_SYNTHESIZE_P53P1_P21_available_p53p1) 0.5)
  (cpt (openprec_SYNTHESIZE_P53_P21_available_p53) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_P53_P21_available_p21) 0.5)
  (cpt (possclob_SYNTHESIZE_P53_P21_available_p53) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_C-MYC_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_CYCA_available_cyca) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_CYCD_available_sp1-gp) 0.5)
  (cpt (possclob_SYNTHESIZE_SP1-GP_CYCD_available_sp1-gp) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_CYCDP1_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_CYCDP1_available_cycdp1) 0.5)
  (cpt (possclob_SYNTHESIZE_SP1-GP_CYCDP1_available_sp1-gp) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_CYCE_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_CYCE_available_cyce) 0.5)
  (cpt (possclob_SYNTHESIZE_SP1-GP_CYCE_available_sp1-gp) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_CYCEP1_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_CYCEP1_available_cycep1) 0.5)
  (cpt (possclob_SYNTHESIZE_SP1-GP_CYCEP1_available_sp1-gp) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_P107_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_P107_available_p107) 0.5)
  (cpt (possclob_SYNTHESIZE_SP1-GP_P107_available_sp1-gp) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_P107P1_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_P107P1_available_p107p1) 0.5)
  (cpt (possclob_SYNTHESIZE_SP1-GP_P107P1_available_sp1-gp) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_P19ARF_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_P19ARF_available_p19arf) 0.5)
  (cpt (possclob_SYNTHESIZE_SP1-GP_P19ARF_available_sp1-gp) 0.5)
  (cpt (openprec_SYNTHESIZE_SP1-GP_POL_available_sp1-gp) 0.5)
  (cpt (unlistedeffect_SYNTHESIZE_SP1-GP_POL_available_pol) 0.5)
  (cpt (possclob_SYNTHESIZE_SP1-GP_POL_available_sp1-gp) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDC25C_C-TAK1_CDC25CP2_available_c-tak1) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDC25C_C-TAK1_CDC25CP2_available_cdc25c) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK1P1P2_CDK7-CYCH_CDK1P1P2P3_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK1P1P2_CDK7-CYCH_CDK1P1P2P3_available_cdk1p1p2) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK2_CDK7-CYCH_CDK2P2_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK2_CDK7-CYCH_CDK2P2_available_cdk2) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK2-CYCB_WEE1_CDK2P1-CYCB_available_wee1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK2P1_CDK7-CYCH_CDK2P1P2_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK2P1_CDK7-CYCH_CDK2P1P2_available_cdk2p1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK46P1_CDK7-CYCH_CDK46P1P2_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK46P1_CDK7-CYCH_CDK46P1P2_available_cdk46p1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK7_CDK7-CYCH_CDK7P1_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK7_CDK7-CYCH_CDK7P1_available_cdk7) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_CDK7-CYCH_CDK7-CYCH_CDK7P1-CYCH_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_CDK7-CYCH_CDK7-CYCH_CDK7P1-CYCH_available_cdk7-cych) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_PRB_CDK46P3-CYCDP1_PRBP1_available_cdk46p3-cycdp1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_PRB_CDK46P3-CYCD_PRBP1_available_cdk46p3-cycd) 0.5)
  (cpt (possclob_ASSOCIATE-WITH-CATALYZE_PRB_CDK46P3-CYCD_PRBP1_available_prb) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCDP1_PRBP1P2_available_cdk46p3-cycdp1) 0.5)
  (cpt (openprec_ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCD_PRBP1P2_available_cdk46p3-cycd) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK2P1_CKS1_CDK2P1-CKS1_available_cdk2p1-cks1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P1_CKS1_CDK2P1-CKS1_available_cdk2p1) 0.5)
  (cpt (possclob_ASSOCIATE_CDK2P1_CKS1_CDK2P1-CKS1_available_cks1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CDK7_CYCH_CDK7-CYCH_available_cdk7-cych) 0.5)
  (cpt (possclob_ASSOCIATE_CDK7_CYCH_CDK7-CYCH_available_cdk7) 0.5)
  (cpt (possclob_ASSOCIATE_CDK7_CYCH_CDK7-CYCH_available_cych) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CEBP_PRB_CEBP-PRB_available_cebp-prb) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP_PRB_CEBP-PRB_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP_PRB_CEBP-PRB_available_cebp) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_CEBP_PRBP2_CEBP-PRBP2_available_cebp-prbp2) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP_PRBP2_CEBP-PRBP2_available_prbp2) 0.5)
  (cpt (possclob_ASSOCIATE_CEBP_PRBP2_CEBP-PRBP2_available_cebp) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_e2f1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_e2f1) 0.5)
  (cpt (possclob_ASSOCIATE_E2F1_DP12_E2F1-DP12_available_dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_E2F2_DP12_E2F2-DP12_available_e2f2-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F2_DP12_E2F2-DP12_available_e2f2) 0.5)
  (cpt (possclob_ASSOCIATE_E2F2_DP12_E2F2-DP12_available_dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_E2F3_DP12_E2F3-DP12_available_e2f3-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F3_DP12_E2F3-DP12_available_dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F3_DP12_E2F3-DP12_available_e2f3) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_E2F4_DP12_E2F4-DP12_available_e2f4-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F4_DP12_E2F4-DP12_available_dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F4_DP12_E2F4-DP12_available_e2f4) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_E2F5_DP12_E2F5-DP12_available_e2f5-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F5_DP12_E2F5-DP12_available_dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F5_DP12_E2F5-DP12_available_e2f5) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_E2F6_DP12_E2F6-DP12_available_e2f6-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F6_DP12_E2F6-DP12_available_dp12) 0.5)
  (cpt (possclob_ASSOCIATE_E2F6_DP12_E2F6-DP12_available_e2f6) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_HDAC1_PRB-E2F13-DP12_HDAC1-PRB-E2F13-DP12_available_hdac1-prb-e2f13-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F13-DP12_HDAC1-PRB-E2F13-DP12_available_prb-e2f13-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F13-DP12_HDAC1-PRB-E2F13-DP12_available_hdac1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_HDAC1_PRB-E2F13P1-DP12P1_HDAC1-PRB-E2F13P1-DP12P1_available_hdac1-prb-e2f13p1-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F13P1-DP12P1_HDAC1-PRB-E2F13P1-DP12P1_available_prb-e2f13p1-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F13P1-DP12P1_HDAC1-PRB-E2F13P1-DP12P1_available_hdac1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_HDAC1_PRB-E2F4P1-DP12_HDAC1-PRB-E2F4P1-DP12_available_hdac1-prb-e2f4p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F4P1-DP12_HDAC1-PRB-E2F4P1-DP12_available_prb-e2f4p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_HDAC1_PRB-E2F4P1-DP12_HDAC1-PRB-E2F4P1-DP12_available_hdac1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16-cdk46p1) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_cdk46p1) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_P16_CDK7_P16-CDK7_available_p16-cdk7) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK7_P16-CDK7_available_cdk7) 0.5)
  (cpt (possclob_ASSOCIATE_P16_CDK7_P16-CDK7_available_p16) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB_E2F13-DP12_PRB-E2F13-DP12_available_prb-e2f13-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13-DP12_PRB-E2F13-DP12_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13-DP12_PRB-E2F13-DP12_available_e2f13-dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB_E2F13P1-DP12P1_PRB-E2F13P1-DP12P1_available_prb-e2f13p1-dp12p1) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13P1-DP12P1_PRB-E2F13P1-DP12P1_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13P1-DP12P1_PRB-E2F13P1-DP12P1_available_e2f13p1-dp12p1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB_E2F13P1-DP12_PRB-E2F13P1-DP12_available_prb-e2f13p1-dp12) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13P1-DP12_PRB-E2F13P1-DP12_available_prb) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_E2F13P1-DP12_PRB-E2F13P1-DP12_available_e2f13p1-dp12) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRB_JUN_PRB-JUN_available_prb-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_JUN_PRB-JUN_available_jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRB_JUN_PRB-JUN_available_prb) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_PRBP2_JUN_PRBP2-JUN_available_prbp2-jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP2_JUN_PRBP2-JUN_available_jun) 0.5)
  (cpt (possclob_ASSOCIATE_PRBP2_JUN_PRBP2-JUN_available_prbp2) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SKP2_SKP1_SKP2-SKP1_available_skp2-skp1) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_SKP1_SKP2-SKP1_available_skp2) 0.5)
  (cpt (possclob_ASSOCIATE_SKP2_SKP1_SKP2-SKP1_available_skp1) 0.5)
  (cpt (unlistedeffect_ASSOCIATE_SP1_GP_SP1-GP_available_sp1-gp) 0.5)
  (cpt (possclob_ASSOCIATE_SP1_GP_SP1-GP_available_gp) 0.5)
  (cpt (possclob_ASSOCIATE_SP1_GP_SP1-GP_available_sp1) 0.5)
 )
 (:goal 0.000001
 (and (done)))
)
