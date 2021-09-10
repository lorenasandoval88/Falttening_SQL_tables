/*PULL MODULE2 DATA FROM PARTICIPANTS TABLE
Step1: pull unnested data directly by using the CID for module2(D_745268907) by the variable name(s).
Step2: Use "p." to prevent missing variables due to a missing comma.
Step3: pull nested data using unnest function. Add all variables (in DD) related to the nested variable, even if not in data.
Step4: do no use unnest on text box responses. Those will be found in a separate unnested variable.*/
select 
/*p.D_745268907.COMPLETED, add? ask Nicole*/
/*p.D_745268907.COMPLETED_TS, add? ask Nicole*/
p.D_745268907.SHIFTWORK8, /*Flexible work shift*/
 /*UNNESTED D_399982309: Pain relievers- Have you ever taken any of these medications at least 4 times a month for 6 months or longer? Select all that apply.*/
"469512398" in unnest( p.D_745268907.D_399982309) as d_469512398, /*Baby or low-dose aspirin (81 mg or less)*/
"194424439" in unnest(p.D_745268907.D_399982309) as d_194424439, /*Regular or extra strength aspirin (such as Bufferin or Anacin)*/
"422188606" in unnest( p.D_745268907.D_399982309) as d_422188606, /*Ibuprofen (such as Motrin or Advil)*/
"555555502" in unnest(p.D_745268907.D_399982309) as d_555555502, /*Acetaminophen (such as Tylenol)*/
"800410166" in unnest(p.D_745268907.D_399982309) as d_800410166, /*Naproxen (such as Naprosyn, Anaprox, or Aleve)*/
"221645137" in unnest(p.D_745268907.D_399982309) as d_221645137, /*Celebrex (Celecoxib)*/
"974248369" in unnest(p.D_745268907.D_399982309) as d_974248369, /*Prescription pain relievers containing opioids*/
"808714782" in unnest(p.D_745268907.D_399982309) as d_808714782, /*None of the above*/
 /*During the time(s) that you were taking Acetaminophen*/
p.D_745268907.D_614446276.PAINREL2_4.D_166789083 as d_166789083, /*Acetaminophen days per week*/
p.D_745268907.D_614446276.PAINREL2_4.D_570218792 as d_570218792, /*Acetaminophen days per month*/
p.D_745268907.D_646042915.D_646042915 as d_646042915,  /*Pills per day acetaminophen, don't know*/
p.D_745268907.D_646042915.D_267187069 as d_267187069,  /*Pills per day acetaminophen*/
p.D_745268907.D_270254670 as d_270254670,  /*Year took acetaminophen*/
p.D_745268907.D_861824298 as d_861824298,  /*Last time took acetaminophen?*/
 /*UNNESTED DOUBLE CID D_630231395: Why did you take acetaminophen? Select all that apply.*/
"323106499" in unnest(p.D_745268907.D_630231395)  as d_630231395_d_323106499  ,  /*Arthritis*/
"769901710" in unnest(p.D_745268907.D_630231395)  as d_630231395_d_769901710  ,  /*Back pain/backache*/
"727773491" in unnest(p.D_745268907.D_630231395)  as d_630231395_d_727773491  ,  /*Menstrual Pain*/
"283652434" in unnest(p.D_745268907.D_630231395)  as d_630231395_d_283652434  ,  /*Disease prevention*/
"243596698" in unnest(p.D_745268907.D_630231395)  as d_630231395_d_243596698  ,  /*Headaches/migraine*/
"853261835" in unnest(p.D_745268907.D_630231395)  as d_630231395_d_853261835  ,  /*Illness, cold/flu, fever*/
"191656389" in unnest(p.D_745268907.D_630231395)  as d_630231395_d_191656389  ,  /*Muscle or joint pain, joint or bone injuries, sprains, or strains*/
"558504672" in unnest(p.D_745268907.D_630231395)  as d_630231395_d_558504672  ,  /*Toothache*/
 
p.D_745268907.d_234177873.PAINREL2_5.D_857680243 as d_857680243,  /*Naproxen days per week*/
p.D_745268907.d_234177873.PAINREL2_5.D_977076834 as d_977076834,  /*Naproxen days per month*/
p.D_745268907.D_799338907.D_784516299 as d_784516299,  /*Pills per day naproxen*/
p.D_745268907.D_376720409 as d_376720409,  /*About how many years did you take naproxen?*/
p.D_745268907.D_575646308 as d_575646308,  /*Last time took naproxen?*/
p.D_745268907.D_798182168 as d_798182168,  /*Years ago took naproxen*/
/*Nested, double conceptID: Why did you take naproxen? Select all that apply. No lower level answers presnt in DD*/
"323106499" in unnest(p.D_745268907.D_655266993)  as d_655266993_d_323106499  ,  /*Arthritis*/
"769901710" in unnest(p.D_745268907.D_655266993)  as d_655266993_d_769901710  ,  /*Back pain/backache*/
"727773491" in unnest(p.D_745268907.D_655266993)  as d_655266993_d_727773491  ,  /*Menstrual Pain*/
"283652434" in unnest(p.D_745268907.D_655266993)  as d_655266993_d_283652434  ,  /*Disease prevention*/
"243596698" in unnest(p.D_745268907.D_655266993)  as d_655266993_d_243596698  ,  /*Headaches/migraine*/
"853261835" in unnest(p.D_745268907.D_655266993)  as d_655266993_d_853261835  ,  /*Illness, cold/flu, fever*/
"191656389" in unnest(p.D_745268907.D_655266993)  as d_655266993_d_191656389  ,  /*Muscle or joint pain, joint or bone injuries, sprains, or strains*/
"558504672" in unnest(p.D_745268907.D_655266993)  as d_655266993_d_558504672  ,  /*Toothache*/
p.D_745268907.D_414005872,  /*Ever use prescriptoin pain not directed by doctor*/
p.D_745268907.D_614123836,  /*Cholesterol and Blood Pressure (Hypertension) Medications- Have you ever taken any of these medications at least 4 times a month for 6 months or longer? Select all that apply.*/
p.D_745268907.D_731790154.CHOLHTN2_1.D_944872953 as d_944872953,  /*statins/cholesterol or lipid lowering drugs days per month*/
p.D_745268907.D_731790154.CHOLHTN2_1.D_259022344 as d_259022344,  /*statins/cholesterol or lipid lowering drugs days per week*/

