(define (domain GROUNDED-PATHWAYS-PROPOSITIONAL)
 (:requirements :probabilistic-effects)
 (:predicates (available_c-myc) (available_sp1-p107p1-gp) (not-chosen_c-tak1) (available_cks1) (available_prbp2-ap2) (available_cdk46p1-cycd) (FOO) (available_ap2) (not-chosen_prb) (available_e2f4-dp12p1) (not-chosen_sp1) (available_prbp2) (available_prbp1) (available_p107) (chosen_cdc25c) (available_hdac1) (chosen_c-tak1) (not-chosen_cks1) (chosen_rpa) (chosen_hdac1) (chosen_cdk1p1p2) (not-chosen_gp) (available_cdc25cp2) (available_cdk2p2-cycb) (chosen_e2f4-dp12p1) (available_p19arf) (available_cdk46p1) (chosen_p130) (available_sp1-p107p1) (num-subs_l0) (num-subs_l2) (num-subs_l1) (not-chosen_cdk46p1) (available_sp1-gp) (available_sp1-p107) (num-subs_l3) (available_sp1-p107-gp) (not-chosen_ap2) (chosen_wee1) (available_cdk1p1p2-cks1) (not-chosen_cdk46p3-cycd) (available_c-tak1) (available_cdc25c) (available_c-myc-ap2) (available_cdk46p1-cycdp1) (chosen_prb) (available_p107-e2f4-dp12p1) (available_prbp1-ap2) (available_hdac1-p130-e2f4-dp12p1) (available_p16) (chosen_prbp2) (not-chosen_p130) (available_chk1) (available_hdac1-p107-e2f4-dp12p1) (available_p130) (available_cycep1) (not-chosen_p16) (available_cdk46p3-cycd) (chosen_cdk46p3-cycd) (available_rpa) (not-chosen_cdc25c) (chosen_chk1) (not-chosen_cdk1p1p2) (available_cycdp1) (chosen_cks1) (chosen_gp) (chosen_cdk46p1) (available_cdk1p1p2) (chosen_ap2) (not-chosen_prbp2) (available_p16-cdk46p1) (goal1_) (available_prb) (available_prb-e2f4-dp12p1) (available_wee1) (available_p130-e2f4-dp12p1) (not-chosen_hdac1) (available_cdk2p1p2-cycb) (available_prbp1p2) (available_prbp1p2-ap2) (goal2_) (available_pol) (not-chosen_chk1) (goal3_) (available_gp) (available_prb-ap2) (available_sp1) (chosen_sp1) (available_cyca) (chosen_p16) (not-chosen_e2f4-dp12p1) (available_cyce) (available_cycd) (available_prbp1-e2f4-dp12p1) (not-chosen_wee1) (available_p107p1) (chosen_cdk2p2-cycb) (not-chosen_rpa) (not-chosen_cdk2p2-cycb) (available_rpa-cyca) (unlistedeffect_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cdk46p1-cycd) (possclob_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cdk46p1) (possclob_ASSOCIATE_CDK46P1_CYCD_CDK46P1-CYCD_available_cycd) (unlistedeffect_ASSOCIATE_HDAC1_P107-E2F4-DP12P1_HDAC1-P107-E2F4-DP12P1_available_hdac1-p107-e2f4-dp12p1) (possclob_ASSOCIATE_HDAC1_P107-E2F4-DP12P1_HDAC1-P107-E2F4-DP12P1_available_hdac1) (possclob_ASSOCIATE_HDAC1_P107-E2F4-DP12P1_HDAC1-P107-E2F4-DP12P1_available_p107-e2f4-dp12p1) (unlistedeffect_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_prbp1-ap2) (possclob_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_prbp1) (possclob_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_ap2) (unlistedeffect_ASSOCIATE_PRBP1_E2F4-DP12P1_PRBP1-E2F4-DP12P1_available_prbp1-e2f4-dp12p1) (possclob_ASSOCIATE_PRBP1_E2F4-DP12P1_PRBP1-E2F4-DP12P1_available_prbp1) (possclob_ASSOCIATE_PRBP1_E2F4-DP12P1_PRBP1-E2F4-DP12P1_available_e2f4-dp12p1) (unlistedeffect_ASSOCIATE_PRBP1P2_AP2_PRBP1P2-AP2_available_prbp1p2-ap2) (possclob_ASSOCIATE_PRBP1P2_AP2_PRBP1P2-AP2_available_prbp1p2) (possclob_ASSOCIATE_PRBP1P2_AP2_PRBP1P2-AP2_available_ap2) (unlistedeffect_ASSOCIATE_SP1-P107_GP_SP1-P107-GP_available_sp1-p107-gp) (possclob_ASSOCIATE_SP1-P107_GP_SP1-P107-GP_available_gp) (possclob_ASSOCIATE_SP1-P107_GP_SP1-P107-GP_available_sp1-p107) (unlistedeffect_SYNTHESIZE_SP1-GP_CYCDP1_available_cycdp1) (unlistedeffect_SYNTHESIZE_SP1-GP_CYCEP1_available_cycep1) (unlistedeffect_SYNTHESIZE_SP1-GP_P19ARF_available_p19arf) (possclob_SYNTHESIZE_SP1-GP_POL_available_sp1-gp) (possclob_ASSOCIATE-WITH-CATALYZE_CDC25C_CHK1_CDC25CP2_available_cdc25c) (openprec_ASSOCIATE-WITH-CATALYZE_PRB_CDK46P3-CYCD_PRBP1_available_cdk46p3-cycd) (openprec_ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCD_PRBP1P2_available_cdk46p3-cycd) (possclob_ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCD_PRBP1P2_available_prbp2) (unlistedeffect_ASSOCIATE_HDAC1_P130-E2F4-DP12P1_HDAC1-P130-E2F4-DP12P1_available_hdac1-p130-e2f4-dp12p1) (possclob_ASSOCIATE_HDAC1_P130-E2F4-DP12P1_HDAC1-P130-E2F4-DP12P1_available_hdac1) (possclob_ASSOCIATE_HDAC1_P130-E2F4-DP12P1_HDAC1-P130-E2F4-DP12P1_available_p130-e2f4-dp12p1) (unlistedeffect_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16-cdk46p1) (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_cdk46p1) (possclob_ASSOCIATE_P16_CDK46P1_P16-CDK46P1_available_p16) (unlistedeffect_ASSOCIATE_SP1_GP_SP1-GP_available_sp1-gp) (possclob_ASSOCIATE_SP1_GP_SP1-GP_available_gp) (possclob_ASSOCIATE_SP1_GP_SP1-GP_available_sp1) (valid) (done))

 (:action CHOOSE_AP2_L3_L2
  :effect (and
    (when (and (and (not-chosen_ap2) (num-subs_l2)) (valid)) (chosen_ap2))
    (when (and (and (not-chosen_ap2) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_ap2) (num-subs_l2)) (valid)) (not (not-chosen_ap2)))
    (when (and (and (not-chosen_ap2) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_ap2) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDC25C_L3_L2
  :effect (and
    (when (and (and (not-chosen_cdc25c) (num-subs_l2)) (valid)) (chosen_cdc25c))
    (when (and (and (not-chosen_cdc25c) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_cdc25c) (num-subs_l2)) (valid)) (not (not-chosen_cdc25c)))
    (when (and (and (not-chosen_cdc25c) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_cdc25c) (num-subs_l2)) (valid))) (not (valid)))
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

 (:action CHOOSE_CDK2P2-CYCB_L3_L2
  :effect (and
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l2)) (valid)) (chosen_cdk2p2-cycb))
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l2)) (valid)) (not (not-chosen_cdk2p2-cycb)))
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_cdk2p2-cycb) (num-subs_l2)) (valid))) (not (valid)))
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

 (:action CHOOSE_CDK46P3-CYCD_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_cdk46p3-cycd)) (valid)) (chosen_cdk46p3-cycd))
    (when (and (and (num-subs_l2) (not-chosen_cdk46p3-cycd)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_cdk46p3-cycd)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_cdk46p3-cycd)) (valid)) (not (not-chosen_cdk46p3-cycd)))
    (when (not (and (and (num-subs_l2) (not-chosen_cdk46p3-cycd)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CHK1_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_chk1)) (valid)) (chosen_chk1))
    (when (and (and (num-subs_l2) (not-chosen_chk1)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_chk1)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_chk1)) (valid)) (not (not-chosen_chk1)))
    (when (not (and (and (num-subs_l2) (not-chosen_chk1)) (valid))) (not (valid)))
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

 (:action CHOOSE_C-TAK1_L3_L2
  :effect (and
    (when (and (and (not-chosen_c-tak1) (num-subs_l2)) (valid)) (chosen_c-tak1))
    (when (and (and (not-chosen_c-tak1) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_c-tak1) (num-subs_l2)) (valid)) (not (not-chosen_c-tak1)))
    (when (and (and (not-chosen_c-tak1) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_c-tak1) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F4-DP12P1_L3_L2
  :effect (and
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l2)) (valid)) (chosen_e2f4-dp12p1))
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l2)) (valid)) (not (not-chosen_e2f4-dp12p1)))
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_e2f4-dp12p1) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GP_L3_L2
  :effect (and
    (when (and (and (not-chosen_gp) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_gp) (num-subs_l2)) (valid)) (chosen_gp))
    (when (and (and (not-chosen_gp) (num-subs_l2)) (valid)) (not (not-chosen_gp)))
    (when (and (and (not-chosen_gp) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_gp) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_HDAC1_L3_L2
  :effect (and
    (when (and (and (not-chosen_hdac1) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_hdac1) (num-subs_l2)) (valid)) (chosen_hdac1))
    (when (and (and (not-chosen_hdac1) (num-subs_l2)) (valid)) (not (not-chosen_hdac1)))
    (when (and (and (not-chosen_hdac1) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_hdac1) (num-subs_l2)) (valid))) (not (valid)))
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

 (:action CHOOSE_PRB_L3_L2
  :effect (and
    (when (and (and (not-chosen_prb) (num-subs_l2)) (valid)) (chosen_prb))
    (when (and (and (not-chosen_prb) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_prb) (num-subs_l2)) (valid)) (not (not-chosen_prb)))
    (when (and (and (not-chosen_prb) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_prb) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PRBP2_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_prbp2)) (valid)) (chosen_prbp2))
    (when (and (and (num-subs_l2) (not-chosen_prbp2)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_prbp2)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_prbp2)) (valid)) (not (not-chosen_prbp2)))
    (when (not (and (and (num-subs_l2) (not-chosen_prbp2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_RPA_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_rpa)) (valid)) (chosen_rpa))
    (when (and (and (num-subs_l2) (not-chosen_rpa)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_rpa)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_rpa)) (valid)) (not (not-chosen_rpa)))
    (when (not (and (and (num-subs_l2) (not-chosen_rpa)) (valid))) (not (valid)))
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

 (:action CHOOSE_WEE1_L3_L2
  :effect (and
    (when (and (and (not-chosen_wee1) (num-subs_l2)) (valid)) (chosen_wee1))
    (when (and (and (not-chosen_wee1) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_wee1) (num-subs_l2)) (valid)) (not (not-chosen_wee1)))
    (when (and (and (not-chosen_wee1) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_wee1) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-3-1
  :effect (and
    (when (and (and (available_hdac1-p107-e2f4-dp12p1)) (valid)) (goal3_))
    (when (not (and (and (available_hdac1-p107-e2f4-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-3-2
  :effect (and
    (when (and (and (available_cdk46p1-cycd)) (valid)) (goal3_))
    (when (not (and (and (available_cdk46p1-cycd)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-2-1
  :effect (and
    (when (and (and (available_sp1-p107p1-gp)) (valid)) (goal2_))
    (when (not (and (and (available_sp1-p107p1-gp)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-1-1
  :effect (and
    (when (and (and (available_sp1-p107-gp)) (valid)) (goal1_))
    (when (not (and (and (available_sp1-p107-gp)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-1-2
  :effect (and
    (when (and (and (available_prbp1-e2f4-dp12p1)) (valid)) (goal1_))
    (when (not (and (and (available_prbp1-e2f4-dp12p1)) (valid))) (not (valid)))
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
    (when (and (and (available_cdk46p1) (available_cycdp1)) (valid)) (available_cdk46p1-cycdp1))
    (when (and (and (available_cdk46p1) (available_cycdp1)) (valid)) (not (available_cdk46p1)))
    (when (and (and (available_cdk46p1) (available_cycdp1)) (valid)) (not (available_cycdp1)))
    (when (not (and (and (available_cdk46p1) (available_cycdp1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_C-MYC_AP2_C-MYC-AP2
  :effect (and
    (when (and (and (available_c-myc) (available_ap2)) (valid)) (available_c-myc-ap2))
    (when (and (and (available_c-myc) (available_ap2)) (valid)) (not (available_c-myc)))
    (when (and (and (available_c-myc) (available_ap2)) (valid)) (not (available_ap2)))
    (when (not (and (and (available_c-myc) (available_ap2)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_HDAC1_P107-E2F4-DP12P1_HDAC1-P107-E2F4-DP12P1
  :effect (and
    (when (and (and (available_hdac1) (available_p107-e2f4-dp12p1)) (valid) (unlistedeffect_ASSOCIATE_HDAC1_P107-E2F4-DP12P1_HDAC1-P107-E2F4-DP12P1_available_hdac1-p107-e2f4-dp12p1)) (available_hdac1-p107-e2f4-dp12p1))
    (when (and (and (available_hdac1) (available_p107-e2f4-dp12p1)) (valid) (possclob_ASSOCIATE_HDAC1_P107-E2F4-DP12P1_HDAC1-P107-E2F4-DP12P1_available_hdac1)) (not (available_hdac1)))
    (when (and (and (available_hdac1) (available_p107-e2f4-dp12p1)) (valid) (possclob_ASSOCIATE_HDAC1_P107-E2F4-DP12P1_HDAC1-P107-E2F4-DP12P1_available_p107-e2f4-dp12p1)) (not (available_p107-e2f4-dp12p1)))
    (when (not (and (and (available_hdac1) (available_p107-e2f4-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P107_E2F4-DP12P1_P107-E2F4-DP12P1
  :effect (and
    (when (and (and (available_p107) (available_e2f4-dp12p1)) (valid)) (available_p107-e2f4-dp12p1))
    (when (and (and (available_p107) (available_e2f4-dp12p1)) (valid)) (not (available_p107)))
    (when (and (and (available_p107) (available_e2f4-dp12p1)) (valid)) (not (available_e2f4-dp12p1)))
    (when (not (and (and (available_p107) (available_e2f4-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PRBP1_AP2_PRBP1-AP2
  :effect (and
    (when (and (and (available_prbp1) (available_ap2)) (valid) (unlistedeffect_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_prbp1-ap2)) (available_prbp1-ap2))
    (when (and (and (available_prbp1) (available_ap2)) (valid) (possclob_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_prbp1)) (not (available_prbp1)))
    (when (and (and (available_prbp1) (available_ap2)) (valid) (possclob_ASSOCIATE_PRBP1_AP2_PRBP1-AP2_available_ap2)) (not (available_ap2)))
    (when (not (and (and (available_prbp1) (available_ap2)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PRBP1_E2F4-DP12P1_PRBP1-E2F4-DP12P1
  :effect (and
    (when (and (and (available_prbp1) (available_e2f4-dp12p1)) (valid) (unlistedeffect_ASSOCIATE_PRBP1_E2F4-DP12P1_PRBP1-E2F4-DP12P1_available_prbp1-e2f4-dp12p1)) (available_prbp1-e2f4-dp12p1))
    (when (and (and (available_prbp1) (available_e2f4-dp12p1)) (valid) (possclob_ASSOCIATE_PRBP1_E2F4-DP12P1_PRBP1-E2F4-DP12P1_available_prbp1)) (not (available_prbp1)))
    (when (and (and (available_prbp1) (available_e2f4-dp12p1)) (valid) (possclob_ASSOCIATE_PRBP1_E2F4-DP12P1_PRBP1-E2F4-DP12P1_available_e2f4-dp12p1)) (not (available_e2f4-dp12p1)))
    (when (not (and (and (available_prbp1) (available_e2f4-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PRBP1P2_AP2_PRBP1P2-AP2
  :effect (and
    (when (and (and (available_prbp1p2) (available_ap2)) (valid) (unlistedeffect_ASSOCIATE_PRBP1P2_AP2_PRBP1P2-AP2_available_prbp1p2-ap2)) (available_prbp1p2-ap2))
    (when (and (and (available_prbp1p2) (available_ap2)) (valid) (possclob_ASSOCIATE_PRBP1P2_AP2_PRBP1P2-AP2_available_prbp1p2)) (not (available_prbp1p2)))
    (when (and (and (available_prbp1p2) (available_ap2)) (valid) (possclob_ASSOCIATE_PRBP1P2_AP2_PRBP1P2-AP2_available_ap2)) (not (available_ap2)))
    (when (not (and (and (available_prbp1p2) (available_ap2)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_RPA_CYCA_RPA-CYCA
  :effect (and
    (when (and (and (available_cyca) (available_rpa)) (valid)) (available_rpa-cyca))
    (when (and (and (available_cyca) (available_rpa)) (valid)) (not (available_cyca)))
    (when (and (and (available_cyca) (available_rpa)) (valid)) (not (available_rpa)))
    (when (not (and (and (available_cyca) (available_rpa)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_SP1-P107_GP_SP1-P107-GP
  :effect (and
    (when (and (and (available_gp) (available_sp1-p107)) (valid) (unlistedeffect_ASSOCIATE_SP1-P107_GP_SP1-P107-GP_available_sp1-p107-gp)) (available_sp1-p107-gp))
    (when (and (and (available_gp) (available_sp1-p107)) (valid) (possclob_ASSOCIATE_SP1-P107_GP_SP1-P107-GP_available_gp)) (not (available_gp)))
    (when (and (and (available_gp) (available_sp1-p107)) (valid) (possclob_ASSOCIATE_SP1-P107_GP_SP1-P107-GP_available_sp1-p107)) (not (available_sp1-p107)))
    (when (not (and (and (available_gp) (available_sp1-p107)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_SP1-P107P1_GP_SP1-P107P1-GP
  :effect (and
    (when (and (and (available_sp1-p107p1) (available_gp)) (valid)) (available_sp1-p107p1-gp))
    (when (and (and (available_sp1-p107p1) (available_gp)) (valid)) (not (available_sp1-p107p1)))
    (when (and (and (available_sp1-p107p1) (available_gp)) (valid)) (not (available_gp)))
    (when (not (and (and (available_sp1-p107p1) (available_gp)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_SP1_P107P1_SP1-P107P1
  :effect (and
    (when (and (and (available_p107p1) (available_sp1)) (valid)) (available_sp1-p107p1))
    (when (and (and (available_p107p1) (available_sp1)) (valid)) (not (available_p107p1)))
    (when (and (and (available_p107p1) (available_sp1)) (valid)) (not (available_sp1)))
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

 (:action CHOOSE_AP2_L2_L1
  :effect (and
    (when (and (and (not-chosen_ap2) (num-subs_l1)) (valid)) (chosen_ap2))
    (when (and (and (not-chosen_ap2) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_ap2) (num-subs_l1)) (valid)) (not (not-chosen_ap2)))
    (when (and (and (not-chosen_ap2) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_ap2) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDC25C_L2_L1
  :effect (and
    (when (and (and (not-chosen_cdc25c) (num-subs_l1)) (valid)) (chosen_cdc25c))
    (when (and (and (not-chosen_cdc25c) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_cdc25c) (num-subs_l1)) (valid)) (not (not-chosen_cdc25c)))
    (when (and (and (not-chosen_cdc25c) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_cdc25c) (num-subs_l1)) (valid))) (not (valid)))
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

 (:action CHOOSE_CDK2P2-CYCB_L2_L1
  :effect (and
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l1)) (valid)) (chosen_cdk2p2-cycb))
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l1)) (valid)) (not (not-chosen_cdk2p2-cycb)))
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_cdk2p2-cycb) (num-subs_l1)) (valid))) (not (valid)))
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

 (:action CHOOSE_CDK46P3-CYCD_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_cdk46p3-cycd)) (valid)) (chosen_cdk46p3-cycd))
    (when (and (and (num-subs_l1) (not-chosen_cdk46p3-cycd)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_cdk46p3-cycd)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_cdk46p3-cycd)) (valid)) (not (not-chosen_cdk46p3-cycd)))
    (when (not (and (and (num-subs_l1) (not-chosen_cdk46p3-cycd)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CHK1_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_chk1)) (valid)) (chosen_chk1))
    (when (and (and (num-subs_l1) (not-chosen_chk1)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_chk1)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_chk1)) (valid)) (not (not-chosen_chk1)))
    (when (not (and (and (num-subs_l1) (not-chosen_chk1)) (valid))) (not (valid)))
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

 (:action CHOOSE_C-TAK1_L2_L1
  :effect (and
    (when (and (and (not-chosen_c-tak1) (num-subs_l1)) (valid)) (chosen_c-tak1))
    (when (and (and (not-chosen_c-tak1) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_c-tak1) (num-subs_l1)) (valid)) (not (not-chosen_c-tak1)))
    (when (and (and (not-chosen_c-tak1) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_c-tak1) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F4-DP12P1_L2_L1
  :effect (and
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l1)) (valid)) (chosen_e2f4-dp12p1))
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l1)) (valid)) (not (not-chosen_e2f4-dp12p1)))
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_e2f4-dp12p1) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GP_L2_L1
  :effect (and
    (when (and (and (not-chosen_gp) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_gp) (num-subs_l1)) (valid)) (chosen_gp))
    (when (and (and (not-chosen_gp) (num-subs_l1)) (valid)) (not (not-chosen_gp)))
    (when (and (and (not-chosen_gp) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_gp) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_HDAC1_L2_L1
  :effect (and
    (when (and (and (not-chosen_hdac1) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_hdac1) (num-subs_l1)) (valid)) (chosen_hdac1))
    (when (and (and (not-chosen_hdac1) (num-subs_l1)) (valid)) (not (not-chosen_hdac1)))
    (when (and (and (not-chosen_hdac1) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_hdac1) (num-subs_l1)) (valid))) (not (valid)))
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

 (:action CHOOSE_PRB_L2_L1
  :effect (and
    (when (and (and (not-chosen_prb) (num-subs_l1)) (valid)) (chosen_prb))
    (when (and (and (not-chosen_prb) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_prb) (num-subs_l1)) (valid)) (not (not-chosen_prb)))
    (when (and (and (not-chosen_prb) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_prb) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PRBP2_L2_L1
  :effect (and
    (when (and (and (not-chosen_prbp2) (num-subs_l1)) (valid)) (chosen_prbp2))
    (when (and (and (not-chosen_prbp2) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_prbp2) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (and (and (not-chosen_prbp2) (num-subs_l1)) (valid)) (not (not-chosen_prbp2)))
    (when (not (and (and (not-chosen_prbp2) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_RPA_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_rpa)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_rpa)) (valid)) (chosen_rpa))
    (when (and (and (num-subs_l1) (not-chosen_rpa)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_rpa)) (valid)) (not (not-chosen_rpa)))
    (when (not (and (and (num-subs_l1) (not-chosen_rpa)) (valid))) (not (valid)))
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

 (:action CHOOSE_WEE1_L2_L1
  :effect (and
    (when (and (and (not-chosen_wee1) (num-subs_l1)) (valid)) (chosen_wee1))
    (when (and (and (not-chosen_wee1) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_wee1) (num-subs_l1)) (valid)) (not (not-chosen_wee1)))
    (when (and (and (not-chosen_wee1) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_wee1) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action dummy-action-2-2
  :effect (and
    (when (and (and (available_cyca)) (valid)) (goal2_))
    (when (not (and (and (available_cyca)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_SP1-GP_C-MYC
  :effect (and
    (when (and (and (available_sp1-gp)) (valid)) (available_c-myc))
    (when (not (and (and (available_sp1-gp)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_SP1-GP_CYCA
  :effect (and
    (when (and (and (available_sp1-gp)) (valid)) (available_cyca))
    (when (not (and (and (available_sp1-gp)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_SP1-GP_CYCD
  :effect (and
    (when (and (and (available_sp1-gp)) (valid)) (available_cycd))
    (when (not (and (and (available_sp1-gp)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_SP1-GP_CYCDP1
  :effect (and
    (when (and (and (available_sp1-gp)) (valid) (unlistedeffect_SYNTHESIZE_SP1-GP_CYCDP1_available_cycdp1)) (available_cycdp1))
    (when (not (and (and (available_sp1-gp)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_SP1-GP_CYCE
  :effect (and
    (when (and (and (available_sp1-gp)) (valid)) (available_cyce))
    (when (not (and (and (available_sp1-gp)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_SP1-GP_CYCEP1
  :effect (and
    (when (and (and (available_sp1-gp)) (valid) (unlistedeffect_SYNTHESIZE_SP1-GP_CYCEP1_available_cycep1)) (available_cycep1))
    (when (not (and (and (available_sp1-gp)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_SP1-GP_P107
  :effect (and
    (when (and (and (available_sp1-gp)) (valid)) (available_p107))
    (when (not (and (and (available_sp1-gp)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_SP1-GP_P107P1
  :effect (and
    (when (and (and (available_sp1-gp)) (valid)) (available_p107p1))
    (when (not (and (and (available_sp1-gp)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_SP1-GP_P19ARF
  :effect (and
    (when (and (and (available_sp1-gp)) (valid) (unlistedeffect_SYNTHESIZE_SP1-GP_P19ARF_available_p19arf)) (available_p19arf))
    (when (not (and (and (available_sp1-gp)) (valid))) (not (valid)))
  )
 )

 (:action SYNTHESIZE_SP1-GP_POL
  :effect (and
    (when (and (and (available_sp1-gp)) (valid)) (available_pol))
    (when (and (and (available_sp1-gp)) (valid) (possclob_SYNTHESIZE_SP1-GP_POL_available_sp1-gp)) (not (available_sp1-gp)))
    (when (not (and (and (available_sp1-gp)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE-WITH-CATALYZE_CDC25C_CHK1_CDC25CP2
  :effect (and
    (when (and (and (available_chk1) (available_cdc25c)) (valid)) (available_cdc25cp2))
    (when (and (and (available_chk1) (available_cdc25c)) (valid) (possclob_ASSOCIATE-WITH-CATALYZE_CDC25C_CHK1_CDC25CP2_available_cdc25c)) (not (available_cdc25c)))
    (when (not (and (and (available_chk1) (available_cdc25c)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE-WITH-CATALYZE_CDC25C_C-TAK1_CDC25CP2
  :effect (and
    (when (and (and (available_c-tak1) (available_cdc25c)) (valid)) (available_cdc25cp2))
    (when (and (and (available_c-tak1) (available_cdc25c)) (valid)) (not (available_cdc25c)))
    (when (not (and (and (available_c-tak1) (available_cdc25c)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE-WITH-CATALYZE_CDK2P2-CYCB_WEE1_CDK2P1P2-CYCB
  :effect (and
    (when (and (and (available_wee1) (available_cdk2p2-cycb)) (valid)) (available_cdk2p1p2-cycb))
    (when (and (and (available_wee1) (available_cdk2p2-cycb)) (valid)) (not (available_cdk2p2-cycb)))
    (when (not (and (and (available_wee1) (available_cdk2p2-cycb)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE-WITH-CATALYZE_PRB_CDK46P3-CYCD_PRBP1
  :effect (and
    (when (and (and (available_prb) (available_cdk46p3-cycd)) (or (available_cdk46p3-cycd) (not (openprec_ASSOCIATE-WITH-CATALYZE_PRB_CDK46P3-CYCD_PRBP1_available_cdk46p3-cycd))) (valid)) (available_prbp1))
    (when (and (and (available_prb) (available_cdk46p3-cycd)) (or (available_cdk46p3-cycd) (not (openprec_ASSOCIATE-WITH-CATALYZE_PRB_CDK46P3-CYCD_PRBP1_available_cdk46p3-cycd))) (valid)) (not (available_prb)))
    (when (not (and (and (available_prb) (available_cdk46p3-cycd)) (or (available_cdk46p3-cycd) (not (openprec_ASSOCIATE-WITH-CATALYZE_PRB_CDK46P3-CYCD_PRBP1_available_cdk46p3-cycd))) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCD_PRBP1P2
  :effect (and
    (when (and (and (available_prbp2) (available_cdk46p3-cycd)) (or (available_cdk46p3-cycd) (not (openprec_ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCD_PRBP1P2_available_cdk46p3-cycd))) (valid)) (available_prbp1p2))
    (when (and (and (available_prbp2) (available_cdk46p3-cycd)) (or (available_cdk46p3-cycd) (not (openprec_ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCD_PRBP1P2_available_cdk46p3-cycd))) (valid) (possclob_ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCD_PRBP1P2_available_prbp2)) (not (available_prbp2)))
    (when (not (and (and (available_prbp2) (available_cdk46p3-cycd)) (or (available_cdk46p3-cycd) (not (openprec_ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCD_PRBP1P2_available_cdk46p3-cycd))) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_CDK1P1P2_CKS1_CDK1P1P2-CKS1
  :effect (and
    (when (and (and (available_cks1) (available_cdk1p1p2)) (valid)) (available_cdk1p1p2-cks1))
    (when (and (and (available_cks1) (available_cdk1p1p2)) (valid)) (not (available_cks1)))
    (when (and (and (available_cks1) (available_cdk1p1p2)) (valid)) (not (available_cdk1p1p2)))
    (when (not (and (and (available_cks1) (available_cdk1p1p2)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_HDAC1_P130-E2F4-DP12P1_HDAC1-P130-E2F4-DP12P1
  :effect (and
    (when (and (and (available_hdac1) (available_p130-e2f4-dp12p1)) (valid) (unlistedeffect_ASSOCIATE_HDAC1_P130-E2F4-DP12P1_HDAC1-P130-E2F4-DP12P1_available_hdac1-p130-e2f4-dp12p1)) (available_hdac1-p130-e2f4-dp12p1))
    (when (and (and (available_hdac1) (available_p130-e2f4-dp12p1)) (valid) (possclob_ASSOCIATE_HDAC1_P130-E2F4-DP12P1_HDAC1-P130-E2F4-DP12P1_available_hdac1)) (not (available_hdac1)))
    (when (and (and (available_hdac1) (available_p130-e2f4-dp12p1)) (valid) (possclob_ASSOCIATE_HDAC1_P130-E2F4-DP12P1_HDAC1-P130-E2F4-DP12P1_available_p130-e2f4-dp12p1)) (not (available_p130-e2f4-dp12p1)))
    (when (not (and (and (available_hdac1) (available_p130-e2f4-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P130_E2F4-DP12P1_P130-E2F4-DP12P1
  :effect (and
    (when (and (and (available_p130) (available_e2f4-dp12p1)) (valid)) (available_p130-e2f4-dp12p1))
    (when (and (and (available_p130) (available_e2f4-dp12p1)) (valid)) (not (available_p130)))
    (when (and (and (available_p130) (available_e2f4-dp12p1)) (valid)) (not (available_e2f4-dp12p1)))
    (when (not (and (and (available_p130) (available_e2f4-dp12p1)) (valid))) (not (valid)))
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

 (:action ASSOCIATE_PRB_AP2_PRB-AP2
  :effect (and
    (when (and (and (available_prb) (available_ap2)) (valid)) (available_prb-ap2))
    (when (and (and (available_prb) (available_ap2)) (valid)) (not (available_prb)))
    (when (and (and (available_prb) (available_ap2)) (valid)) (not (available_ap2)))
    (when (not (and (and (available_prb) (available_ap2)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PRB_E2F4-DP12P1_PRB-E2F4-DP12P1
  :effect (and
    (when (and (and (available_prb) (available_e2f4-dp12p1)) (valid)) (available_prb-e2f4-dp12p1))
    (when (and (and (available_prb) (available_e2f4-dp12p1)) (valid)) (not (available_prb)))
    (when (and (and (available_prb) (available_e2f4-dp12p1)) (valid)) (not (available_e2f4-dp12p1)))
    (when (not (and (and (available_prb) (available_e2f4-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PRBP2_AP2_PRBP2-AP2
  :effect (and
    (when (and (and (available_prbp2) (available_ap2)) (valid)) (available_prbp2-ap2))
    (when (and (and (available_prbp2) (available_ap2)) (valid)) (not (available_prbp2)))
    (when (and (and (available_prbp2) (available_ap2)) (valid)) (not (available_ap2)))
    (when (not (and (and (available_prbp2) (available_ap2)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_SP1_GP_SP1-GP
  :effect (and
    (when (and (and (available_gp) (available_sp1)) (valid) (unlistedeffect_ASSOCIATE_SP1_GP_SP1-GP_available_sp1-gp)) (available_sp1-gp))
    (when (and (and (available_gp) (available_sp1)) (valid) (possclob_ASSOCIATE_SP1_GP_SP1-GP_available_gp)) (not (available_gp)))
    (when (and (and (available_gp) (available_sp1)) (valid) (possclob_ASSOCIATE_SP1_GP_SP1-GP_available_sp1)) (not (available_sp1)))
    (when (not (and (and (available_gp) (available_sp1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_AP2
  :effect (and
    (when (and (and (chosen_ap2)) (valid)) (available_ap2))
    (when (not (and (and (chosen_ap2)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CDC25C
  :effect (and
    (when (and (and (chosen_cdc25c)) (valid)) (available_cdc25c))
    (when (not (and (and (chosen_cdc25c)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CDK1P1P2
  :effect (and
    (when (and (and (chosen_cdk1p1p2)) (valid)) (available_cdk1p1p2))
    (when (not (and (and (chosen_cdk1p1p2)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CDK2P2-CYCB
  :effect (and
    (when (and (and (chosen_cdk2p2-cycb)) (valid)) (available_cdk2p2-cycb))
    (when (not (and (and (chosen_cdk2p2-cycb)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CDK46P1
  :effect (and
    (when (and (and (chosen_cdk46p1)) (valid)) (available_cdk46p1))
    (when (not (and (and (chosen_cdk46p1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CDK46P3-CYCD
  :effect (and
    (when (and (and (chosen_cdk46p3-cycd)) (valid)) (available_cdk46p3-cycd))
    (when (not (and (and (chosen_cdk46p3-cycd)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CHK1
  :effect (and
    (when (and (and (chosen_chk1)) (valid)) (available_chk1))
    (when (not (and (and (chosen_chk1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CKS1
  :effect (and
    (when (and (and (chosen_cks1)) (valid)) (available_cks1))
    (when (not (and (and (chosen_cks1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_C-TAK1
  :effect (and
    (when (and (and (chosen_c-tak1)) (valid)) (available_c-tak1))
    (when (not (and (and (chosen_c-tak1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_E2F4-DP12P1
  :effect (and
    (when (and (and (chosen_e2f4-dp12p1)) (valid)) (available_e2f4-dp12p1))
    (when (not (and (and (chosen_e2f4-dp12p1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_GP
  :effect (and
    (when (and (and (chosen_gp)) (valid)) (available_gp))
    (when (not (and (and (chosen_gp)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_HDAC1
  :effect (and
    (when (and (and (chosen_hdac1)) (valid)) (available_hdac1))
    (when (not (and (and (chosen_hdac1)) (valid))) (not (valid)))
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

 (:action INITIALIZE_PRB
  :effect (and
    (when (and (and (chosen_prb)) (valid)) (available_prb))
    (when (not (and (and (chosen_prb)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_PRBP2
  :effect (and
    (when (and (and (chosen_prbp2)) (valid)) (available_prbp2))
    (when (not (and (and (chosen_prbp2)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_RPA
  :effect (and
    (when (and (and (chosen_rpa)) (valid)) (available_rpa))
    (when (not (and (and (chosen_rpa)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_SP1
  :effect (and
    (when (and (and (chosen_sp1)) (valid)) (available_sp1))
    (when (not (and (and (chosen_sp1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_WEE1
  :effect (and
    (when (and (and (chosen_wee1)) (valid)) (available_wee1))
    (when (not (and (and (chosen_wee1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_AP2_L1_L0
  :effect (and
    (when (and (and (not-chosen_ap2) (num-subs_l0)) (valid)) (chosen_ap2))
    (when (and (and (not-chosen_ap2) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_ap2) (num-subs_l0)) (valid)) (not (not-chosen_ap2)))
    (when (and (and (not-chosen_ap2) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_ap2) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDC25C_L1_L0
  :effect (and
    (when (and (and (not-chosen_cdc25c) (num-subs_l0)) (valid)) (chosen_cdc25c))
    (when (and (and (not-chosen_cdc25c) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_cdc25c) (num-subs_l0)) (valid)) (not (not-chosen_cdc25c)))
    (when (and (and (not-chosen_cdc25c) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_cdc25c) (num-subs_l0)) (valid))) (not (valid)))
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

 (:action CHOOSE_CDK2P2-CYCB_L1_L0
  :effect (and
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l0)) (valid)) (chosen_cdk2p2-cycb))
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l0)) (valid)) (not (not-chosen_cdk2p2-cycb)))
    (when (and (and (not-chosen_cdk2p2-cycb) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_cdk2p2-cycb) (num-subs_l0)) (valid))) (not (valid)))
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

 (:action CHOOSE_CDK46P3-CYCD_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_cdk46p3-cycd)) (valid)) (chosen_cdk46p3-cycd))
    (when (and (and (num-subs_l0) (not-chosen_cdk46p3-cycd)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_cdk46p3-cycd)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_cdk46p3-cycd)) (valid)) (not (not-chosen_cdk46p3-cycd)))
    (when (not (and (and (num-subs_l0) (not-chosen_cdk46p3-cycd)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CHK1_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_chk1)) (valid)) (chosen_chk1))
    (when (and (and (num-subs_l0) (not-chosen_chk1)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_chk1)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_chk1)) (valid)) (not (not-chosen_chk1)))
    (when (not (and (and (num-subs_l0) (not-chosen_chk1)) (valid))) (not (valid)))
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

 (:action CHOOSE_C-TAK1_L1_L0
  :effect (and
    (when (and (and (not-chosen_c-tak1) (num-subs_l0)) (valid)) (chosen_c-tak1))
    (when (and (and (not-chosen_c-tak1) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_c-tak1) (num-subs_l0)) (valid)) (not (not-chosen_c-tak1)))
    (when (and (and (not-chosen_c-tak1) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_c-tak1) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F4-DP12P1_L1_L0
  :effect (and
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l0)) (valid)) (chosen_e2f4-dp12p1))
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l0)) (valid)) (not (not-chosen_e2f4-dp12p1)))
    (when (and (and (not-chosen_e2f4-dp12p1) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_e2f4-dp12p1) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_GP_L1_L0
  :effect (and
    (when (and (and (not-chosen_gp) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_gp) (num-subs_l0)) (valid)) (chosen_gp))
    (when (and (and (not-chosen_gp) (num-subs_l0)) (valid)) (not (not-chosen_gp)))
    (when (and (and (not-chosen_gp) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_gp) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_HDAC1_L1_L0
  :effect (and
    (when (and (and (not-chosen_hdac1) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_hdac1) (num-subs_l0)) (valid)) (chosen_hdac1))
    (when (and (and (not-chosen_hdac1) (num-subs_l0)) (valid)) (not (not-chosen_hdac1)))
    (when (and (and (not-chosen_hdac1) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_hdac1) (num-subs_l0)) (valid))) (not (valid)))
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

 (:action CHOOSE_PRB_L1_L0
  :effect (and
    (when (and (and (not-chosen_prb) (num-subs_l0)) (valid)) (chosen_prb))
    (when (and (and (not-chosen_prb) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_prb) (num-subs_l0)) (valid)) (not (not-chosen_prb)))
    (when (and (and (not-chosen_prb) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_prb) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PRBP2_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_prbp2)) (valid)) (chosen_prbp2))
    (when (and (and (num-subs_l0) (not-chosen_prbp2)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_prbp2)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_prbp2)) (valid)) (not (not-chosen_prbp2)))
    (when (not (and (and (num-subs_l0) (not-chosen_prbp2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_RPA_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_rpa)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_rpa)) (valid)) (chosen_rpa))
    (when (and (and (num-subs_l0) (not-chosen_rpa)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_rpa)) (valid)) (not (not-chosen_rpa)))
    (when (not (and (and (num-subs_l0) (not-chosen_rpa)) (valid))) (not (valid)))
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

 (:action CHOOSE_WEE1_L1_L0
  :effect (and
    (when (and (and (not-chosen_wee1) (num-subs_l0)) (valid)) (chosen_wee1))
    (when (and (and (not-chosen_wee1) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_wee1) (num-subs_l0)) (valid)) (not (not-chosen_wee1)))
    (when (and (and (not-chosen_wee1) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_wee1) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action cpp_goal
  :precondition (and )
  :effect (when (and (goal3_ ) (goal2_ ) (goal1_ ) (valid)) (done))
 )
)
