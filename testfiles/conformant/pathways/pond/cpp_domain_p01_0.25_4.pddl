(define (domain GROUNDED-PATHWAYS-PROPOSITIONAL)
 (:requirements :probabilistic-effects)
 (:predicates (chosen_p130-e2f5p1-dp12) (available_chk1) (available_cdk46p3-cycdp1) (available_pcaf-p300) (available_raf1) (available_prbp2-ap2) (chosen_prb-e2f4p1-dp12) (not-chosen_p16) (chosen_cdk46p3-cycd) (available_cdk46p3-cycd) (FOO) (available_sp1-e2f13) (available_p300) (available_ap2) (not-chosen_cdc25c) (chosen_chk1) (chosen_p300) (not-chosen_p300) (not-chosen_sp1) (available_prb-e2f4p1-dp12) (available_prbp2) (chosen_cdc25c) (chosen_ap2) (chosen_e2f13) (not-chosen_prbp2) (goal1_) (not-chosen_raf1) (not-chosen_cdk46p3-cycdp1) (available_cdk7) (available_raf1-prb-e2f4p1-dp12) (available_cdc25cp2) (not-chosen_cdk7) (available_dmp1) (chosen_dmp1) (available_prbp1p2) (available_prbp1p2-ap2) (not-chosen_p130-e2f5p1-dp12) (num-subs_l0) (available_raf1-p130-e2f5p1-dp12) (num-subs_l2) (num-subs_l1) (not-chosen_chk1) (num-subs_l3) (available_e2f13) (not-chosen_ap2) (available_p16-cdk7) (not-chosen_cdk46p3-cycd) (available_p130-e2f5p1-dp12) (not-chosen_prb-e2f4p1-dp12) (not-chosen_pcaf) (available_sp1) (chosen_sp1) (chosen_cdk7) (chosen_raf1) (chosen_p16) (available_cdc25c) (not-chosen_e2f13) (chosen_cdk46p3-cycdp1) (chosen_pcaf) (not-chosen_dmp1) (available_pcaf) (available_dmp1p1) (available_p16) (chosen_prbp2) (possclob_ASSOCIATE-WITH-CATALYZE_DMP1_CDK46P3-CYCDP1_DMP1P1_available_dmp1) (unlistedeffect_ASSOCIATE_PRBP2_AP2_PRBP2-AP2_available_prbp2-ap2) (possclob_ASSOCIATE_PRBP2_AP2_PRBP2-AP2_available_prbp2) (possclob_ASSOCIATE_PRBP2_AP2_PRBP2-AP2_available_ap2) (unlistedeffect_ASSOCIATE_RAF1_PRB-E2F4P1-DP12_RAF1-PRB-E2F4P1-DP12_available_raf1-prb-e2f4p1-dp12) (possclob_ASSOCIATE_RAF1_PRB-E2F4P1-DP12_RAF1-PRB-E2F4P1-DP12_available_prb-e2f4p1-dp12) (possclob_ASSOCIATE_RAF1_PRB-E2F4P1-DP12_RAF1-PRB-E2F4P1-DP12_available_raf1) (unlistedeffect_ASSOCIATE_SP1_E2F13_SP1-E2F13_available_sp1-e2f13) (possclob_ASSOCIATE_SP1_E2F13_SP1-E2F13_available_sp1) (possclob_ASSOCIATE_SP1_E2F13_SP1-E2F13_available_e2f13) (valid) (done))

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

 (:action CHOOSE_CDK46P3-CYCD_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_cdk46p3-cycd)) (valid)) (chosen_cdk46p3-cycd))
    (when (and (and (num-subs_l2) (not-chosen_cdk46p3-cycd)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_cdk46p3-cycd)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_cdk46p3-cycd)) (valid)) (not (not-chosen_cdk46p3-cycd)))
    (when (not (and (and (num-subs_l2) (not-chosen_cdk46p3-cycd)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK46P3-CYCDP1_L3_L2
  :effect (and
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l2)) (valid)) (chosen_cdk46p3-cycdp1))
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l2)) (valid)) (not (not-chosen_cdk46p3-cycdp1)))
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK7_L3_L2
  :effect (and
    (when (and (and (not-chosen_cdk7) (num-subs_l2)) (valid)) (chosen_cdk7))
    (when (and (and (not-chosen_cdk7) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_cdk7) (num-subs_l2)) (valid)) (not (not-chosen_cdk7)))
    (when (and (and (not-chosen_cdk7) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_cdk7) (num-subs_l2)) (valid))) (not (valid)))
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

 (:action CHOOSE_DMP1_L3_L2
  :effect (and
    (when (and (and (not-chosen_dmp1) (num-subs_l2)) (valid)) (chosen_dmp1))
    (when (and (and (not-chosen_dmp1) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_dmp1) (num-subs_l2)) (valid)) (not (not-chosen_dmp1)))
    (when (and (and (not-chosen_dmp1) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_dmp1) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13_L3_L2
  :effect (and
    (when (and (and (not-chosen_e2f13) (num-subs_l2)) (valid)) (chosen_e2f13))
    (when (and (and (not-chosen_e2f13) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_e2f13) (num-subs_l2)) (valid)) (not (not-chosen_e2f13)))
    (when (and (and (not-chosen_e2f13) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_e2f13) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P130-E2F5P1-DP12_L3_L2
  :effect (and
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l2)) (valid)) (chosen_p130-e2f5p1-dp12))
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l2)) (valid)) (not (not-chosen_p130-e2f5p1-dp12)))
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l2)) (valid))) (not (valid)))
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

 (:action CHOOSE_P300_L3_L2
  :effect (and
    (when (and (and (not-chosen_p300) (num-subs_l2)) (valid)) (chosen_p300))
    (when (and (and (not-chosen_p300) (num-subs_l2)) (valid)) (num-subs_l3))
    (when (and (and (not-chosen_p300) (num-subs_l2)) (valid)) (not (not-chosen_p300)))
    (when (and (and (not-chosen_p300) (num-subs_l2)) (valid)) (not (num-subs_l2)))
    (when (not (and (and (not-chosen_p300) (num-subs_l2)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PCAF_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_pcaf)) (valid)) (chosen_pcaf))
    (when (and (and (num-subs_l2) (not-chosen_pcaf)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_pcaf)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_pcaf)) (valid)) (not (not-chosen_pcaf)))
    (when (not (and (and (num-subs_l2) (not-chosen_pcaf)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PRB-E2F4P1-DP12_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_prb-e2f4p1-dp12)) (valid)) (chosen_prb-e2f4p1-dp12))
    (when (and (and (num-subs_l2) (not-chosen_prb-e2f4p1-dp12)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_prb-e2f4p1-dp12)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_prb-e2f4p1-dp12)) (valid)) (not (not-chosen_prb-e2f4p1-dp12)))
    (when (not (and (and (num-subs_l2) (not-chosen_prb-e2f4p1-dp12)) (valid))) (not (valid)))
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

 (:action CHOOSE_RAF1_L3_L2
  :effect (and
    (when (and (and (num-subs_l2) (not-chosen_raf1)) (valid)) (chosen_raf1))
    (when (and (and (num-subs_l2) (not-chosen_raf1)) (valid)) (num-subs_l3))
    (when (and (and (num-subs_l2) (not-chosen_raf1)) (valid)) (not (num-subs_l2)))
    (when (and (and (num-subs_l2) (not-chosen_raf1)) (valid)) (not (not-chosen_raf1)))
    (when (not (and (and (num-subs_l2) (not-chosen_raf1)) (valid))) (not (valid)))
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

 (:action dummy-action-1-1
  :effect (and
    (when (and (and (available_prbp1p2-ap2)) (valid)) (goal1_))
    (when (not (and (and (available_prbp1p2-ap2)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PRBP1P2_AP2_PRBP1P2-AP2
  :effect (and
    (when (and (and (available_prbp1p2) (available_ap2)) (valid)) (available_prbp1p2-ap2))
    (when (and (and (available_prbp1p2) (available_ap2)) (valid)) (not (available_prbp1p2)))
    (when (and (and (available_prbp1p2) (available_ap2)) (valid)) (not (available_ap2)))
    (when (not (and (and (available_prbp1p2) (available_ap2)) (valid))) (not (valid)))
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

 (:action CHOOSE_CDK46P3-CYCD_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_cdk46p3-cycd)) (valid)) (chosen_cdk46p3-cycd))
    (when (and (and (num-subs_l1) (not-chosen_cdk46p3-cycd)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_cdk46p3-cycd)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_cdk46p3-cycd)) (valid)) (not (not-chosen_cdk46p3-cycd)))
    (when (not (and (and (num-subs_l1) (not-chosen_cdk46p3-cycd)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK46P3-CYCDP1_L2_L1
  :effect (and
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l1)) (valid)) (chosen_cdk46p3-cycdp1))
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l1)) (valid)) (not (not-chosen_cdk46p3-cycdp1)))
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK7_L2_L1
  :effect (and
    (when (and (and (not-chosen_cdk7) (num-subs_l1)) (valid)) (chosen_cdk7))
    (when (and (and (not-chosen_cdk7) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_cdk7) (num-subs_l1)) (valid)) (not (not-chosen_cdk7)))
    (when (and (and (not-chosen_cdk7) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_cdk7) (num-subs_l1)) (valid))) (not (valid)))
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

 (:action CHOOSE_DMP1_L2_L1
  :effect (and
    (when (and (and (not-chosen_dmp1) (num-subs_l1)) (valid)) (chosen_dmp1))
    (when (and (and (not-chosen_dmp1) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_dmp1) (num-subs_l1)) (valid)) (not (not-chosen_dmp1)))
    (when (and (and (not-chosen_dmp1) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_dmp1) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13_L2_L1
  :effect (and
    (when (and (and (not-chosen_e2f13) (num-subs_l1)) (valid)) (chosen_e2f13))
    (when (and (and (not-chosen_e2f13) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_e2f13) (num-subs_l1)) (valid)) (not (not-chosen_e2f13)))
    (when (and (and (not-chosen_e2f13) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_e2f13) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P130-E2F5P1-DP12_L2_L1
  :effect (and
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l1)) (valid)) (chosen_p130-e2f5p1-dp12))
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l1)) (valid)) (not (not-chosen_p130-e2f5p1-dp12)))
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l1)) (valid))) (not (valid)))
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

 (:action CHOOSE_P300_L2_L1
  :effect (and
    (when (and (and (not-chosen_p300) (num-subs_l1)) (valid)) (chosen_p300))
    (when (and (and (not-chosen_p300) (num-subs_l1)) (valid)) (num-subs_l2))
    (when (and (and (not-chosen_p300) (num-subs_l1)) (valid)) (not (not-chosen_p300)))
    (when (and (and (not-chosen_p300) (num-subs_l1)) (valid)) (not (num-subs_l1)))
    (when (not (and (and (not-chosen_p300) (num-subs_l1)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PCAF_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_pcaf)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_pcaf)) (valid)) (chosen_pcaf))
    (when (and (and (num-subs_l1) (not-chosen_pcaf)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_pcaf)) (valid)) (not (not-chosen_pcaf)))
    (when (not (and (and (num-subs_l1) (not-chosen_pcaf)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PRB-E2F4P1-DP12_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_prb-e2f4p1-dp12)) (valid)) (chosen_prb-e2f4p1-dp12))
    (when (and (and (num-subs_l1) (not-chosen_prb-e2f4p1-dp12)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_prb-e2f4p1-dp12)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_prb-e2f4p1-dp12)) (valid)) (not (not-chosen_prb-e2f4p1-dp12)))
    (when (not (and (and (num-subs_l1) (not-chosen_prb-e2f4p1-dp12)) (valid))) (not (valid)))
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

 (:action CHOOSE_RAF1_L2_L1
  :effect (and
    (when (and (and (num-subs_l1) (not-chosen_raf1)) (valid)) (chosen_raf1))
    (when (and (and (num-subs_l1) (not-chosen_raf1)) (valid)) (num-subs_l2))
    (when (and (and (num-subs_l1) (not-chosen_raf1)) (valid)) (not (num-subs_l1)))
    (when (and (and (num-subs_l1) (not-chosen_raf1)) (valid)) (not (not-chosen_raf1)))
    (when (not (and (and (num-subs_l1) (not-chosen_raf1)) (valid))) (not (valid)))
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

 (:action dummy-action-1-2
  :effect (and
    (when (and (and (available_pcaf-p300)) (valid)) (goal1_))
    (when (not (and (and (available_pcaf-p300)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE-WITH-CATALYZE_CDC25C_CHK1_CDC25CP2
  :effect (and
    (when (and (and (available_chk1) (available_cdc25c)) (valid)) (available_cdc25cp2))
    (when (and (and (available_chk1) (available_cdc25c)) (valid)) (not (available_cdc25c)))
    (when (not (and (and (available_chk1) (available_cdc25c)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE-WITH-CATALYZE_DMP1_CDK46P3-CYCD_DMP1P1
  :effect (and
    (when (and (and (available_cdk46p3-cycd) (available_dmp1)) (valid)) (available_dmp1p1))
    (when (and (and (available_cdk46p3-cycd) (available_dmp1)) (valid)) (not (available_dmp1)))
    (when (not (and (and (available_cdk46p3-cycd) (available_dmp1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE-WITH-CATALYZE_DMP1_CDK46P3-CYCDP1_DMP1P1
  :effect (and
    (when (and (and (available_cdk46p3-cycdp1) (available_dmp1)) (valid)) (available_dmp1p1))
    (when (and (and (available_cdk46p3-cycdp1) (available_dmp1)) (valid) (possclob_ASSOCIATE-WITH-CATALYZE_DMP1_CDK46P3-CYCDP1_DMP1P1_available_dmp1)) (not (available_dmp1)))
    (when (not (and (and (available_cdk46p3-cycdp1) (available_dmp1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCDP1_PRBP1P2
  :effect (and
    (when (and (and (available_cdk46p3-cycdp1) (available_prbp2)) (valid)) (available_prbp1p2))
    (when (and (and (available_cdk46p3-cycdp1) (available_prbp2)) (valid)) (not (available_prbp2)))
    (when (not (and (and (available_cdk46p3-cycdp1) (available_prbp2)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE-WITH-CATALYZE_PRBP2_CDK46P3-CYCD_PRBP1P2
  :effect (and
    (when (and (and (available_prbp2) (available_cdk46p3-cycd)) (valid)) (available_prbp1p2))
    (when (and (and (available_prbp2) (available_cdk46p3-cycd)) (valid)) (not (available_prbp2)))
    (when (not (and (and (available_prbp2) (available_cdk46p3-cycd)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_P16_CDK7_P16-CDK7
  :effect (and
    (when (and (and (available_cdk7) (available_p16)) (valid)) (available_p16-cdk7))
    (when (and (and (available_cdk7) (available_p16)) (valid)) (not (available_cdk7)))
    (when (and (and (available_cdk7) (available_p16)) (valid)) (not (available_p16)))
    (when (not (and (and (available_cdk7) (available_p16)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PCAF_P300_PCAF-P300
  :effect (and
    (when (and (and (available_pcaf) (available_p300)) (valid)) (available_pcaf-p300))
    (when (and (and (available_pcaf) (available_p300)) (valid)) (not (available_pcaf)))
    (when (and (and (available_pcaf) (available_p300)) (valid)) (not (available_p300)))
    (when (not (and (and (available_pcaf) (available_p300)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_PRBP2_AP2_PRBP2-AP2
  :effect (and
    (when (and (and (available_prbp2) (available_ap2)) (valid) (unlistedeffect_ASSOCIATE_PRBP2_AP2_PRBP2-AP2_available_prbp2-ap2)) (available_prbp2-ap2))
    (when (and (and (available_prbp2) (available_ap2)) (valid) (possclob_ASSOCIATE_PRBP2_AP2_PRBP2-AP2_available_prbp2)) (not (available_prbp2)))
    (when (and (and (available_prbp2) (available_ap2)) (valid) (possclob_ASSOCIATE_PRBP2_AP2_PRBP2-AP2_available_ap2)) (not (available_ap2)))
    (when (not (and (and (available_prbp2) (available_ap2)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_RAF1_P130-E2F5P1-DP12_RAF1-P130-E2F5P1-DP12
  :effect (and
    (when (and (and (available_raf1) (available_p130-e2f5p1-dp12)) (valid)) (available_raf1-p130-e2f5p1-dp12))
    (when (and (and (available_raf1) (available_p130-e2f5p1-dp12)) (valid)) (not (available_raf1)))
    (when (and (and (available_raf1) (available_p130-e2f5p1-dp12)) (valid)) (not (available_p130-e2f5p1-dp12)))
    (when (not (and (and (available_raf1) (available_p130-e2f5p1-dp12)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_RAF1_PRB-E2F4P1-DP12_RAF1-PRB-E2F4P1-DP12
  :effect (and
    (when (and (and (available_prb-e2f4p1-dp12) (available_raf1)) (valid) (unlistedeffect_ASSOCIATE_RAF1_PRB-E2F4P1-DP12_RAF1-PRB-E2F4P1-DP12_available_raf1-prb-e2f4p1-dp12)) (available_raf1-prb-e2f4p1-dp12))
    (when (and (and (available_prb-e2f4p1-dp12) (available_raf1)) (valid) (possclob_ASSOCIATE_RAF1_PRB-E2F4P1-DP12_RAF1-PRB-E2F4P1-DP12_available_prb-e2f4p1-dp12)) (not (available_prb-e2f4p1-dp12)))
    (when (and (and (available_prb-e2f4p1-dp12) (available_raf1)) (valid) (possclob_ASSOCIATE_RAF1_PRB-E2F4P1-DP12_RAF1-PRB-E2F4P1-DP12_available_raf1)) (not (available_raf1)))
    (when (not (and (and (available_prb-e2f4p1-dp12) (available_raf1)) (valid))) (not (valid)))
  )
 )

 (:action ASSOCIATE_SP1_E2F13_SP1-E2F13
  :effect (and
    (when (and (and (available_sp1) (available_e2f13)) (valid) (unlistedeffect_ASSOCIATE_SP1_E2F13_SP1-E2F13_available_sp1-e2f13)) (available_sp1-e2f13))
    (when (and (and (available_sp1) (available_e2f13)) (valid) (possclob_ASSOCIATE_SP1_E2F13_SP1-E2F13_available_sp1)) (not (available_sp1)))
    (when (and (and (available_sp1) (available_e2f13)) (valid) (possclob_ASSOCIATE_SP1_E2F13_SP1-E2F13_available_e2f13)) (not (available_e2f13)))
    (when (not (and (and (available_sp1) (available_e2f13)) (valid))) (not (valid)))
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

 (:action INITIALIZE_CDK46P3-CYCD
  :effect (and
    (when (and (and (chosen_cdk46p3-cycd)) (valid)) (available_cdk46p3-cycd))
    (when (not (and (and (chosen_cdk46p3-cycd)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CDK46P3-CYCDP1
  :effect (and
    (when (and (and (chosen_cdk46p3-cycdp1)) (valid)) (available_cdk46p3-cycdp1))
    (when (not (and (and (chosen_cdk46p3-cycdp1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CDK7
  :effect (and
    (when (and (and (chosen_cdk7)) (valid)) (available_cdk7))
    (when (not (and (and (chosen_cdk7)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_CHK1
  :effect (and
    (when (and (and (chosen_chk1)) (valid)) (available_chk1))
    (when (not (and (and (chosen_chk1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_DMP1
  :effect (and
    (when (and (and (chosen_dmp1)) (valid)) (available_dmp1))
    (when (not (and (and (chosen_dmp1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_E2F13
  :effect (and
    (when (and (and (chosen_e2f13)) (valid)) (available_e2f13))
    (when (not (and (and (chosen_e2f13)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_P130-E2F5P1-DP12
  :effect (and
    (when (and (and (chosen_p130-e2f5p1-dp12)) (valid)) (available_p130-e2f5p1-dp12))
    (when (not (and (and (chosen_p130-e2f5p1-dp12)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_P16
  :effect (and
    (when (and (and (chosen_p16)) (valid)) (available_p16))
    (when (not (and (and (chosen_p16)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_P300
  :effect (and
    (when (and (and (chosen_p300)) (valid)) (available_p300))
    (when (not (and (and (chosen_p300)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_PCAF
  :effect (and
    (when (and (and (chosen_pcaf)) (valid)) (available_pcaf))
    (when (not (and (and (chosen_pcaf)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_PRB-E2F4P1-DP12
  :effect (and
    (when (and (and (chosen_prb-e2f4p1-dp12)) (valid)) (available_prb-e2f4p1-dp12))
    (when (not (and (and (chosen_prb-e2f4p1-dp12)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_PRBP2
  :effect (and
    (when (and (and (chosen_prbp2)) (valid)) (available_prbp2))
    (when (not (and (and (chosen_prbp2)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_RAF1
  :effect (and
    (when (and (and (chosen_raf1)) (valid)) (available_raf1))
    (when (not (and (and (chosen_raf1)) (valid))) (not (valid)))
  )
 )

 (:action INITIALIZE_SP1
  :effect (and
    (when (and (and (chosen_sp1)) (valid)) (available_sp1))
    (when (not (and (and (chosen_sp1)) (valid))) (not (valid)))
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

 (:action CHOOSE_CDK46P3-CYCD_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_cdk46p3-cycd)) (valid)) (chosen_cdk46p3-cycd))
    (when (and (and (num-subs_l0) (not-chosen_cdk46p3-cycd)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_cdk46p3-cycd)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_cdk46p3-cycd)) (valid)) (not (not-chosen_cdk46p3-cycd)))
    (when (not (and (and (num-subs_l0) (not-chosen_cdk46p3-cycd)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK46P3-CYCDP1_L1_L0
  :effect (and
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l0)) (valid)) (chosen_cdk46p3-cycdp1))
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l0)) (valid)) (not (not-chosen_cdk46p3-cycdp1)))
    (when (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_cdk46p3-cycdp1) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_CDK7_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_cdk7)) (valid)) (chosen_cdk7))
    (when (and (and (num-subs_l0) (not-chosen_cdk7)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_cdk7)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_cdk7)) (valid)) (not (not-chosen_cdk7)))
    (when (not (and (and (num-subs_l0) (not-chosen_cdk7)) (valid))) (not (valid)))
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

 (:action CHOOSE_DMP1_L1_L0
  :effect (and
    (when (and (and (not-chosen_dmp1) (num-subs_l0)) (valid)) (chosen_dmp1))
    (when (and (and (not-chosen_dmp1) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_dmp1) (num-subs_l0)) (valid)) (not (not-chosen_dmp1)))
    (when (and (and (not-chosen_dmp1) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_dmp1) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_E2F13_L1_L0
  :effect (and
    (when (and (and (not-chosen_e2f13) (num-subs_l0)) (valid)) (chosen_e2f13))
    (when (and (and (not-chosen_e2f13) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_e2f13) (num-subs_l0)) (valid)) (not (not-chosen_e2f13)))
    (when (and (and (not-chosen_e2f13) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_e2f13) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_P130-E2F5P1-DP12_L1_L0
  :effect (and
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l0)) (valid)) (chosen_p130-e2f5p1-dp12))
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l0)) (valid)) (not (not-chosen_p130-e2f5p1-dp12)))
    (when (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_p130-e2f5p1-dp12) (num-subs_l0)) (valid))) (not (valid)))
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

 (:action CHOOSE_P300_L1_L0
  :effect (and
    (when (and (and (not-chosen_p300) (num-subs_l0)) (valid)) (chosen_p300))
    (when (and (and (not-chosen_p300) (num-subs_l0)) (valid)) (num-subs_l1))
    (when (and (and (not-chosen_p300) (num-subs_l0)) (valid)) (not (not-chosen_p300)))
    (when (and (and (not-chosen_p300) (num-subs_l0)) (valid)) (not (num-subs_l0)))
    (when (not (and (and (not-chosen_p300) (num-subs_l0)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PCAF_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_pcaf)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_pcaf)) (valid)) (chosen_pcaf))
    (when (and (and (num-subs_l0) (not-chosen_pcaf)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_pcaf)) (valid)) (not (not-chosen_pcaf)))
    (when (not (and (and (num-subs_l0) (not-chosen_pcaf)) (valid))) (not (valid)))
  )
 )

 (:action CHOOSE_PRB-E2F4P1-DP12_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_prb-e2f4p1-dp12)) (valid)) (chosen_prb-e2f4p1-dp12))
    (when (and (and (num-subs_l0) (not-chosen_prb-e2f4p1-dp12)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_prb-e2f4p1-dp12)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_prb-e2f4p1-dp12)) (valid)) (not (not-chosen_prb-e2f4p1-dp12)))
    (when (not (and (and (num-subs_l0) (not-chosen_prb-e2f4p1-dp12)) (valid))) (not (valid)))
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

 (:action CHOOSE_RAF1_L1_L0
  :effect (and
    (when (and (and (num-subs_l0) (not-chosen_raf1)) (valid)) (chosen_raf1))
    (when (and (and (num-subs_l0) (not-chosen_raf1)) (valid)) (num-subs_l1))
    (when (and (and (num-subs_l0) (not-chosen_raf1)) (valid)) (not (num-subs_l0)))
    (when (and (and (num-subs_l0) (not-chosen_raf1)) (valid)) (not (not-chosen_raf1)))
    (when (not (and (and (num-subs_l0) (not-chosen_raf1)) (valid))) (not (valid)))
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
  :effect (when (and (goal1_ ) (valid)) (done))
 )
)