p.D_745268907.D_550092533.D_307414105 as d_307414105,  /*Pills per day statins/cholesterol or lipid lowering drugs*/
p.D_745268907.D_163057677 as d_163057677,    /*Years took statins/cholesterol or lipid lowering drugs*/
p.D_745268907.D_225047594 as d_225047594,  /*Last time took statins/cholesterol or lipid lowering drugs*/
p.D_745268907.D_305292465.CHOLHTN2_2.D_399077240 as d_399077240, /*anti-hypertensive medication/drugs used to treat hypertension (high blood pressure) days per week*/
p.D_745268907.D_305292465.CHOLHTN2_2.D_225191459 as d_225191459, /*anti-hypertensive medication/drugs used to treat hypertension (high blood pressure) days per month*/
p.D_745268907.D_901498441.D_406453342 as d_406453342, /*Pills per day anti-hypertensive medication/drugs used to treat hypertension (high blood pressure)*/
p.D_745268907.D_147792229 as d_147792229,  /*Years took anti-hypertensive medication/drugs used to treat hypertension (high blood pressure)*/
p.D_745268907.D_976052812 as d_976052812,  /*Last time took anti-hypertensive medication/drugs used to treat hypertension (high blood pressure)*/
p.D_745268907.D_991427384 as d_991427384,  /*Last time took anti-hypertensive medication/drugs used to treat hypertension (high blood pressure)*/
p.D_745268907.D_112024853 as d_112024853, /*Ever took metformin (such as Glucophage, Glumetza, Riomet, Fortamet, or Glucophage XR)*/
p.D_745268907.D_694817520.METFOR2_1.D_706162015 as d_706162015, /*Metformin days per month*/
p.D_745268907.D_694817520.METFOR2_1.D_112601935 as d_112601935, /*Metformin days per week*/
p.D_745268907.D_991622246.D_991622246 as d_991622246,  /*Metformin milligrams don't know*/
p.D_745268907.D_991622246.D_685483563 as d_685483563,  /*Metformin milligrams*/
p.D_745268907.D_450131058 as d_450131058,  /*Metformin years took*/
p.D_745268907.D_991873978 as d_991873978,  /*Last took metformin*/
p.D_745268907.D_982448213 as d_982448213,  /*Have you ever taken insulin at least 4 times a month for 6 months or longer?*/
p.D_745268907.d_745223146.INSULIN2_1.D_864142365 as d_864142365,  /*Insulin days per week*/
p.D_745268907.d_745223146.INSULIN2_1.D_420047863 as d_420047863,  /*Insulin days per month*/
p.D_745268907.D_273218182.D_189226716 as d_189226716,  /*On the days that you took insulin, about how many units did you take per day, on most days?*/
p.D_745268907.D_273218182.D_273218182 as d_273218182,  /*On the days that you took insulin, about how many units did you take per day, on most days?, don't know*/
p.D_745268907.D_850202336.D_850202336 as d_850202336,  /*On the days that you took insulin, what concentration did you take?*/
p.D_745268907.D_799903478 as d_799903478,  /*Insulin years took*/
p.D_745268907.D_465635548 as d_465635548,  /*Last took Insulin*/
p.D_745268907.D_849945160 as d_849945160,  /*Current pregnant*/
p.D_745268907.D_996243083 as d_996243083,  /*Ever pregnant*/
p.D_745268907.D_939897560 as d_939897560,  /*Tried to get pregnant*/
p.D_745268907.D_224681201 as d_224681201,  /*Use fertility medications*/
p.D_745268907.D_111082535 as d_111082535,  /*Have you ever had in vitro fertilization (IVF)?*/
/*Nested: Have you ever used any of these hormonal medications or devices? Select all that apply.*/
/*Please describe (text) variable not nested. Found in a separate variable (D_684201296) below. */
p.D_745268907.D_543780863.D_684201296 as d_684201296, /*Other medication: please describe (text box)*/
"441493408" in unnest(p.D_745268907.D_543780863.D_543780863)  as d_441493408,  /*Combined oral contraceptive pills, commonly called "the pill" (combined means the pill includes both estrogen and progesterone/progestin)*/
"612012325" in unnest(p.D_745268907.D_543780863.D_543780863)  as d_612012325,  /*Progesterone-only or progestin-only contraceptive pills, commonly called "the mini-pill"*/
"100752105" in unnest(p.D_745268907.D_543780863.D_543780863)  as d_100752105,  /*Norplant (inserted under the skin of your upper arm, lasts several years)*/
"207913198" in unnest(p.D_745268907.D_543780863.D_543780863)  as d_207913198,  /*Depo-provera (birth control shot given once every three months)*/
"863920008" in unnest(p.D_745268907.D_543780863.D_543780863)  as d_863920008,  /*Vaginal ring (such as Nuva Ring, inserted vaginally each month)*/
"787142499" in unnest(p.D_745268907.D_543780863.D_543780863)  as d_787142499,  /*Birth control patch (such as Ortho Evra, applied to the skin)*/
"205223932" in unnest(p.D_745268907.D_543780863.D_543780863)  as d_205223932,  /*Copper IUD (such as Paraguard intrauterine device)*/
"817131019" in unnest(p.D_745268907.D_543780863.D_543780863)  as d_817131019,  /*Hormonal IUD (such as Mirena intrauterine device)*/
"541818367" in unnest(p.D_745268907.D_543780863.D_543780863)  as d_541818367,  /*Other: Please describe (yes or no) */
"303273276" in unnest(p.D_745268907.D_543780863.D_543780863)  as d_303273276,  /*None of the above*/
p.D_745268907.D_861838892.PAINREL2_1.D_765748316, /*Baby or low-dose aspirin (81 mg or less) days per week*/
p.D_745268907.D_861838892.PAINREL2_1.D_785412329, /*Baby or low-dose aspirin (81 mg or less) days per month*/
p.D_745268907.D_113681507, /*Year took baby or low-dose aspirin (81 mg or less)*/
p.D_745268907.D_177526169, /*Last time took baby or low-dose aspirin (81 mg or less)?*/
/*Nested, double conceptID: Why did you take baby or low-dose aspirin (81 mg or less)? Select all that apply.*/
"323106499" in unnest(p.D_745268907.D_643807999)  as d_643807999_d_323106499,  /*Arthritis*/
"769901710" in unnest(p.D_745268907.D_643807999)  as d_643807999_d_769901710,  /*Back pain/backache*/
"727773491" in unnest(p.D_745268907.D_643807999)  as d_643807999_d_727773491,  /*Menstrual Pain*/
"283652434" in unnest(p.D_745268907.D_643807999)  as d_643807999_d_283652434,  /*Disease prevention*/
"243596698" in unnest(p.D_745268907.D_643807999)  as d_643807999_d_243596698,  /*Headaches/migraine*/
"853261835" in unnest(p.D_745268907.D_643807999)  as d_643807999_d_853261835,  /*Illness, cold/flu, fever*/
"191656389" in unnest(p.D_745268907.D_643807999)  as d_643807999_d_191656389,  /*Muscle or joint pain, joint or bone injuries, sprains, or strains*/
"558504672" in unnest(p.D_745268907.D_643807999)  as d_643807999_d_558504672,  /*Toothache*/
/*Nested: Acid Suppressive Drugs- Have you ever taken any of these medications at least 4 times a month for 6 months or longer? Select all that apply.*/
"933374659" in unnest(p.D_745268907.D_643361372)  as d_933374659,  /*prescription proton pump inhibitors*/
"920460744" in unnest(p.D_745268907.D_643361372)  as d_920460744,  /*over-the-counter proton pump inhibitors*/
"449861632" in unnest(p.D_745268907.D_643361372)  as d_449861632,  /*over-the-counter H2 receptor blockers*/
"711076451" in unnest(p.D_745268907.D_643361372)  as d_711076451,  /*None of the above*/
p.D_745268907.D_266752903.ACIDSUP2_3.D_953328498 as d_953328498, /*over-the-counter H2 receptor blockers days per month*/
p.D_745268907.D_266752903.ACIDSUP2_3.D_944586769  as d_944586769, /*over-the-counter H2 receptor blockers days per week*/
/*ASK NICOLE: D_618427836 should be 456071382 On the days that you took over-the-counter H2 receptor blockers, about how many pills did you take per day, on most days?*/
p.D_745268907.D_618427836.D_825488116  as d_825488116, /*Pills per day over-the-counter H2 receptor blockers*/
p.D_745268907.D_774514900  as d_774514900, /*Years took over-the-counter H2 receptor blockers*/
p.D_745268907.D_368595692  as d_368595692, /*Last time took over-the-counter H2 receptor blockers*/
p.D_745268907.D_497904005  as d_497904005, /*Year ago last took over-the-counter H2 receptor blockers*/
/* ASK NICOLE, Check data: How old were you when you had your first menstrual period? Please make your best guess if you are not sure.*/
p.D_745268907.D_930232115.D_930232115  as d_930232115, /**/
p.D_745268907.D_930232115.D_969451837  as d_969451837, /*Age first menstrual period*/
p.D_745268907.D_621744463  as d_621744463, /*Used a hormone prescribed by a doctor or other health professional*/
p.D_745268907.D_596961796.D_101317072, /*Pills per day baby or low-dose aspirin (81 mg or less)*/
p.D_745268907.D_371176229  as d_371176229, /*Metformin years last took*/
p.D_745268907.grid_WORKACT.D_239572239  as d_239572239, /*Walking and heavy manual work often working with materials weighing over 50 pounds (for example, digging and shoveling, chopping wood, laying bricks, stacking hay, or other heavy manual labor, etc.)*/
p.D_745268907.grid_WORKACT.D_589522790  as d_589522790, /*Walking and carrying materials weighing less than 50 pounds (for example, delivering mail, waiting tables, light construction, janitorial work, etc.)*/
p.D_745268907.grid_WORKACT.D_699101535  as d_699101535, /*Sitting with small arm movements (for example, desk or computer work, light assembly, driving, etc.)*/
p.D_745268907.grid_WORKACT.D_652561589  as d_652561589, /*Standing with some walking (for example, as a store clerk, filing, making copies, walking to/from meetings, working on an assembly line, etc.)*/
p.D_745268907.grid_SITTING.D_396649512  as d_396649512, /*Other sitting outside of work (such as for reading, crafts, and hobbies)*/
p.D_745268907.grid_SITTING.D_654385712  as d_654385712, /*Driving or sitting in a car, bus or train. [This includes commuting to and from work.]*/
p.D_745268907.grid_SITTING.D_806746224  as d_806746224, /*Sitting and browsing the internet, playing video games, using social media, or using any other apps or programs on a tablet, phone, computer, or television*/
p.D_745268907.grid_SITTING.D_263483736  as d_263483736, /*Sitting and watching television shows, movies, or other video content on a television, tablet, phone, or computer*/
p.D_745268907.grid_HOUSE.D_151161693  as d_151161693, /*Walking while shopping or doing errands (Do not count walking for exercise.) during past 12 months*/
p.D_745268907.grid_HOUSE.D_980120253  as d_980120253, /*Light household chores (such as cooking, tidying up, laundry, or dusting)*/
p.D_745268907.grid_HOUSE.D_980196073  as d_980196073, /*Caring for pets (walking dogs, feeding, playing, grooming) during past 12 months*/
p.D_745268907.grid_HOUSE.D_993029890  as d_993029890, /*Moderate to vigorous household chores_(vacuuming, sweeping, etc.) during past 12 months*/
p.D_745268907.grid_HOUSE.D_115422925  as d_115422925, /*Caring for children or adults (pushing stroller or wheelchair, lifting, bathing) during past 12 months*/

