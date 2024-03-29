% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/countyhealth14.R
\docType{data}
\name{countyhealth14}
\alias{countyhealth14}
\title{Countyhealthrankings.org 2014 dataset}
\format{
A data.frame with 3191 rows (Counties) and 328 columns (variables)
\itemize{
 \item   [1] "FIPS"                                                                                             
 \item   [2] "ST"                                                                                               
 \item   [3] "FIPS.State.Code"                                                                                  
 \item   [4] "FIPS.County.Code"                                                                                 
 \item   [5] "State"                                                                                            
 \item   [6] "County"                                                                                           
 \item   [7] "County.that.was.not.ranked"                                                                       
 \item   [8] "Premature.death.Value"                                                                            
 \item   [9] "Premature.death.Numerator"                                                                        
 \item  [10] "Premature.death.Denominator"                                                                      
 \item  [11] "Premature.death.Lower.Confidence.Interval"                                                        
 \item  [12] "Premature.death.Upper.Confidence.Interval"                                                        
 \item  [13] "Poor.or.fair.health.Value"                                                                        
 \item  [14] "Poor.or.fair.health.Numerator"                                                                    
 \item  [15] "Poor.or.fair.health.Denominator"                                                                  
 \item  [16] "Poor.or.fair.health.Lower.Confidence.Interval"                                                    
 \item  [17] "Poor.or.fair.health.Upper.Confidence.Interval"                                                    
 \item  [18] "Poor.physical.health.days.Value"                                                                  
 \item  [19] "Poor.physical.health.days.Numerator"                                                              
 \item  [20] "Poor.physical.health.days.Denominator"                                                            
 \item  [21] "Poor.physical.health.days.Lower.Confidence.Interval"                                              
 \item  [22] "Poor.physical.health.days.Upper.Confidence.Interval"                                              
 \item  [23] "Poor.mental.health.days.Value"                                                                    
 \item  [24] "Poor.mental.health.days.Numerator"                                                                
 \item  [25] "Poor.mental.health.days.Denominator"                                                              
 \item  [26] "Poor.mental.health.days.Lower.Confidence.Interval"                                                
 \item  [27] "Poor.mental.health.days.Upper.Confidence.Interval"                                                
 \item  [28] "Low.birthweight.Value"                                                                            
 \item  [29] "Low.birthweight.Numerator"                                                                        
 \item  [30] "Low.birthweight.Denominator"                                                                      
 \item  [31] "Low.birthweight.Lower.Confidence.Interval"                                                        
 \item  [32] "Low.birthweight.Upper.Confidence.Interval"                                                        
 \item  [33] "Adult.smoking.Value"                                                                              
 \item  [34] "Adult.smoking.Numerator"                                                                          
 \item  [35] "Adult.smoking.Denominator"                                                                        
 \item  [36] "Adult.smoking.Lower.Confidence.Interval"                                                          
 \item  [37] "Adult.smoking.Upper.Confidence.Interval"                                                          
 \item  [38] "Adult.obesity.Value"                                                                              
 \item  [39] "Adult.obesity.Numerator"                                                                          
 \item  [40] "Adult.obesity.Denominator"                                                                        
 \item  [41] "Adult.obesity.Lower.Confidence.Interval"                                                          
 \item  [42] "Adult.obesity.Upper.Confidence.Interval"                                                          
 \item  [43] "Food.environment.index.Value"                                                                     
 \item  [44] "Food.environment.index.Numerator"                                                                 
 \item  [45] "Food.environment.index.Denominator"                                                               
 \item  [46] "Food.environment.index.Lower.Confidence.Interval"                                                 
 \item  [47] "Food.environment.index.Upper.Confidence.Interval"                                                 
 \item  [48] "Physical.inactivity.Value"                                                                        
 \item  [49] "Physical.inactivity.Numerator"                                                                    
 \item  [50] "Physical.inactivity.Denominator"                                                                  
 \item  [51] "Physical.inactivity.Lower.Confidence.Interval"                                                    
 \item  [52] "Physical.inactivity.Upper.Confidence.Interval"                                                    
 \item  [53] "Access.to.exercise.opportunities.Value"                                                           
 \item  [54] "Access.to.exercise.opportunities.Numerator"                                                       
 \item  [55] "Access.to.exercise.opportunities.Denominator"                                                     
 \item  [56] "Access.to.exercise.opportunities.Lower.Confidence.Interval"                                       
 \item  [57] "Access.to.exercise.opportunities.Upper.Confidence.Interval"                                       
 \item  [58] "Excessive.drinking.Value"                                                                         
 \item  [59] "Excessive.drinking.Numerator"                                                                     
 \item  [60] "Excessive.drinking.Denominator"                                                                   
 \item  [61] "Excessive.drinking.Lower.Confidence.Interval"                                                     
 \item  [62] "Excessive.drinking.Upper.Confidence.Interval"                                                     
 \item  [63] "Alcohol.impaired.driving.deaths.Value"                                                            
 \item  [64] "Alcohol.impaired.driving.deaths.Numerator"                                                        
 \item  [65] "Alcohol.impaired.driving.deaths.Denominator"                                                      
 \item  [66] "Alcohol.impaired.driving.deaths.Lower.Confidence.Interval"                                        
 \item  [67] "Alcohol.impaired.driving.deaths.Upper.Confidence.Interval"                                        
 \item  [68] "Sexually.transmitted.infections.Value"                                                            
 \item  [69] "Sexually.transmitted.infections.Numerator"                                                        
 \item  [70] "Sexually.transmitted.infections.Denominator"                                                      
 \item  [71] "Sexually.transmitted.infections.Lower.Confidence.Interval"                                        
 \item  [72] "Sexually.transmitted.infections.Upper.Confidence.Interval"                                        
 \item  [73] "Teen.births.Value"                                                                                
 \item  [74] "Teen.births.Numerator"                                                                            
 \item  [75] "Teen.births.Denominator"                                                                          
 \item  [76] "Teen.births.Lower.Confidence.Interval"                                                            
 \item  [77] "Teen.births.Upper.Confidence.Interval"                                                            
 \item  [78] "Uninsured.Value"                                                                                  
 \item  [79] "Uninsured.Numerator"                                                                              
 \item  [80] "Uninsured.Denominator"                                                                            
 \item  [81] "Uninsured.Lower.Confidence.Interval"                                                              
 \item  [82] "Uninsured.Upper.Confidence.Interval"                                                              
 \item  [83] "Primary.care.physicians.Value"                                                                    
 \item  [84] "Primary.care.physicians.Ratio"                                                                    
 \item  [85] "Primary.care.physicians.Numerator"                                                                
 \item  [86] "Primary.care.physicians.Denominator"                                                              
 \item  [87] "Primary.care.physicians.Lower.Confidence.Interval"                                                
 \item  [88] "Primary.care.physicians.Upper.Confidence.Interval"                                                
 \item  [89] "Dentists.Value"                                                                                   
 \item  [90] "Dentists.Ratio"                                                                                   
 \item  [91] "Dentists.Numerator"                                                                               
 \item  [92] "Dentists.Denominator"                                                                             
 \item  [93] "Dentists.Lower.Confidence.Interval"                                                               
 \item  [94] "Dentists.Upper.Confidence.Interval"                                                               
 \item  [95] "Mental.health.providers.Value"                                                                    
 \item  [96] "Mental.health.providers.Ratio"                                                                    
 \item  [97] "Mental.health.providers.Numerator"                                                                
 \item  [98] "Mental.health.providers.Denominator"                                                              
 \item  [99] "Mental.health.providers.Lower.Confidence.Interval"                                                
 \item [100] "Mental.health.providers.Upper.Confidence.Interval"                                                
 \item [101] "Preventable.hospital.stays.Value"                                                                 
 \item [102] "Preventable.hospital.stays.Numerator"                                                             
 \item [103] "Preventable.hospital.stays.Denominator"                                                           
 \item [104] "Preventable.hospital.stays.Lower.Confidence.Interval"                                             
 \item [105] "Preventable.hospital.stays.Upper.Confidence.Interval"                                             
 \item [106] "Diabetic.screening.Value"                                                                         
 \item [107] "Diabetic.screening.Numerator"                                                                     
 \item [108] "Diabetic.screening.Denominator"                                                                   
 \item [109] "Diabetic.screening.Lower.Confidence.Interval"                                                     
 \item [110] "Diabetic.screening.Upper.Confidence.Interval"                                                     
 \item [111] "Mammography.screening.Value"                                                                      
 \item [112] "Mammography.screening.Numerator"                                                                  
 \item [113] "Mammography.screening.Denominator"                                                                
 \item [114] "Mammography.screening.Lower.Confidence.Interval"                                                  
 \item [115] "Mammography.screening.Upper.Confidence.Interval"                                                  
 \item [116] "High.school.graduation.Value"                                                                     
 \item [117] "High.school.graduation.Numerator"                                                                 
 \item [118] "High.school.graduation.Denominator"                                                               
 \item [119] "High.school.graduation.Lower.Confidence.Interval"                                                 
 \item [120] "High.school.graduation.Upper.Confidence.Interval"                                                 
 \item [121] "Some.college.Value"                                                                               
 \item [122] "Some.college.Numerator"                                                                           
 \item [123] "Some.college.Denominator"                                                                         
 \item [124] "Some.college.Lower.Confidence.Interval"                                                           
 \item [125] "Some.college.Upper.Confidence.Interval"                                                           
 \item [126] "Unemployment.Value"                                                                               
 \item [127] "Unemployment.Numerator"                                                                           
 \item [128] "Unemployment.Denominator"                                                                         
 \item [129] "Unemployment.Lower.Confidence.Interval"                                                           
 \item [130] "Unemployment.Upper.Confidence.Interval"                                                           
 \item [131] "Children.in.poverty.Value"                                                                        
 \item [132] "Children.in.poverty.Numerator"                                                                    
 \item [133] "Children.in.poverty.Denominator"                                                                  
 \item [134] "Children.in.poverty.Lower.Confidence.Interval"                                                    
 \item [135] "Children.in.poverty.Upper.Confidence.Interval"                                                    
 \item [136] "Inadequate.social.support.Value"                                                                  
 \item [137] "Inadequate.social.support.Numerator"                                                              
 \item [138] "Inadequate.social.support.Denominator"                                                            
 \item [139] "Inadequate.social.support.Lower.Confidence.Interval"                                              
 \item [140] "Inadequate.social.support.Upper.Confidence.Interval"                                              
 \item [141] "Children.in.single.parent.households.Value"                                                       
 \item [142] "Children.in.single.parent.households.Numerator"                                                   
 \item [143] "Children.in.single.parent.households.Denominator"                                                 
 \item [144] "Children.in.single.parent.households.Lower.Confidence.Interval"                                   
 \item [145] "Children.in.single.parent.households.Upper.Confidence.Interval"                                   
 \item [146] "Violent.crime.Value"                                                                              
 \item [147] "Violent.crime.Numerator"                                                                          
 \item [148] "Violent.crime.Denominator"                                                                        
 \item [149] "Violent.crime.Lower.Confidence.Interval"                                                          
 \item [150] "Violent.crime.Upper.Confidence.Interval"                                                          
 \item [151] "Injury.deaths.Value"                                                                              
 \item [152] "Injury.deaths.Numerator"                                                                          
 \item [153] "Injury.deaths.Denominator"                                                                        
 \item [154] "Injury.deaths.Lower.Confidence.Interval"                                                          
 \item [155] "Injury.deaths.Upper.Confidence.Interval"                                                          
 \item [156] "Air.pollution...particulate.matter.Value"                                                         
 \item [157] "Air.pollution...particulate.matter.Numerator"                                                     
 \item [158] "Air.pollution...particulate.matter.Denominator"                                                   
 \item [159] "Air.pollution...particulate.matter.Lower.Confidence.Interval"                                     
 \item [160] "Air.pollution...particulate.matter.Upper.Confidence.Interval"                                     
 \item [161] "Drinking.water.violations.Value"                                                                  
 \item [162] "Drinking.water.violations.Numerator"                                                              
 \item [163] "Drinking.water.violations.Denominator"                                                            
 \item [164] "Drinking.water.violations.Lower.Confidence.Interval"                                              
 \item [165] "Drinking.water.violations.Upper.Confidence.Interval"                                              
 \item [166] "Severe.housing.problems.Value"                                                                    
 \item [167] "Severe.housing.problems.Numerator"                                                                
 \item [168] "Severe.housing.problems.Denominator"                                                              
 \item [169] "Severe.housing.problems.Lower.Confidence.Interval"                                                
 \item [170] "Severe.housing.problems.Upper.Confidence.Interval"                                                
 \item [171] "Driving.alone.to.work.Value"                                                                      
 \item [172] "Driving.alone.to.work.Numerator"                                                                  
 \item [173] "Driving.alone.to.work.Denominator"                                                                
 \item [174] "Driving.alone.to.work.Lower.Confidence.Interval"                                                  
 \item [175] "Driving.alone.to.work.Upper.Confidence.Interval"                                                  
 \item [176] "Long.commute...driving.alone.Value"                                                               
 \item [177] "Long.commute...driving.alone.Numerator"                                                           
 \item [178] "Long.commute...driving.alone.Denominator"                                                         
 \item [179] "Long.commute...driving.alone.Lower.Confidence.Interval"                                           
 \item [180] "Long.commute...driving.alone.Upper.Confidence.Interval"                                           
 \item [181] "X2011.population.estimate.Value"                                                                  
 \item [182] "X2011.population.estimate.Numerator"                                                              
 \item [183] "X2011.population.estimate.denominator"                                                            
 \item [184] "X2011.population.estimate.Lower.Confidence.Interval"                                              
 \item [185] "X2011.population.estimate.Upper.Confidence.Interval"                                              
 \item [186] "Percent.of.population.below.18.years.of.age"                                                      
 \item [187] "Percent.of.population.below.18.years.of.age.Numerator"                                            
 \item [188] "Percent.of.population.below.18.years.of.age.denominator"                                          
 \item [189] "Percent.of.population.below.18.years.of.age.Lower.Confidence.Interval"                            
 \item [190] "Percent.of.population.below.18.years.of.age.Upper.Confidence.Interval"                            
 \item [191] "Percent.of.population.aged.65.years.and.older"                                                    
 \item [192] "Percent.of.population.aged.65.years.and.older.Numerator"                                          
 \item [193] "Percent.of.population.aged.65.years.and.older.denominator"                                        
 \item [194] "Percent.of.population.aged.65.years.and.older.Lower.Confidence.Interval"                          
 \item [195] "Percent.of.population.aged.65.years.and.older.Upper.Confidence.Interval"                          
 \item [196] "Percent.of.population.that.is.non.Hispanic.African.American"                                      
 \item [197] "Percent.of.population.that.is.non.Hispanic.African.American.Numerator"                            
 \item [198] "Percent.of.population.that.is.non.Hispanic.African.American.denominator"                          
 \item [199] "Percent.of.population.that.is.non.Hispanic.African.American.Lower.Confidence.Interval"            
 \item [200] "Percent.of.population.that.is.non.Hispanic.African.American.Upper.Confidence.Interval"            
 \item [201] "Percent.of.population.that.is.American.Indian.or.Alaskan.Native"                                  
 \item [202] "Percent.of.population.that.is.American.Indian.or.Alaskan.Native.Numerator"                        
 \item [203] "Percent.of.population.that.is.American.Indian.or.Alaskan.Native.denominator"                      
 \item [204] "Percent.of.population.that.is.American.Indian.or.Alaskan.Native.Lower.Confidence.Interval"        
 \item [205] "Percent.of.population.that.is.American.Indian.or.Alaskan.Native.Upper.Confidence.Interval"        
 \item [206] "Percent.of.population.that.is.Asian"                                                              
 \item [207] "Percent.of.population.that.is.Asian.Numerator"                                                    
 \item [208] "Percent.of.population.that.is.Asian.denominator"                                                  
 \item [209] "Percent.of.population.that.is.Asian.Lower.Confidence.Interval"                                    
 \item [210] "Percent.of.population.that.is.Asian.Upper.Confidence.Interval"                                    
 \item [211] "Percent.of.population.that.is.Native.Hawaiian.or.Other.Pacific.Islander"                          
 \item [212] "Percent.of.population.that.is.Native.Hawaiian.or.Other.Pacific.Islander.Numerator"                
 \item [213] "Percent.of.population.that.is.Native.Hawaiian.or.Other.Pacific.Islander.denominator"              
 \item [214] "Percent.of.population.that.is.Native.Hawaiian.or.Other.Pacific.Islander.Lower.Confidence.Interval"
 \item [215] "Percent.of.population.that.is.Native.Hawaiian.or.Other.Pacific.Islander.Upper.Confidence.Interval"
 \item [216] "Percent.of.population.that.is.Hispanic"                                                           
 \item [217] "Percent.of.population.that.is.Hispanic.Numerator"                                                 
 \item [218] "Percent.of.population.that.is.Hispanic.denominator"                                               
 \item [219] "Percent.of.population.that.is.Hispanic.Lower.Confidence.Interval"                                 
 \item [220] "Percent.of.population.that.is.Hispanic.Upper.Confidence.Interval"                                 
 \item [221] "Percent.of.population.that.is.non.Hispanic.White"                                                 
 \item [222] "Percent.of.population.that.is.non.Hispanic.White.Numerator"                                       
 \item [223] "Percent.of.population.that.is.non.Hispanic.White.denominator"                                     
 \item [224] "Percent.of.population.that.is.non.Hispanic.White.Lower.Confidence.Interval"                       
 \item [225] "Percent.of.population.that.is.non.Hispanic.White.Upper.Confidence.Interval"                       
 \item [226] "Population.that.is.not.proficient.in.English.Value"                                               
 \item [227] "Population.that.is.not.proficient.in.English.Numerator"                                           
 \item [228] "Population.that.is.not.proficient.in.English.Denominator"                                         
 \item [229] "Population.that.is.not.proficient.in.English.Lower.Confidence.Interval"                           
 \item [230] "Population.that.is.not.proficient.in.English.Upper.Confidence.Interval"                           
 \item [231] "Percent.of.population.that.is.female"                                                             
 \item [232] "Percent.of.population.that.is.female.Numerator"                                                   
 \item [233] "Percent.of.population.that.is.female.denominator"                                                 
 \item [234] "Percent.of.population.that.is.female.Lower.Confidence.Interval"                                   
 \item [235] "Percent.of.population.that.is.female.Upper.Confidence.Interval"                                   
 \item [236] "Population.living.in.a.rural.area.Value"                                                          
 \item [237] "Population.living.in.a.rural.area.Numerator"                                                      
 \item [238] "Population.living.in.a.rural.area.Denominator"                                                    
 \item [239] "Population.living.in.a.rural.area.Lower.Confidence.Interval"                                      
 \item [240] "Population.living.in.a.rural.area.Upper.Confidence.Interval"                                      
 \item [241] "Diabetes.Value"                                                                                   
 \item [242] "Diabetes.Numerator"                                                                               
 \item [243] "Diabetes.Denominator"                                                                             
 \item [244] "Diabetes.Lower.Confidence.Interval"                                                               
 \item [245] "Diabetes.Upper.Confidence.Interval"                                                               
 \item [246] "HIV.prevalence.rate.Value"                                                                        
 \item [247] "HIV.prevalence.rate.Numerator"                                                                    
 \item [248] "HIV.prevalence.rate.Denominator"                                                                  
 \item [249] "HIV.prevalence.rate.Lower.Confidence.Interval"                                                    
 \item [250] "HIV.prevalence.rate.Upper.Confidence.Interval"                                                    
 \item [251] "Premature.age.adjusted.mortality.Value"                                                           
 \item [252] "Premature.age.adjusted.mortality.Numerator"                                                       
 \item [253] "Premature.age.adjusted.mortality.Denominator"                                                     
 \item [254] "Premature.age.adjusted.mortality.Lower.Confidence.Interval"                                       
 \item [255] "Premature.age.adjusted.mortality.Upper.Confidence.Interval"                                       
 \item [256] "Infant.mortality.Value"                                                                           
 \item [257] "Infant.mortality.Numerator"                                                                       
 \item [258] "Infant.mortality.Denominator"                                                                     
 \item [259] "Infant.mortality.Lower.Confidence.Interval"                                                       
 \item [260] "Infant.mortality.Upper.Confidence.Interval"                                                       
 \item [261] "Child.mortality.Value"                                                                            
 \item [262] "Child.mortality.Numerator"                                                                        
 \item [263] "Child.mortality.Denominator"                                                                      
 \item [264] "Child.mortality.Lower.Confidence.Interval"                                                        
 \item [265] "Child.mortality.Upper.Confidence.Interval"                                                        
 \item [266] "Food.insecurity.Value"                                                                            
 \item [267] "Food.insecurity.Numerator"                                                                        
 \item [268] "Food.insecurity.Denominator"                                                                      
 \item [269] "Food.insecurity.Lower.Confidence.Interval"                                                        
 \item [270] "Food.insecurity.Upper.Confidence.Interval"                                                        
 \item [271] "Limited.access.to.healthy.foods.Value"                                                            
 \item [272] "Limited.access.to.healthy.foods.Numerator"                                                        
 \item [273] "Limited.access.to.healthy.foods.Denominator"                                                      
 \item [274] "Limited.access.to.healthy.foods.Lower.Confidence.Interval"                                        
 \item [275] "Limited.access.to.healthy.foods.Upper.Confidence.Interval"                                        
 \item [276] "Motor.vehicle.crash.deaths.Value"                                                                 
 \item [277] "Motor.vehicle.crash.deaths.Numerator"                                                             
 \item [278] "Motor.vehicle.crash.deaths.Denominator"                                                           
 \item [279] "Motor.vehicle.crash.deaths.Lower.Confidence.Interval"                                             
 \item [280] "Motor.vehicle.crash.deaths.Upper.Confidence.Interval"                                             
 \item [281] "Drug.poisoning.deaths.Value"                                                                      
 \item [282] "Drug.poisoning.deaths.Numerator"                                                                  
 \item [283] "Drug.poisoning.deaths.Denominator"                                                                
 \item [284] "Drug.poisoning.deaths.Lower.Confidence.Interval"                                                  
 \item [285] "Drug.poisoning.deaths.Upper.Confidence.Interval"                                                  
 \item [286] "Uninsured.adults.Value"                                                                           
 \item [287] "Uninsured.adults.Numerator"                                                                       
 \item [288] "Uninsured.adults.Denominator"                                                                     
 \item [289] "Uninsured.adults.Lower.Confidence.Interval"                                                       
 \item [290] "Uninsured.adults.Upper.Confidence.Interval"                                                       
 \item [291] "Uninsured.children.Value"                                                                         
 \item [292] "Uninsured.children.Numerator"                                                                     
 \item [293] "Uninsured.children.Denominator"                                                                   
 \item [294] "Uninsured.children.Lower.Confidence.Interval"                                                     
 \item [295] "Uninsured.children.Upper.Confidence.Interval"                                                     
 \item [296] "Health.care.costs.Value"                                                                          
 \item [297] "Health.care.costs.Numerator"                                                                      
 \item [298] "Health.care.costs.Denominator"                                                                    
 \item [299] "Health.care.costs.Lower.Confidence.Interval"                                                      
 \item [300] "Health.care.costs.Upper.Confidence.Interval"                                                      
 \item [301] "Could.not.see.doctor.due.to.cost.Value"                                                           
 \item [302] "Could.not.see.doctor.due.to.cost.Numerator"                                                       
 \item [303] "Could.not.see.doctor.due.to.cost.Denominator"                                                     
 \item [304] "Could.not.see.doctor.due.to.cost.Lower.Confidence.Interval"                                       
 \item [305] "Could.not.see.doctor.due.to.cost.Upper.Confidence.Interval"                                       
 \item [306] "Other.primary.care.providers.Value"                                                               
 \item [307] "Other.primary.care.providers.Ratio"                                                               
 \item [308] "Other.primary.care.providers.Numerator"                                                           
 \item [309] "Other.primary.care.providers.Denominator"                                                         
 \item [310] "Other.primary.care.providers.Lower.Confidence.Interval"                                           
 \item [311] "Other.primary.care.providers.Upper.Confidence.Interval"                                           
 \item [312] "Median.household.income.Value"                                                                    
 \item [313] "Median.household.income.Numerator"                                                                
 \item [314] "Median.household.income.Denominator"                                                              
 \item [315] "Median.household.income.Lower.Confidence.Interval"                                                
 \item [316] "Median.household.income.Upper.Confidence.Interval"                                                
 \item [317] "Children.eligible.for.free.lunch.Value"                                                           
 \item [318] "Children.eligible.for.free.lunch.Numerator"                                                       
 \item [319] "Children.eligible.for.free.lunch.Denominator"                                                     
 \item [320] "Children.eligible.for.free.lunch.Lower.Confidence.Interval"                                       
 \item [321] "Children.eligible.for.free.lunch.Upper.Confidence.Interval"                                       
 \item [322] "Homicide.rate.Value"                                                                              
 \item [323] "Homicide.rate.Numerator"                                                                          
 \item [324] "Homicide.rate.Denominator"                                                                        
 \item [325] "Homicide.rate.Lower.Confidence.Interval"                                                          
 \item [326] "Homicide.rate.Upper.Confidence.Interval"                                                          
 \item [327] "statecode"                                                                                        
 \item [328] "countycode"
}
}
\source{
2014 and 2015 datasets from \url{http://www.countyhealthrankings.org/rankings/data} \cr
  obtained 3/27/2015 and slightly modified to provide 5 digit FIPS as character field, and ST field as copy of State field. \cr
  Also see: \url{http://www.countyhealthrankings.org/about-project} \cr
}
\usage{
data('countyhealth14')
}
\description{
This data set provides a variety of health indicators for each US county.
}
\keyword{datasets}