/*UNNEST: During the past 12 months, did you do any of these activities outside of work? Select all that apply.*/
"797221287" in unnest(p.D_745268907.D_204421360)  as d_797221287,  /*Moderate outdoor chores (such as weeding, raking, or mowing the lawn)*/
"500744195" in unnest(p.D_745268907.D_204421360)  as d_500744195,  /*Vigorous outdoor chores (such as digging, carrying lumber, or snow shoveling)*/
"383015037" in unnest(p.D_745268907.D_204421360)  as d_383015037,  /*Home repair (such as painting, plumbing, or replacing carpeting)*/
"256626602" in unnest(p.D_745268907.D_204421360)  as d_256626602,  /*I did not do any of these activities*/

/*UNNEST, DOUBLE CID: In which season(s) did you do these moderate outdoor chores (such as weeding, raking, or mowing the lawn)? Select all that apply.*/
"917302906" in unnest(p.D_745268907.D_442059084)  as d_442059084_d_917302906,  /*Winter*/
"152773041" in unnest(p.D_745268907.D_442059084)  as d_442059084_d_152773041,  /*Spring*/
"249341444" in unnest(p.D_745268907.D_442059084)  as d_442059084_d_249341444,  /*Summer*/
"690018400" in unnest(p.D_745268907.D_442059084)  as d_442059084_d_690018400,  /*Fall*/

p.D_745268907.D_992022740, /*How often days moderate outdoor chores (such as weeding, raking, or mowing the lawn)*/
p.D_745268907.D_429531329, /*Time per day spent doing moderate outdoor chores (such as weeding, raking, or mowing the lawn)*/

/*UNNEST: During the past 12 months, did you do any of these exercise or recreational activities? Select all that apply.*/
"904954920" in unnest(p.D_745268907.D_517976064)  as d_904954920,  /*Walk or hike for exercise*/
"619501806" in unnest(p.D_745268907.D_517976064)  as d_619501806,  /*Jog or run*/
"203192394" in unnest(p.D_745268907.D_517976064)  as d_203192394,  /*Play tennis, squash, or racquetball*/
"261267696" in unnest(p.D_745268907.D_517976064)  as d_261267696,  /*Play golf*/
"926584500" in unnest(p.D_745268907.D_517976064)  as d_926584500,  /*Swim laps*/
"420058896" in unnest(p.D_745268907.D_517976064)  as d_420058896,  /*Ride a bicycle (including a stationary bike*/
"868685663" in unnest(p.D_745268907.D_517976064)  as d_868685663,  /*Strengthening exercises such as weightlifting, using weight machines, or calisthenics (such as sit-ups or push-ups)*/
"760484278" in unnest(p.D_745268907.D_517976064)  as d_760484278,  /*Yoga, Pilates, or Tai Chi*/
"345916806" in unnest(p.D_745268907.D_517976064)  as d_345916806,  /*Martial Arts (such as Karate or Judo)*/
"936042582" in unnest(p.D_745268907.D_517976064)  as d_936042582,  /*Dance*/
"182827107" in unnest(p.D_745268907.D_517976064)  as d_182827107,  /*Downhill ski or snowboard*/
"734860227" in unnest(p.D_745268907.D_517976064)  as d_734860227,  /*Cross-country ski*/
"371531887" in unnest(p.D_745268907.D_517976064)  as d_371531887,  /*Surf or bodyboard*/
"423631576" in unnest(p.D_745268907.D_517976064)  as d_423631576,  /*High-intensity circuit training (such P90x or Crossfit)*/
"769125260" in unnest(p.D_745268907.D_517976064)  as d_769125260,  /*Other exercise*/
"300663476" in unnest(p.D_745268907.D_517976064)  as d_300663476,  /*I did not do any of these activities*/

/*UNNEST, DOUBLE CID: In which season(s) did you do Yoga, Pilates, or Tai Chi? Select all that apply.*/
"917302906" in unnest(p.D_745268907.D_900299856)  as d_900299856_d_917302906,  /*Winter*/
"152773041" in unnest(p.D_745268907.D_900299856)  as d_900299856_d_152773041,  /*Spring*/
"249341444" in unnest(p.D_745268907.D_900299856)  as d_900299856_d_249341444,  /*Summer*/
"690018400" in unnest(p.D_745268907.D_900299856)  as d_900299856_d_690018400,  /*Fall*/

p.D_745268907.D_255761998  as d_255761998, /*During the season[s] in the past 12 months that you did Yoga, Pilates, or Tai Chi, about how often did you do this activity?*/
p.D_745268907.D_571361258  as d_571361258, /*On the days that you did Yoga, Pilates, or Tai Chi, about how much time per day did you spend doing this activity?*/

/*UNNEST, DOUBLE CID: In which season(s) you surf or bodyboard? Select all that apply.*/
"917302906" in unnest(p.D_745268907.D_262305264)  as d_262305264_d_917302906,  /*Winter*/
"152773041" in unnest(p.D_745268907.D_262305264)  as d_262305264_d_152773041,  /*Spring*/
"249341444" in unnest(p.D_745268907.D_262305264)  as d_262305264_d_249341444,  /*Summer*/
"690018400" in unnest(p.D_745268907.D_262305264)  as d_262305264_d_690018400,  /*Fall*/

p.D_745268907.D_214750556 as d_214750556, /*During the season[s] in the past 12 months that you did surfing or bodyboarding, about how often did you do this activity?*/
p.D_745268907.D_621878019 as d_621878019, /*On the days that you did surfing or bodyboarding, about how much time per day did you spend doing this activity?*/
p.D_745268907.D_591723682 as d_591723682, /*Is sleep schedule determined by your job, school, or other activities*/
p.D_745268907.D_168431681 as d_168431681, /*Days per week sleep schedule determined by your job, school, or other activities*/
p.D_745268907.D_636757313 as d_636757313, /*Time normally in bed workdays/most days*/
p.D_745268907.D_653906464.D_707805344 as d_707805344, /*Hours take to fall asleep, before workdays*/
p.D_745268907.D_653906464.D_850393641 as d_850393641, /*Minutes take to fall asleep, before workdays*/
p.D_745268907.D_580367946 as d_580367946, /*Time usually wake up workdays/most days*/
p.D_745268907.D_358259099.D_637468013 as d_637468013, /*How long do you lay in bed after you wake up on workdays (min)?*/
p.D_745268907.D_358259099.D_554670823 as d_554670823, /*How long do you lay in bed after you wake up on workdays (hours)?*/
p.D_745268907.D_392629868 as d_392629868, /*Use alarm clock workdays/most days*/
p.D_745268907.D_354980163 as d_354980163, /*Wake up before alarm clock workdays/most days*/
p.D_745268907.D_424807655.D_611065150 as d_611065150, /*Hours spent in direct sunlight workdays/most days*/
p.D_745268907.D_424807655.D_157959631 as d_157959631, /*Minutes spent in direct sunlight workdays/most days*/
p.D_745268907.SLHABIT1.D_257137378 as d_257137378, /*Did you feel very tired during the day?*/ 
p.D_745268907.SLHABIT1.D_781115321 as d_781115321, /*Did you have trouble getting back to sleep after you woke up earlier than you planned to?*/ 
p.D_745268907.SLHABIT1.D_965290070 as d_965290070, /*Did you wake up earlier than you planned to?*/ 
p.D_745268907.SLHABIT1.D_220238240 as d_220238240, /*Did you have trouble falling asleep?*/ 
p.D_745268907.SLHABIT1.D_453071098 as d_453071098, /*Did you take prescription or over-the-counter sleeping pills to help you sleep?*/ 
p.D_745268907.SLHABIT1.D_151006826 as d_151006826, /*Did you wake up several times a night?*/ 
p.D_745268907.SLHABIT1.D_513065503 as d_513065503, /*Did you have sleep problems that made you irritable (easily annoyed)?*/
p.D_745268907.D_910856756 as d_910856756, /*How was sleep last 4 weeks*/ 
p.D_745268907.grid_SLHABIT3.D_354550061 as d_354550061, /*Sitting quietly after a lunch that did not include alcohol*/
p.D_745268907.grid_SLHABIT3.D_186488870 as d_186488870, /*Riding as a passenger in a car for an hour without stopping*/ 
p.D_745268907.grid_SLHABIT3.D_576621769 as d_576621769, /*Watching television*/ 
p.D_745268907.grid_SLHABIT3.D_760686611 as d_760686611, /*Sitting and talking to someone*/ 
p.D_745268907.grid_SLHABIT3.D_179705366 as d_179705366, /*In a car, while you are stopped for a few minutes in traffic*/ 
p.D_745268907.grid_SLHABIT3.D_988508028 as d_988508028, /*Sitting inactive in a public place (such as a theater or a meeting)*/ 
p.D_745268907.grid_SLHABIT3.D_922388461 as d_922388461, /*Lying down to rest in the afternoon*/
p.D_745268907.D_471018082 as d_471018082, /*Dozed off or fallen asleep while driving*/ 
p.D_745268907.D_940733450 as d_940733450, /*Do you snore?*/ 
/*UNNEST: Has a doctor or other health professional ever told you that you have any of these conditions? Select all that apply.*/
"370923702" in unnest(p.D_745268907.D_479628567)  as d_370923702,  /*Sleep apnea (or Obstructive Sleep Apnea, OSA)*/
"495144424" in unnest(p.D_745268907.D_479628567)  as d_495144424,  /*Insomnia*/
"728393970" in unnest(p.D_745268907.D_479628567)  as d_728393970,  /*Restless legs*/
"531811052" in unnest(p.D_745268907.D_479628567)  as d_531811052,  /*Narcolepsy*/
"681218703" in unnest(p.D_745268907.D_479628567)  as d_681218703,  /*None of the above*/

/*UNNEST: Which of these treatments do you use or once used for your sleep apnea? Select all that apply.*/
p.D_745268907.D_629010195.D_629010195 as d_629010195, /**/ 
p.D_745268907.D_674976924 as d_674976924, /*Shift worker*/ 
/*UNNEST: Why did you take naproxen? Select all that apply.*/
p.D_745268907.D_655266993 as d_655266993, /**/ 
p.D_745268907.D_901498441.D_901498441 as d_901498441, /*Pills per day anti-hypertensive medication/drugs used to treat hypertension (high blood pressure), don't know*/ 
p.D_745268907.D_564374538 as d_564374538, /*Years ago took baby or low-dose aspirin (81 mg or less)*/ 
p.D_745268907.D_837412550.PAINREL2_2.D_317527310 as d_317527310, /*Regular or extra strength aspirin days per week*/ 
p.D_745268907.D_837412550.PAINREL2_2.D_310061478 as d_310061478, /*Regular or extra strength aspirin days per month*/ 
p.D_745268907.D_825189914.D_506631184 as d_506631184, /*Pills per day regular or extra strength aspirin*/ 
p.D_745268907.D_615979584 as d_615979584, /*Year took regular or extra strength aspirin*/ 
p.D_745268907.D_814141708 as d_814141708, /*Last time took regular or extra strength aspirin?*/ 

/*UNNEST, DOUBLE CID: Why did you take regular or extra strength aspirin? Select all that apply.*/
"323106499" in unnest(p.D_745268907.D_275143071)  as d_275143071_d_323106499,  /*Arthritis*/
"769901710" in unnest(p.D_745268907.D_275143071)  as d_275143071_d_769901710,  /*Back pain/backache*/
"727773491" in unnest(p.D_745268907.D_275143071)  as d_275143071_d_727773491,  /*Menstrual Pain*/
"283652434" in unnest(p.D_745268907.D_275143071)  as d_275143071_d_283652434,  /*Disease prevention*/
"243596698" in unnest(p.D_745268907.D_275143071)  as d_275143071_d_243596698,  /*Headaches/migraine*/
"853261835" in unnest(p.D_745268907.D_275143071)  as d_275143071_d_853261835,  /*Illness, cold/flu, fever*/
"191656389" in unnest(p.D_745268907.D_275143071)  as d_275143071_d_191656389,  /*Muscle or joint pain, joint or bone injuries, sprains, or strains*/
"558504672" in unnest(p.D_745268907.D_275143071)  as d_275143071_d_558504672,  /*Toothache*/

p.D_745268907.D_167997205 as d_167997205, /*Long until periods regular*/ 
p.D_745268907.D_972593606 as d_972593606, /*Usual length regular period*/ 
p.D_745268907.D_791830593 as d_791830593, /*Days long menstrual cycle specific*/ 
p.D_745268907.D_164595895 as d_164595895, /*Days long recent menstrual cycle*/ 
p.D_745268907.D_263114971 as d_263114971, /*Days long recent menstrual cycle specific*/
p.D_745268907.D_405571048 as d_405571048, /*Times pregnant*/ 
/* SPECIAL CASE: Depending on #children, there will be a loop of these questions for each child.*/
p.D_745268907.D_968816827_1_1 as d_968816827_1_1, /*Child1: Age pregnant*/ 
p.D_745268907.D_391951010_1_1 as d_391951010_1_1, /*Child1:Outcome pregnancy*/ 
p.D_745268907.D_771528780_1_1 as d_771528780_1_1, /*Child1:Delivery method*/ 
p.D_745268907.D_486574018_1_1 as d_486574018_1_1, /*Child1:Breastfeed*/ 
p.D_745268907.D_278277373_1_1 as d_278277373_1_1, /*Child1:Months breastfed*/ 
p.D_745268907.D_968816827_2_2 as d_968816827_2_2, /*Child2: Age pregnant*/ 
p.D_745268907.D_391951010_2_2 as d_391951010_2_2, /*Child2:Outcome pregnancy*/ 
p.D_745268907.D_281494550_2_2 as d_281494550_2_2, /*Child2:How many infants were delivered?    Multiples*/
p.D_745268907.D_771528780_2_2 as d_771528780_2_2 , /*Child2:Delivery method*/ 
p.D_745268907.D_486574018_2_2 as d_486574018_2_2, /*Child2:Breastfeed*/ 
/* END SPECIAL CASE*/
p.D_745268907.D_779052408 as d_779052408, /*Gestational diabetes*/ 
p.D_745268907.D_133297530 as d_133297530, /*Eclampsia or pre-eclampsia*/ 
p.D_745268907.D_880331901 as d_880331901, /*Age combined oral contraceptive pills first use*/ 
p.D_745268907.D_301052397 as d_301052397, /*Currently using combined oral contraceptive pills*/ 
p.D_745268907.D_734836192 as d_734836192, /*Age combined oral contraceptive pills last use*/ 
p.D_745268907.D_215455305.HORMED5_1.D_970604592 as d_970604592, /*Years use combined oral contraceptive pills*/ 
p.D_745268907.D_215455305.HORMED5_1.D_434243220 as d_434243220, /*Months use combined oral contraceptive pills*/ 

/*UNNEST: Have you ever taken any of these types of estrogen-only (unopposed estrogen) prescription hormones? Select all that apply.*/
"246843973" in unnest(p.D_745268907.D_668834883.D_668834883)  as d_246843973,  /*Oral estrogen-only medication (such as Cenestin, Estrace, Femtrace, Menest, Ogen, or Premarin)*/
"854184254" in unnest(p.D_745268907.D_668834883.D_668834883)  as d_854184254,  /*Patch estrogen-only medication (such as Estraderm, Alora, or Climara)*/
"515434780" in unnest(p.D_745268907.D_668834883.D_668834883)  as d_515434780,  /*Vaginal ring (Femring), vaginal cream (Estrace), or vaginal tablet (Vagifem) estrogen-only medication*/
"674148137" in unnest(p.D_745268907.D_668834883.D_668834883)  as d_674148137,  /*Estrogen-only skin gel, cream, or spray-on medication (such as Divigel, Elestrin, or Estrogel)*/
"266011986" in unnest(p.D_745268907.D_668834883.D_668834883)  as d_266011986,  /*Any other type of estrogen-only medication: Please describe*/
"206737681" in unnest(p.D_745268907.D_668834883.D_668834883)  as d_206737681,  /*None of the above*/
/* didn't include text box response for p.D_745268907.D_668834883.D_640559281, Other medication: please describe text box*/

p.D_745268907.D_648678282 as d_648678282, /*Age vaginal ring, vaginal cream, or vaginal tablet estrogen-only medication first use*/ 
p.D_745268907.D_850536692 as d_850536692, /*Currently using vaginal ring, vaginal cream, or vaginal tablet estrogen-only medication*/
p.D_745268907.D_695206943.ESTROHOR5_3.D_795789472 as d_795789472, /*Years use vaginal ring, vaginal cream, or vaginal tablet estrogen-only medication*/ 
p.D_745268907.D_695206943.ESTROHOR5_3.D_194522326 as d_194522326, /*Months use vaginal ring, vaginal cream, or vaginal tablet estrogen-only medication*/ 

/*UNNEST: Have you ever taken any of these types of progestin-only prescription hormones? Select all that apply.*/
"687050279" in unnest(p.D_745268907.D_800943768.D_800943768)  as d_687050279,  /*Oral progestin-only medication (such as Provera or Prometrium)*/
"636984303" in unnest(p.D_745268907.D_800943768.D_800943768)  as d_636984303,  /*Other progestin/progesterone-only medication: please describe*/
"259904995" in unnest(p.D_745268907.D_800943768.D_800943768)  as d_259904995,  /*None of the above*/
p.D_745268907.D_800943768.D_235516216 as d_235516216, /*Other progestin/progesterone-only medication: please describe text box*/ 

/*UNNEST: Have you ever taken any of these types of combined estrogen plus progestin prescription hormones? Select all that apply.*/
"837393880" in unnest(p.D_745268907.D_263785082.D_263785082)  as d_837393880,  /*Combined oral estrogen plus progestin pill (such as Prempro, Activella, Femhrt, or Prefest)*/
"944874693" in unnest(p.D_745268907.D_263785082.D_263785082)  as d_944874693,  /*Two separate pills, one estrogen and one progestin pill*/
"364744868" in unnest(p.D_745268907.D_263785082.D_263785082)  as d_364744868,  /*Any other type of combined estrogen plus progestin prescription hormones (such as the patch (Climara-Pro), other pills, or creams): Please describe*/
"803579011" in unnest(p.D_745268907.D_263785082.D_263785082)  as d_803579011,  /*None of the above*/
p.D_745268907.D_263785082.D_542108835 as d_542108835, /*Any other type of combined estrogen plus progestin prescription hormones (such as the patch (Climara-Pro), other pills, or creams): Please describe text box*/ 

p.D_745268907.D_111235606 as d_111235606, /*Have you ever used testosterone therapy (e.g., Depo-Testosterone, Androgel, Testim, Fortesta, Axiron, Androderm, Striant)?*/

/*UNNEST: Which forms of testosterone medication(s) have you taken? Select all that apply.*/
"729863969" in unnest(p.D_745268907.D_946849196)  as d_729863969,  /*Gel/cream*/
"108104748" in unnest(p.D_745268907.D_946849196)  as d_108104748,  /*Injection*/
"717308596" in unnest(p.D_745268907.D_946849196)  as d_717308596,  /*Skin patch*/
"746788766" in unnest(p.D_745268907.D_946849196)  as d_746788766,  /*Pills*/
"158214723" in unnest(p.D_745268907.D_946849196)  as d_158214723,  /*Gum or inner cheek patch*/
"658810736" in unnest(p.D_745268907.D_946849196)  as d_658810736,  /*Slow release implant (testosterone pellets)*/

p.D_745268907.D_797076693 as d_797076693, /*How old were you when you first used testosterone therapy?*/
p.D_745268907.D_984514646 as d_984514646, /*How often did you or do you currently use testosterone therapy?*/ 
p.D_745268907.D_414663452 as d_414663452, /*How old were you when you last used testosterone therapy?*/
p.D_745268907.D_570187182 as d_570187182, /*Have you ever taken any other type of prescription hormones?*/ 

/*UNNEST, DOUBLE CID: In which season(s) did you do these vigorous outdoor chores (such as digging, carrying lumber, or snow shoveling)? Select all that apply.*/
"917302906" in unnest(p.D_745268907.D_829749579)  as d_829749579_d_917302906,  /*Winter*/
"152773041" in unnest(p.D_745268907.D_829749579)  as d_829749579_d_152773041,  /*Spring*/
"249341444" in unnest(p.D_745268907.D_829749579)  as d_829749579_d_249341444,  /*Summer*/
"690018400" in unnest(p.D_745268907.D_829749579)  as d_829749579_d_690018400,  /*Fall*/

p.D_745268907.D_888313306 as d_888313306, /*How often days vigorous outdoor chores (such as digging, carrying lumber, or snow shoveling)*/ 
p.D_745268907.D_644018981 as d_644018981, /*Time per day spent doing vigorous outdoor chores (such as digging, carrying lumber, or snow shoveling)*/

/*UNNEST, DOUBLE CID: In which season(s) did you walk or hike for exercise? Select all that apply.*/
"917302906" in unnest(p.D_745268907.D_894610280)  as d_894610280_d_917302906,  /*Winter*/
"152773041" in unnest(p.D_745268907.D_894610280)  as d_894610280_d_152773041,  /*Spring*/
"249341444" in unnest(p.D_745268907.D_894610280)  as d_894610280_d_249341444,  /*Summer*/
"690018400" in unnest(p.D_745268907.D_894610280)  as d_894610280_d_690018400,  /*Fall*/

p.D_745268907.D_267122668 as d_267122668, /*During the season[s] in the past 12 months that you walked or hiked for exercise, about how often did you do this activity?*/
p.D_745268907.D_901660173 as d_901660173, /*On the days that you walked or hiked for exercise, about how much time per day did you spend doing this activity?*/ 

/*UNNEST, DOUBLE CID: In which season(s) did you play golf? Select all that apply.*/
"917302906" in unnest(p.D_745268907.D_635874413)  as d_635874413_d_917302906,  /*Winter*/
"152773041" in unnest(p.D_745268907.D_635874413)  as d_635874413_d_152773041,  /*Spring*/
"249341444" in unnest(p.D_745268907.D_635874413)  as d_635874413_d_249341444,  /*Summer*/
"690018400" in unnest(p.D_745268907.D_635874413)  as d_635874413_d_690018400,  /*Fall*/

p.D_745268907.D_184448791 as d_184448791, /*During the season[s] in the past 12 months that you played golf, about how often did you do this activity?*/ 
p.D_745268907.D_768302347 as d_768302347, /*On the days that you played golf, about how much time per day did you spend doing this activity?*/
p.D_745268907.D_406137786 as d_406137786, /*Describe snoring*/ 
p.D_745268907.D_631303960 as d_631303960, /*Often snoring*/
p.D_745268907.D_876846761 as d_876846761, /*Snoring bother people*/ 
p.D_745268907.D_756521698 as d_756521698, /*Often stop breathing*/
p.pin,
p.Connect_ID,
p.token
from `nih-nci-dceg-connect-prod-6d04.Connect.participants` as p


