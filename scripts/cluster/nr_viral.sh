#!/bin/bash
#SBATCH --job-name=nr_%a
#SBATCH --time=36:00:00
#SBATCH --mem-per-cpu=1G
#SBATCH --mail-type=NONE
#SBATCH --output=nr_viral_%a.out
#SBATCH --error=nr_viral_%a.out
cd ..
source activate virus_db
mkdir ../data/nr/viral_out/
rm ../data/nr/nr_viral.sqlite
t=$SLURM_ARRAY_TASK_ID
if [ $t -eq 0 ] 	
	then
	python nr_viral.py 1 133677
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 1 ]
	then
	python nr_viral.py 133678 267354
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 2 ]
	then
	python nr_viral.py 267355 401031
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 3 ]
	then
	python nr_viral.py 401032 534708
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 4 ]
	then
	python nr_viral.py 534709 668385
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 5 ]
	then
	python nr_viral.py 668386 802062
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 6 ]
	then
	python nr_viral.py 802063 935739
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 7 ]
	then
	python nr_viral.py 935740 1069416
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 8 ]
	then
	python nr_viral.py 1069417 1203093
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 9 ]
	then
	python nr_viral.py 1203094 1336770
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 10 ]
	then
	python nr_viral.py 1336771 1470447
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 11 ]
	then
	python nr_viral.py 1470448 1604124
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 12 ]
	then
	python nr_viral.py 1604125 1737801
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 13 ]
	then
	python nr_viral.py 1737802 1871478
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 14 ]
	then
	python nr_viral.py 1871479 2005155
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 15 ]
	then
	python nr_viral.py 2005156 2138832
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 16 ]
	then
	python nr_viral.py 2138833 2272509
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 17 ]
	then
	python nr_viral.py 2272510 2406186
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 18 ]
	then
	python nr_viral.py 2406187 2539863
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 19 ]
	then
	python nr_viral.py 2539864 2673540
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 20 ]
	then
	python nr_viral.py 2673541 2807217
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 21 ]
	then
	python nr_viral.py 2807218 2940894
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 22 ]
	then
	python nr_viral.py 2940895 3074571
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 23 ]
	then
	python nr_viral.py 3074572 3208248
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 24 ]
	then
	python nr_viral.py 3208249 3341925
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 25 ]
	then
	python nr_viral.py 3341926 3475602
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 26 ]
	then
	python nr_viral.py 3475603 3609279
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 27 ]
	then
	python nr_viral.py 3609280 3742956
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 28 ]
	then
	python nr_viral.py 3742957 3876633
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 29 ]
	then
	python nr_viral.py 3876634 4010310
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 30 ]
	then
	python nr_viral.py 4010311 4143987
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 31 ]
	then
	python nr_viral.py 4143988 4277664
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 32 ]
	then
	python nr_viral.py 4277665 4411341
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 33 ]
	then
	python nr_viral.py 4411342 4545018
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 34 ]
	then
	python nr_viral.py 4545019 4678695
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 35 ]
	then
	python nr_viral.py 4678696 4812372
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 36 ]
	then
	python nr_viral.py 4812373 4946049
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 37 ]
	then
	python nr_viral.py 4946050 5079726
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 38 ]
	then
	python nr_viral.py 5079727 5213403
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 39 ]
	then
	python nr_viral.py 5213404 5347080
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 40 ]
	then
	python nr_viral.py 5347081 5480757
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 41 ]
	then
	python nr_viral.py 5480758 5614434
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 42 ]
	then
	python nr_viral.py 5614435 5748111
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 43 ]
	then
	python nr_viral.py 5748112 5881788
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 44 ]
	then
	python nr_viral.py 5881789 6015465
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 45 ]
	then
	python nr_viral.py 6015466 6149142
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 46 ]
	then
	python nr_viral.py 6149143 6282819
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 47 ]
	then
	python nr_viral.py 6282820 6416496
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 48 ]
	then
	python nr_viral.py 6416497 6550173
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 49 ]
	then
	python nr_viral.py 6550174 6683850
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 50 ]
	then
	python nr_viral.py 6683851 6817527
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 51 ]
	then
	python nr_viral.py 6817528 6951204
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 52 ]
	then
	python nr_viral.py 6951205 7084881
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 53 ]
	then
	python nr_viral.py 7084882 7218558
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 54 ]
	then
	python nr_viral.py 7218559 7352235
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 55 ]
	then
	python nr_viral.py 7352236 7485912
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 56 ]
	then
	python nr_viral.py 7485913 7619589
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 57 ]
	then
	python nr_viral.py 7619590 7753266
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 58 ]
	then
	python nr_viral.py 7753267 7886943
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 59 ]
	then
	python nr_viral.py 7886944 8020620
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 60 ]
	then
	python nr_viral.py 8020621 8154297
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 61 ]
	then
	python nr_viral.py 8154298 8287974
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 62 ]
	then
	python nr_viral.py 8287975 8421651
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 63 ]
	then
	python nr_viral.py 8421652 8555328
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 64 ]
	then
	python nr_viral.py 8555329 8689005
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 65 ]
	then
	python nr_viral.py 8689006 8822682
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 66 ]
	then
	python nr_viral.py 8822683 8956359
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 67 ]
	then
	python nr_viral.py 8956360 9090036
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 68 ]
	then
	python nr_viral.py 9090037 9223713
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 69 ]
	then
	python nr_viral.py 9223714 9357390
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 70 ]
	then
	python nr_viral.py 9357391 9491067
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 71 ]
	then
	python nr_viral.py 9491068 9624744
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 72 ]
	then
	python nr_viral.py 9624745 9758421
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 73 ]
	then
	python nr_viral.py 9758422 9892098
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 74 ]
	then
	python nr_viral.py 9892099 10025775
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 75 ]
	then
	python nr_viral.py 10025776 10159452
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 76 ]
	then
	python nr_viral.py 10159453 10293129
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 77 ]
	then
	python nr_viral.py 10293130 10426806
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 78 ]
	then
	python nr_viral.py 10426807 10560483
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 79 ]
	then
	python nr_viral.py 10560484 10694160
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 80 ]
	then
	python nr_viral.py 10694161 10827837
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 81 ]
	then
	python nr_viral.py 10827838 10961514
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 82 ]
	then
	python nr_viral.py 10961515 11095191
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 83 ]
	then
	python nr_viral.py 11095192 11228868
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 84 ]
	then
	python nr_viral.py 11228869 11362545
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 85 ]
	then
	python nr_viral.py 11362546 11496222
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 86 ]
	then
	python nr_viral.py 11496223 11629899
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 87 ]
	then
	python nr_viral.py 11629900 11763576
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 88 ]
	then
	python nr_viral.py 11763577 11897253
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 89 ]
	then
	python nr_viral.py 11897254 12030930
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 90 ]
	then
	python nr_viral.py 12030931 12164607
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 91 ]
	then
	python nr_viral.py 12164608 12298284
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 92 ]
	then
	python nr_viral.py 12298285 12431961
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 93 ]
	then
	python nr_viral.py 12431962 12565638
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 94 ]
	then
	python nr_viral.py 12565639 12699315
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 95 ]
	then
	python nr_viral.py 12699316 12832992
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 96 ]
	then
	python nr_viral.py 12832993 12966669
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 97 ]
	then
	python nr_viral.py 12966670 13100346
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 98 ]
	then
	python nr_viral.py 13100347 13234023
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 99 ]
	then
	python nr_viral.py 13234024 13367700
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 100 ]
	then
	python nr_viral.py 13367701 13501377
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 101 ]
	then
	python nr_viral.py 13501378 13635054
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 102 ]
	then
	python nr_viral.py 13635055 13768731
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 103 ]
	then
	python nr_viral.py 13768732 13902408
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 104 ]
	then
	python nr_viral.py 13902409 14036085
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 105 ]
	then
	python nr_viral.py 14036086 14169762
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 106 ]
	then
	python nr_viral.py 14169763 14303439
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 107 ]
	then
	python nr_viral.py 14303440 14437116
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 108 ]
	then
	python nr_viral.py 14437117 14570793
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 109 ]
	then
	python nr_viral.py 14570794 14704470
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 110 ]
	then
	python nr_viral.py 14704471 14838147
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 111 ]
	then
	python nr_viral.py 14838148 14971824
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 112 ]
	then
	python nr_viral.py 14971825 15105501
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 113 ]
	then
	python nr_viral.py 15105502 15239178
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 114 ]
	then
	python nr_viral.py 15239179 15372855
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 115 ]
	then
	python nr_viral.py 15372856 15506532
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 116 ]
	then
	python nr_viral.py 15506533 15640209
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 117 ]
	then
	python nr_viral.py 15640210 15773886
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 118 ]
	then
	python nr_viral.py 15773887 15907563
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 119 ]
	then
	python nr_viral.py 15907564 16041240
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 120 ]
	then
	python nr_viral.py 16041241 16174917
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 121 ]
	then
	python nr_viral.py 16174918 16308594
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 122 ]
	then
	python nr_viral.py 16308595 16442271
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 123 ]
	then
	python nr_viral.py 16442272 16575948
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 124 ]
	then
	python nr_viral.py 16575949 16709625
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 125 ]
	then
	python nr_viral.py 16709626 16843302
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 126 ]
	then
	python nr_viral.py 16843303 16976979
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 127 ]
	then
	python nr_viral.py 16976980 17110656
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 128 ]
	then
	python nr_viral.py 17110657 17244333
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 129 ]
	then
	python nr_viral.py 17244334 17378010
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 130 ]
	then
	python nr_viral.py 17378011 17511687
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 131 ]
	then
	python nr_viral.py 17511688 17645364
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 132 ]
	then
	python nr_viral.py 17645365 17779041
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 133 ]
	then
	python nr_viral.py 17779042 17912718
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 134 ]
	then
	python nr_viral.py 17912719 18046395
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 135 ]
	then
	python nr_viral.py 18046396 18180072
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 136 ]
	then
	python nr_viral.py 18180073 18313749
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 137 ]
	then
	python nr_viral.py 18313750 18447426
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 138 ]
	then
	python nr_viral.py 18447427 18581103
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 139 ]
	then
	python nr_viral.py 18581104 18714780
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 140 ]
	then
	python nr_viral.py 18714781 18848457
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 141 ]
	then
	python nr_viral.py 18848458 18982134
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 142 ]
	then
	python nr_viral.py 18982135 19115811
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 143 ]
	then
	python nr_viral.py 19115812 19249488
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 144 ]
	then
	python nr_viral.py 19249489 19383165
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 145 ]
	then
	python nr_viral.py 19383166 19516842
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 146 ]
	then
	python nr_viral.py 19516843 19650519
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 147 ]
	then
	python nr_viral.py 19650520 19784196
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 148 ]
	then
	python nr_viral.py 19784197 19917873
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 149 ]
	then
	python nr_viral.py 19917874 20051550
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 150 ]
	then
	python nr_viral.py 20051551 20185227
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 151 ]
	then
	python nr_viral.py 20185228 20318904
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 152 ]
	then
	python nr_viral.py 20318905 20452581
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 153 ]
	then
	python nr_viral.py 20452582 20586258
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 154 ]
	then
	python nr_viral.py 20586259 20719935
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 155 ]
	then
	python nr_viral.py 20719936 20853612
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 156 ]
	then
	python nr_viral.py 20853613 20987289
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 157 ]
	then
	python nr_viral.py 20987290 21120966
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 158 ]
	then
	python nr_viral.py 21120967 21254643
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 159 ]
	then
	python nr_viral.py 21254644 21388320
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 160 ]
	then
	python nr_viral.py 21388321 21521997
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 161 ]
	then
	python nr_viral.py 21521998 21655674
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 162 ]
	then
	python nr_viral.py 21655675 21789351
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 163 ]
	then
	python nr_viral.py 21789352 21923028
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 164 ]
	then
	python nr_viral.py 21923029 22056705
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 165 ]
	then
	python nr_viral.py 22056706 22190382
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 166 ]
	then
	python nr_viral.py 22190383 22324059
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 167 ]
	then
	python nr_viral.py 22324060 22457736
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 168 ]
	then
	python nr_viral.py 22457737 22591413
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 169 ]
	then
	python nr_viral.py 22591414 22725090
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 170 ]
	then
	python nr_viral.py 22725091 22858767
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 171 ]
	then
	python nr_viral.py 22858768 22992444
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 172 ]
	then
	python nr_viral.py 22992445 23126121
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 173 ]
	then
	python nr_viral.py 23126122 23259798
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 174 ]
	then
	python nr_viral.py 23259799 23393475
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 175 ]
	then
	python nr_viral.py 23393476 23527152
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 176 ]
	then
	python nr_viral.py 23527153 23660829
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 177 ]
	then
	python nr_viral.py 23660830 23794506
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 178 ]
	then
	python nr_viral.py 23794507 23928183
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 179 ]
	then
	python nr_viral.py 23928184 24061860
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 180 ]
	then
	python nr_viral.py 24061861 24195537
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 181 ]
	then
	python nr_viral.py 24195538 24329214
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 182 ]
	then
	python nr_viral.py 24329215 24462891
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 183 ]
	then
	python nr_viral.py 24462892 24596568
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 184 ]
	then
	python nr_viral.py 24596569 24730245
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 185 ]
	then
	python nr_viral.py 24730246 24863922
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 186 ]
	then
	python nr_viral.py 24863923 24997599
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 187 ]
	then
	python nr_viral.py 24997600 25131276
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 188 ]
	then
	python nr_viral.py 25131277 25264953
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 189 ]
	then
	python nr_viral.py 25264954 25398630
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 190 ]
	then
	python nr_viral.py 25398631 25532307
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 191 ]
	then
	python nr_viral.py 25532308 25665984
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 192 ]
	then
	python nr_viral.py 25665985 25799661
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 193 ]
	then
	python nr_viral.py 25799662 25933338
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 194 ]
	then
	python nr_viral.py 25933339 26067015
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 195 ]
	then
	python nr_viral.py 26067016 26200692
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 196 ]
	then
	python nr_viral.py 26200693 26334369
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 197 ]
	then
	python nr_viral.py 26334370 26468046
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 198 ]
	then
	python nr_viral.py 26468047 26601723
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 199 ]
	then
	python nr_viral.py 26601724 26735400
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 200 ]
	then
	python nr_viral.py 26735401 26869077
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 201 ]
	then
	python nr_viral.py 26869078 27002754
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 202 ]
	then
	python nr_viral.py 27002755 27136431
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 203 ]
	then
	python nr_viral.py 27136432 27270108
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 204 ]
	then
	python nr_viral.py 27270109 27403785
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 205 ]
	then
	python nr_viral.py 27403786 27537462
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 206 ]
	then
	python nr_viral.py 27537463 27671139
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 207 ]
	then
	python nr_viral.py 27671140 27804816
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 208 ]
	then
	python nr_viral.py 27804817 27938493
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 209 ]
	then
	python nr_viral.py 27938494 28072170
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 210 ]
	then
	python nr_viral.py 28072171 28205847
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 211 ]
	then
	python nr_viral.py 28205848 28339524
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 212 ]
	then
	python nr_viral.py 28339525 28473201
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 213 ]
	then
	python nr_viral.py 28473202 28606878
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 214 ]
	then
	python nr_viral.py 28606879 28740555
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 215 ]
	then
	python nr_viral.py 28740556 28874232
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 216 ]
	then
	python nr_viral.py 28874233 29007909
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 217 ]
	then
	python nr_viral.py 29007910 29141586
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 218 ]
	then
	python nr_viral.py 29141587 29275263
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 219 ]
	then
	python nr_viral.py 29275264 29408940
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 220 ]
	then
	python nr_viral.py 29408941 29542617
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 221 ]
	then
	python nr_viral.py 29542618 29676294
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 222 ]
	then
	python nr_viral.py 29676295 29809971
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 223 ]
	then
	python nr_viral.py 29809972 29943648
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 224 ]
	then
	python nr_viral.py 29943649 30077325
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 225 ]
	then
	python nr_viral.py 30077326 30211002
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 226 ]
	then
	python nr_viral.py 30211003 30344679
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 227 ]
	then
	python nr_viral.py 30344680 30478356
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 228 ]
	then
	python nr_viral.py 30478357 30612033
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 229 ]
	then
	python nr_viral.py 30612034 30745710
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 230 ]
	then
	python nr_viral.py 30745711 30879387
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 231 ]
	then
	python nr_viral.py 30879388 31013064
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 232 ]
	then
	python nr_viral.py 31013065 31146741
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 233 ]
	then
	python nr_viral.py 31146742 31280418
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 234 ]
	then
	python nr_viral.py 31280419 31414095
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 235 ]
	then
	python nr_viral.py 31414096 31547772
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 236 ]
	then
	python nr_viral.py 31547773 31681449
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 237 ]
	then
	python nr_viral.py 31681450 31815126
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 238 ]
	then
	python nr_viral.py 31815127 31948803
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 239 ]
	then
	python nr_viral.py 31948804 32082480
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 240 ]
	then
	python nr_viral.py 32082481 32216157
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 241 ]
	then
	python nr_viral.py 32216158 32349834
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 242 ]
	then
	python nr_viral.py 32349835 32483511
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 243 ]
	then
	python nr_viral.py 32483512 32617188
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 244 ]
	then
	python nr_viral.py 32617189 32750865
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 245 ]
	then
	python nr_viral.py 32750866 32884542
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 246 ]
	then
	python nr_viral.py 32884543 33018219
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 247 ]
	then
	python nr_viral.py 33018220 33151896
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 248 ]
	then
	python nr_viral.py 33151897 33285573
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 249 ]
	then
	python nr_viral.py 33285574 33419250
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 250 ]
	then
	python nr_viral.py 33419251 33552927
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 251 ]
	then
	python nr_viral.py 33552928 33686604
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 252 ]
	then
	python nr_viral.py 33686605 33820281
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 253 ]
	then
	python nr_viral.py 33820282 33953958
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 254 ]
	then
	python nr_viral.py 33953959 34087635
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 255 ]
	then
	python nr_viral.py 34087636 34221312
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 256 ]
	then
	python nr_viral.py 34221313 34354989
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 257 ]
	then
	python nr_viral.py 34354990 34488666
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 258 ]
	then
	python nr_viral.py 34488667 34622343
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 259 ]
	then
	python nr_viral.py 34622344 34756020
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 260 ]
	then
	python nr_viral.py 34756021 34889697
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 261 ]
	then
	python nr_viral.py 34889698 35023374
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 262 ]
	then
	python nr_viral.py 35023375 35157051
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 263 ]
	then
	python nr_viral.py 35157052 35290728
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 264 ]
	then
	python nr_viral.py 35290729 35424405
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 265 ]
	then
	python nr_viral.py 35424406 35558082
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 266 ]
	then
	python nr_viral.py 35558083 35691759
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 267 ]
	then
	python nr_viral.py 35691760 35825436
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 268 ]
	then
	python nr_viral.py 35825437 35959113
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 269 ]
	then
	python nr_viral.py 35959114 36092790
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 270 ]
	then
	python nr_viral.py 36092791 36226467
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 271 ]
	then
	python nr_viral.py 36226468 36360144
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 272 ]
	then
	python nr_viral.py 36360145 36493821
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 273 ]
	then
	python nr_viral.py 36493822 36627498
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 274 ]
	then
	python nr_viral.py 36627499 36761175
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 275 ]
	then
	python nr_viral.py 36761176 36894852
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 276 ]
	then
	python nr_viral.py 36894853 37028529
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 277 ]
	then
	python nr_viral.py 37028530 37162206
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 278 ]
	then
	python nr_viral.py 37162207 37295883
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 279 ]
	then
	python nr_viral.py 37295884 37429560
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 280 ]
	then
	python nr_viral.py 37429561 37563237
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 281 ]
	then
	python nr_viral.py 37563238 37696914
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 282 ]
	then
	python nr_viral.py 37696915 37830591
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 283 ]
	then
	python nr_viral.py 37830592 37964268
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 284 ]
	then
	python nr_viral.py 37964269 38097945
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 285 ]
	then
	python nr_viral.py 38097946 38231622
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 286 ]
	then
	python nr_viral.py 38231623 38365299
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 287 ]
	then
	python nr_viral.py 38365300 38498976
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 288 ]
	then
	python nr_viral.py 38498977 38632653
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 289 ]
	then
	python nr_viral.py 38632654 38766330
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 290 ]
	then
	python nr_viral.py 38766331 38900007
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 291 ]
	then
	python nr_viral.py 38900008 39033684
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 292 ]
	then
	python nr_viral.py 39033685 39167361
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 293 ]
	then
	python nr_viral.py 39167362 39301038
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 294 ]
	then
	python nr_viral.py 39301039 39434715
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 295 ]
	then
	python nr_viral.py 39434716 39568392
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 296 ]
	then
	python nr_viral.py 39568393 39702069
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 297 ]
	then
	python nr_viral.py 39702070 39835746
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 298 ]
	then
	python nr_viral.py 39835747 39969423
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 299 ]
	then
	python nr_viral.py 39969424 40103100
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 300 ]
	then
	python nr_viral.py 40103101 40236777
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 301 ]
	then
	python nr_viral.py 40236778 40370454
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 302 ]
	then
	python nr_viral.py 40370455 40504131
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 303 ]
	then
	python nr_viral.py 40504132 40637808
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 304 ]
	then
	python nr_viral.py 40637809 40771485
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 305 ]
	then
	python nr_viral.py 40771486 40905162
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 306 ]
	then
	python nr_viral.py 40905163 41038839
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 307 ]
	then
	python nr_viral.py 41038840 41172516
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 308 ]
	then
	python nr_viral.py 41172517 41306193
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 309 ]
	then
	python nr_viral.py 41306194 41439870
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 310 ]
	then
	python nr_viral.py 41439871 41573547
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 311 ]
	then
	python nr_viral.py 41573548 41707224
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 312 ]
	then
	python nr_viral.py 41707225 41840901
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 313 ]
	then
	python nr_viral.py 41840902 41974578
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 314 ]
	then
	python nr_viral.py 41974579 42108255
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 315 ]
	then
	python nr_viral.py 42108256 42241932
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 316 ]
	then
	python nr_viral.py 42241933 42375609
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 317 ]
	then
	python nr_viral.py 42375610 42509286
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 318 ]
	then
	python nr_viral.py 42509287 42642963
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 319 ]
	then
	python nr_viral.py 42642964 42776640
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 320 ]
	then
	python nr_viral.py 42776641 42910317
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 321 ]
	then
	python nr_viral.py 42910318 43043994
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 322 ]
	then
	python nr_viral.py 43043995 43177671
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 323 ]
	then
	python nr_viral.py 43177672 43311348
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 324 ]
	then
	python nr_viral.py 43311349 43445025
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 325 ]
	then
	python nr_viral.py 43445026 43578702
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 326 ]
	then
	python nr_viral.py 43578703 43712379
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 327 ]
	then
	python nr_viral.py 43712380 43846056
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 328 ]
	then
	python nr_viral.py 43846057 43979733
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 329 ]
	then
	python nr_viral.py 43979734 44113410
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 330 ]
	then
	python nr_viral.py 44113411 44247087
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 331 ]
	then
	python nr_viral.py 44247088 44380764
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 332 ]
	then
	python nr_viral.py 44380765 44514441
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 333 ]
	then
	python nr_viral.py 44514442 44648118
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 334 ]
	then
	python nr_viral.py 44648119 44781795
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 335 ]
	then
	python nr_viral.py 44781796 44915472
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 336 ]
	then
	python nr_viral.py 44915473 45049149
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 337 ]
	then
	python nr_viral.py 45049150 45182826
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 338 ]
	then
	python nr_viral.py 45182827 45316503
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 339 ]
	then
	python nr_viral.py 45316504 45450180
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 340 ]
	then
	python nr_viral.py 45450181 45583857
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 341 ]
	then
	python nr_viral.py 45583858 45717534
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 342 ]
	then
	python nr_viral.py 45717535 45851211
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 343 ]
	then
	python nr_viral.py 45851212 45984888
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 344 ]
	then
	python nr_viral.py 45984889 46118565
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 345 ]
	then
	python nr_viral.py 46118566 46252242
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 346 ]
	then
	python nr_viral.py 46252243 46385919
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 347 ]
	then
	python nr_viral.py 46385920 46519596
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 348 ]
	then
	python nr_viral.py 46519597 46653273
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 349 ]
	then
	python nr_viral.py 46653274 46786950
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 350 ]
	then
	python nr_viral.py 46786951 46920627
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 351 ]
	then
	python nr_viral.py 46920628 47054304
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 352 ]
	then
	python nr_viral.py 47054305 47187981
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 353 ]
	then
	python nr_viral.py 47187982 47321658
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 354 ]
	then
	python nr_viral.py 47321659 47455335
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 355 ]
	then
	python nr_viral.py 47455336 47589012
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 356 ]
	then
	python nr_viral.py 47589013 47722689
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 357 ]
	then
	python nr_viral.py 47722690 47856366
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 358 ]
	then
	python nr_viral.py 47856367 47990043
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 359 ]
	then
	python nr_viral.py 47990044 48123720
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 360 ]
	then
	python nr_viral.py 48123721 48257397
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 361 ]
	then
	python nr_viral.py 48257398 48391074
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 362 ]
	then
	python nr_viral.py 48391075 48524751
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 363 ]
	then
	python nr_viral.py 48524752 48658428
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 364 ]
	then
	python nr_viral.py 48658429 48792105
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 365 ]
	then
	python nr_viral.py 48792106 48925782
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 366 ]
	then
	python nr_viral.py 48925783 49059459
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 367 ]
	then
	python nr_viral.py 49059460 49193136
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 368 ]
	then
	python nr_viral.py 49193137 49326813
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 369 ]
	then
	python nr_viral.py 49326814 49460490
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 370 ]
	then
	python nr_viral.py 49460491 49594167
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 371 ]
	then
	python nr_viral.py 49594168 49727844
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 372 ]
	then
	python nr_viral.py 49727845 49861521
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 373 ]
	then
	python nr_viral.py 49861522 49995198
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 374 ]
	then
	python nr_viral.py 49995199 50128875
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 375 ]
	then
	python nr_viral.py 50128876 50262552
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 376 ]
	then
	python nr_viral.py 50262553 50396229
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 377 ]
	then
	python nr_viral.py 50396230 50529906
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 378 ]
	then
	python nr_viral.py 50529907 50663583
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 379 ]
	then
	python nr_viral.py 50663584 50797260
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 380 ]
	then
	python nr_viral.py 50797261 50930937
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 381 ]
	then
	python nr_viral.py 50930938 51064614
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 382 ]
	then
	python nr_viral.py 51064615 51198291
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 383 ]
	then
	python nr_viral.py 51198292 51331968
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 384 ]
	then
	python nr_viral.py 51331969 51465645
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 385 ]
	then
	python nr_viral.py 51465646 51599322
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 386 ]
	then
	python nr_viral.py 51599323 51732999
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 387 ]
	then
	python nr_viral.py 51733000 51866676
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 388 ]
	then
	python nr_viral.py 51866677 52000353
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 389 ]
	then
	python nr_viral.py 52000354 52134030
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 390 ]
	then
	python nr_viral.py 52134031 52267707
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 391 ]
	then
	python nr_viral.py 52267708 52401384
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 392 ]
	then
	python nr_viral.py 52401385 52535061
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 393 ]
	then
	python nr_viral.py 52535062 52668738
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 394 ]
	then
	python nr_viral.py 52668739 52802415
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 395 ]
	then
	python nr_viral.py 52802416 52936092
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 396 ]
	then
	python nr_viral.py 52936093 53069769
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 397 ]
	then
	python nr_viral.py 53069770 53203446
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 398 ]
	then
	python nr_viral.py 53203447 53337123
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 399 ]
	then
	python nr_viral.py 53337124 53470800
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 400 ]
	then
	python nr_viral.py 53470801 53604477
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 401 ]
	then
	python nr_viral.py 53604478 53738154
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 402 ]
	then
	python nr_viral.py 53738155 53871831
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 403 ]
	then
	python nr_viral.py 53871832 54005508
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 404 ]
	then
	python nr_viral.py 54005509 54139185
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 405 ]
	then
	python nr_viral.py 54139186 54272862
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 406 ]
	then
	python nr_viral.py 54272863 54406539
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 407 ]
	then
	python nr_viral.py 54406540 54540216
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 408 ]
	then
	python nr_viral.py 54540217 54673893
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 409 ]
	then
	python nr_viral.py 54673894 54807570
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 410 ]
	then
	python nr_viral.py 54807571 54941247
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 411 ]
	then
	python nr_viral.py 54941248 55074924
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 412 ]
	then
	python nr_viral.py 55074925 55208601
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 413 ]
	then
	python nr_viral.py 55208602 55342278
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 414 ]
	then
	python nr_viral.py 55342279 55475955
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 415 ]
	then
	python nr_viral.py 55475956 55609632
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 416 ]
	then
	python nr_viral.py 55609633 55743309
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 417 ]
	then
	python nr_viral.py 55743310 55876986
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 418 ]
	then
	python nr_viral.py 55876987 56010663
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 419 ]
	then
	python nr_viral.py 56010664 56144340
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 420 ]
	then
	python nr_viral.py 56144341 56278017
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 421 ]
	then
	python nr_viral.py 56278018 56411694
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 422 ]
	then
	python nr_viral.py 56411695 56545371
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 423 ]
	then
	python nr_viral.py 56545372 56679048
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 424 ]
	then
	python nr_viral.py 56679049 56812725
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 425 ]
	then
	python nr_viral.py 56812726 56946402
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 426 ]
	then
	python nr_viral.py 56946403 57080079
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 427 ]
	then
	python nr_viral.py 57080080 57213756
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 428 ]
	then
	python nr_viral.py 57213757 57347433
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 429 ]
	then
	python nr_viral.py 57347434 57481110
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 430 ]
	then
	python nr_viral.py 57481111 57614787
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 431 ]
	then
	python nr_viral.py 57614788 57748464
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 432 ]
	then
	python nr_viral.py 57748465 57882141
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 433 ]
	then
	python nr_viral.py 57882142 58015818
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 434 ]
	then
	python nr_viral.py 58015819 58149495
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 435 ]
	then
	python nr_viral.py 58149496 58283172
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 436 ]
	then
	python nr_viral.py 58283173 58416849
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 437 ]
	then
	python nr_viral.py 58416850 58550526
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 438 ]
	then
	python nr_viral.py 58550527 58684203
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 439 ]
	then
	python nr_viral.py 58684204 58817880
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 440 ]
	then
	python nr_viral.py 58817881 58951557
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 441 ]
	then
	python nr_viral.py 58951558 59085234
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 442 ]
	then
	python nr_viral.py 59085235 59218911
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 443 ]
	then
	python nr_viral.py 59218912 59352588
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 444 ]
	then
	python nr_viral.py 59352589 59486265
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 445 ]
	then
	python nr_viral.py 59486266 59619942
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 446 ]
	then
	python nr_viral.py 59619943 59753619
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 447 ]
	then
	python nr_viral.py 59753620 59887296
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 448 ]
	then
	python nr_viral.py 59887297 60020973
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 449 ]
	then
	python nr_viral.py 60020974 60154650
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 450 ]
	then
	python nr_viral.py 60154651 60288327
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 451 ]
	then
	python nr_viral.py 60288328 60422004
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 452 ]
	then
	python nr_viral.py 60422005 60555681
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 453 ]
	then
	python nr_viral.py 60555682 60689358
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 454 ]
	then
	python nr_viral.py 60689359 60823035
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 455 ]
	then
	python nr_viral.py 60823036 60956712
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 456 ]
	then
	python nr_viral.py 60956713 61090389
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 457 ]
	then
	python nr_viral.py 61090390 61224066
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 458 ]
	then
	python nr_viral.py 61224067 61357743
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 459 ]
	then
	python nr_viral.py 61357744 61491420
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 460 ]
	then
	python nr_viral.py 61491421 61625097
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 461 ]
	then
	python nr_viral.py 61625098 61758774
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 462 ]
	then
	python nr_viral.py 61758775 61892451
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 463 ]
	then
	python nr_viral.py 61892452 62026128
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 464 ]
	then
	python nr_viral.py 62026129 62159805
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 465 ]
	then
	python nr_viral.py 62159806 62293482
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 466 ]
	then
	python nr_viral.py 62293483 62427159
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 467 ]
	then
	python nr_viral.py 62427160 62560836
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 468 ]
	then
	python nr_viral.py 62560837 62694513
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 469 ]
	then
	python nr_viral.py 62694514 62828190
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 470 ]
	then
	python nr_viral.py 62828191 62961867
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 471 ]
	then
	python nr_viral.py 62961868 63095544
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 472 ]
	then
	python nr_viral.py 63095545 63229221
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 473 ]
	then
	python nr_viral.py 63229222 63362898
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 474 ]
	then
	python nr_viral.py 63362899 63496575
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 475 ]
	then
	python nr_viral.py 63496576 63630252
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 476 ]
	then
	python nr_viral.py 63630253 63763929
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 477 ]
	then
	python nr_viral.py 63763930 63897606
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 478 ]
	then
	python nr_viral.py 63897607 64031283
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 479 ]
	then
	python nr_viral.py 64031284 64164960
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 480 ]
	then
	python nr_viral.py 64164961 64298637
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 481 ]
	then
	python nr_viral.py 64298638 64432314
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 482 ]
	then
	python nr_viral.py 64432315 64565991
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 483 ]
	then
	python nr_viral.py 64565992 64699668
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 484 ]
	then
	python nr_viral.py 64699669 64833345
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 485 ]
	then
	python nr_viral.py 64833346 64967022
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 486 ]
	then
	python nr_viral.py 64967023 65100699
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 487 ]
	then
	python nr_viral.py 65100700 65234376
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 488 ]
	then
	python nr_viral.py 65234377 65368053
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 489 ]
	then
	python nr_viral.py 65368054 65501730
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 490 ]
	then
	python nr_viral.py 65501731 65635407
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 491 ]
	then
	python nr_viral.py 65635408 65769084
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 492 ]
	then
	python nr_viral.py 65769085 65902761
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 493 ]
	then
	python nr_viral.py 65902762 66036438
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 494 ]
	then
	python nr_viral.py 66036439 66170115
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 495 ]
	then
	python nr_viral.py 66170116 66303792
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 496 ]
	then
	python nr_viral.py 66303793 66437469
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 497 ]
	then
	python nr_viral.py 66437470 66571146
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 498 ]
	then
	python nr_viral.py 66571147 66704823
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 499 ]
	then
	python nr_viral.py 66704824 66838500
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 500 ]
	then
	python nr_viral.py 66838501 66972177
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 501 ]
	then
	python nr_viral.py 66972178 67105854
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 502 ]
	then
	python nr_viral.py 67105855 67239531
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 503 ]
	then
	python nr_viral.py 67239532 67373208
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 504 ]
	then
	python nr_viral.py 67373209 67506885
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 505 ]
	then
	python nr_viral.py 67506886 67640562
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 506 ]
	then
	python nr_viral.py 67640563 67774239
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 507 ]
	then
	python nr_viral.py 67774240 67907916
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 508 ]
	then
	python nr_viral.py 67907917 68041593
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 509 ]
	then
	python nr_viral.py 68041594 68175270
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 510 ]
	then
	python nr_viral.py 68175271 68308947
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 511 ]
	then
	python nr_viral.py 68308948 68442624
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 512 ]
	then
	python nr_viral.py 68442625 68576301
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 513 ]
	then
	python nr_viral.py 68576302 68709978
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 514 ]
	then
	python nr_viral.py 68709979 68843655
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 515 ]
	then
	python nr_viral.py 68843656 68977332
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 516 ]
	then
	python nr_viral.py 68977333 69111009
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 517 ]
	then
	python nr_viral.py 69111010 69244686
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 518 ]
	then
	python nr_viral.py 69244687 69378363
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 519 ]
	then
	python nr_viral.py 69378364 69512040
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 520 ]
	then
	python nr_viral.py 69512041 69645717
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 521 ]
	then
	python nr_viral.py 69645718 69779394
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 522 ]
	then
	python nr_viral.py 69779395 69913071
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 523 ]
	then
	python nr_viral.py 69913072 70046748
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 524 ]
	then
	python nr_viral.py 70046749 70180425
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 525 ]
	then
	python nr_viral.py 70180426 70314102
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 526 ]
	then
	python nr_viral.py 70314103 70447779
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 527 ]
	then
	python nr_viral.py 70447780 70581456
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 528 ]
	then
	python nr_viral.py 70581457 70715133
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 529 ]
	then
	python nr_viral.py 70715134 70848810
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 530 ]
	then
	python nr_viral.py 70848811 70982487
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 531 ]
	then
	python nr_viral.py 70982488 71116164
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 532 ]
	then
	python nr_viral.py 71116165 71249841
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 533 ]
	then
	python nr_viral.py 71249842 71383518
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 534 ]
	then
	python nr_viral.py 71383519 71517195
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 535 ]
	then
	python nr_viral.py 71517196 71650872
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 536 ]
	then
	python nr_viral.py 71650873 71784549
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 537 ]
	then
	python nr_viral.py 71784550 71918226
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 538 ]
	then
	python nr_viral.py 71918227 72051903
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 539 ]
	then
	python nr_viral.py 72051904 72185580
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 540 ]
	then
	python nr_viral.py 72185581 72319257
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 541 ]
	then
	python nr_viral.py 72319258 72452934
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 542 ]
	then
	python nr_viral.py 72452935 72586611
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 543 ]
	then
	python nr_viral.py 72586612 72720288
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 544 ]
	then
	python nr_viral.py 72720289 72853965
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 545 ]
	then
	python nr_viral.py 72853966 72987642
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 546 ]
	then
	python nr_viral.py 72987643 73121319
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 547 ]
	then
	python nr_viral.py 73121320 73254996
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 548 ]
	then
	python nr_viral.py 73254997 73388673
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 549 ]
	then
	python nr_viral.py 73388674 73522350
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 550 ]
	then
	python nr_viral.py 73522351 73656027
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 551 ]
	then
	python nr_viral.py 73656028 73789704
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 552 ]
	then
	python nr_viral.py 73789705 73923381
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 553 ]
	then
	python nr_viral.py 73923382 74057058
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 554 ]
	then
	python nr_viral.py 74057059 74190735
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 555 ]
	then
	python nr_viral.py 74190736 74324412
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 556 ]
	then
	python nr_viral.py 74324413 74458089
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 557 ]
	then
	python nr_viral.py 74458090 74591766
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 558 ]
	then
	python nr_viral.py 74591767 74725443
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 559 ]
	then
	python nr_viral.py 74725444 74859120
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 560 ]
	then
	python nr_viral.py 74859121 74992797
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 561 ]
	then
	python nr_viral.py 74992798 75126474
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 562 ]
	then
	python nr_viral.py 75126475 75260151
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 563 ]
	then
	python nr_viral.py 75260152 75393828
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 564 ]
	then
	python nr_viral.py 75393829 75527505
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 565 ]
	then
	python nr_viral.py 75527506 75661182
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 566 ]
	then
	python nr_viral.py 75661183 75794859
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 567 ]
	then
	python nr_viral.py 75794860 75928536
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 568 ]
	then
	python nr_viral.py 75928537 76062213
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 569 ]
	then
	python nr_viral.py 76062214 76195890
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 570 ]
	then
	python nr_viral.py 76195891 76329567
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 571 ]
	then
	python nr_viral.py 76329568 76463244
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 572 ]
	then
	python nr_viral.py 76463245 76596921
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 573 ]
	then
	python nr_viral.py 76596922 76730598
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 574 ]
	then
	python nr_viral.py 76730599 76864275
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 575 ]
	then
	python nr_viral.py 76864276 76997952
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 576 ]
	then
	python nr_viral.py 76997953 77131629
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 577 ]
	then
	python nr_viral.py 77131630 77265306
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 578 ]
	then
	python nr_viral.py 77265307 77398983
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 579 ]
	then
	python nr_viral.py 77398984 77532660
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 580 ]
	then
	python nr_viral.py 77532661 77666337
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 581 ]
	then
	python nr_viral.py 77666338 77800014
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 582 ]
	then
	python nr_viral.py 77800015 77933691
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 583 ]
	then
	python nr_viral.py 77933692 78067368
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 584 ]
	then
	python nr_viral.py 78067369 78201045
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 585 ]
	then
	python nr_viral.py 78201046 78334722
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 586 ]
	then
	python nr_viral.py 78334723 78468399
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 587 ]
	then
	python nr_viral.py 78468400 78602076
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 588 ]
	then
	python nr_viral.py 78602077 78735753
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 589 ]
	then
	python nr_viral.py 78735754 78869430
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 590 ]
	then
	python nr_viral.py 78869431 79003107
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 591 ]
	then
	python nr_viral.py 79003108 79136784
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 592 ]
	then
	python nr_viral.py 79136785 79270461
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 593 ]
	then
	python nr_viral.py 79270462 79404138
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 594 ]
	then
	python nr_viral.py 79404139 79537815
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 595 ]
	then
	python nr_viral.py 79537816 79671492
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 596 ]
	then
	python nr_viral.py 79671493 79805169
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 597 ]
	then
	python nr_viral.py 79805170 79938846
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 598 ]
	then
	python nr_viral.py 79938847 80072523
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 599 ]
	then
	python nr_viral.py 80072524 80206200
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 600 ]
	then
	python nr_viral.py 80206201 80339877
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 601 ]
	then
	python nr_viral.py 80339878 80473554
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 602 ]
	then
	python nr_viral.py 80473555 80607231
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 603 ]
	then
	python nr_viral.py 80607232 80740908
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 604 ]
	then
	python nr_viral.py 80740909 80874585
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 605 ]
	then
	python nr_viral.py 80874586 81008262
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 606 ]
	then
	python nr_viral.py 81008263 81141939
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 607 ]
	then
	python nr_viral.py 81141940 81275616
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 608 ]
	then
	python nr_viral.py 81275617 81409293
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 609 ]
	then
	python nr_viral.py 81409294 81542970
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 610 ]
	then
	python nr_viral.py 81542971 81676647
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 611 ]
	then
	python nr_viral.py 81676648 81810324
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 612 ]
	then
	python nr_viral.py 81810325 81944001
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 613 ]
	then
	python nr_viral.py 81944002 82077678
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 614 ]
	then
	python nr_viral.py 82077679 82211355
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 615 ]
	then
	python nr_viral.py 82211356 82345032
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 616 ]
	then
	python nr_viral.py 82345033 82478709
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 617 ]
	then
	python nr_viral.py 82478710 82612386
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 618 ]
	then
	python nr_viral.py 82612387 82746063
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 619 ]
	then
	python nr_viral.py 82746064 82879740
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 620 ]
	then
	python nr_viral.py 82879741 83013417
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 621 ]
	then
	python nr_viral.py 83013418 83147094
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 622 ]
	then
	python nr_viral.py 83147095 83280771
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 623 ]
	then
	python nr_viral.py 83280772 83414448
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 624 ]
	then
	python nr_viral.py 83414449 83548125
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 625 ]
	then
	python nr_viral.py 83548126 83681802
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 626 ]
	then
	python nr_viral.py 83681803 83815479
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 627 ]
	then
	python nr_viral.py 83815480 83949156
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 628 ]
	then
	python nr_viral.py 83949157 84082833
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 629 ]
	then
	python nr_viral.py 84082834 84216510
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 630 ]
	then
	python nr_viral.py 84216511 84350187
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 631 ]
	then
	python nr_viral.py 84350188 84483864
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 632 ]
	then
	python nr_viral.py 84483865 84617541
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 633 ]
	then
	python nr_viral.py 84617542 84751218
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 634 ]
	then
	python nr_viral.py 84751219 84884895
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 635 ]
	then
	python nr_viral.py 84884896 85018572
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 636 ]
	then
	python nr_viral.py 85018573 85152249
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 637 ]
	then
	python nr_viral.py 85152250 85285926
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 638 ]
	then
	python nr_viral.py 85285927 85419603
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 639 ]
	then
	python nr_viral.py 85419604 85553280
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 640 ]
	then
	python nr_viral.py 85553281 85686957
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 641 ]
	then
	python nr_viral.py 85686958 85820634
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 642 ]
	then
	python nr_viral.py 85820635 85954311
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 643 ]
	then
	python nr_viral.py 85954312 86087988
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 644 ]
	then
	python nr_viral.py 86087989 86221665
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 645 ]
	then
	python nr_viral.py 86221666 86355342
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 646 ]
	then
	python nr_viral.py 86355343 86489019
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 647 ]
	then
	python nr_viral.py 86489020 86622696
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 648 ]
	then
	python nr_viral.py 86622697 86756373
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 649 ]
	then
	python nr_viral.py 86756374 86890050
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 650 ]
	then
	python nr_viral.py 86890051 87023727
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 651 ]
	then
	python nr_viral.py 87023728 87157404
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 652 ]
	then
	python nr_viral.py 87157405 87291081
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 653 ]
	then
	python nr_viral.py 87291082 87424758
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 654 ]
	then
	python nr_viral.py 87424759 87558435
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 655 ]
	then
	python nr_viral.py 87558436 87692112
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 656 ]
	then
	python nr_viral.py 87692113 87825789
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 657 ]
	then
	python nr_viral.py 87825790 87959466
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 658 ]
	then
	python nr_viral.py 87959467 88093143
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 659 ]
	then
	python nr_viral.py 88093144 88226820
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 660 ]
	then
	python nr_viral.py 88226821 88360497
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 661 ]
	then
	python nr_viral.py 88360498 88494174
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 662 ]
	then
	python nr_viral.py 88494175 88627851
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 663 ]
	then
	python nr_viral.py 88627852 88761528
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 664 ]
	then
	python nr_viral.py 88761529 88895205
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 665 ]
	then
	python nr_viral.py 88895206 89028882
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 666 ]
	then
	python nr_viral.py 89028883 89162559
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 667 ]
	then
	python nr_viral.py 89162560 89296236
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 668 ]
	then
	python nr_viral.py 89296237 89429913
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 669 ]
	then
	python nr_viral.py 89429914 89563590
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 670 ]
	then
	python nr_viral.py 89563591 89697267
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 671 ]
	then
	python nr_viral.py 89697268 89830944
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 672 ]
	then
	python nr_viral.py 89830945 89964621
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 673 ]
	then
	python nr_viral.py 89964622 90098298
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 674 ]
	then
	python nr_viral.py 90098299 90231975
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 675 ]
	then
	python nr_viral.py 90231976 90365652
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 676 ]
	then
	python nr_viral.py 90365653 90499329
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 677 ]
	then
	python nr_viral.py 90499330 90633006
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 678 ]
	then
	python nr_viral.py 90633007 90766683
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 679 ]
	then
	python nr_viral.py 90766684 90900360
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 680 ]
	then
	python nr_viral.py 90900361 91034037
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 681 ]
	then
	python nr_viral.py 91034038 91167714
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 682 ]
	then
	python nr_viral.py 91167715 91301391
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 683 ]
	then
	python nr_viral.py 91301392 91435068
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 684 ]
	then
	python nr_viral.py 91435069 91568745
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 685 ]
	then
	python nr_viral.py 91568746 91702422
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 686 ]
	then
	python nr_viral.py 91702423 91836099
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 687 ]
	then
	python nr_viral.py 91836100 91969776
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 688 ]
	then
	python nr_viral.py 91969777 92103453
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 689 ]
	then
	python nr_viral.py 92103454 92237130
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 690 ]
	then
	python nr_viral.py 92237131 92370807
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 691 ]
	then
	python nr_viral.py 92370808 92504484
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 692 ]
	then
	python nr_viral.py 92504485 92638161
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 693 ]
	then
	python nr_viral.py 92638162 92771838
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 694 ]
	then
	python nr_viral.py 92771839 92905515
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 695 ]
	then
	python nr_viral.py 92905516 93039192
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 696 ]
	then
	python nr_viral.py 93039193 93172869
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 697 ]
	then
	python nr_viral.py 93172870 93306546
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 698 ]
	then
	python nr_viral.py 93306547 93440223
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 699 ]
	then
	python nr_viral.py 93440224 93573900
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 700 ]
	then
	python nr_viral.py 93573901 93707577
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 701 ]
	then
	python nr_viral.py 93707578 93841254
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 702 ]
	then
	python nr_viral.py 93841255 93974931
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 703 ]
	then
	python nr_viral.py 93974932 94108608
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 704 ]
	then
	python nr_viral.py 94108609 94242285
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 705 ]
	then
	python nr_viral.py 94242286 94375962
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 706 ]
	then
	python nr_viral.py 94375963 94509639
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 707 ]
	then
	python nr_viral.py 94509640 94643316
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 708 ]
	then
	python nr_viral.py 94643317 94776993
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 709 ]
	then
	python nr_viral.py 94776994 94910670
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 710 ]
	then
	python nr_viral.py 94910671 95044347
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 711 ]
	then
	python nr_viral.py 95044348 95178024
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 712 ]
	then
	python nr_viral.py 95178025 95311701
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 713 ]
	then
	python nr_viral.py 95311702 95445378
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 714 ]
	then
	python nr_viral.py 95445379 95579055
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 715 ]
	then
	python nr_viral.py 95579056 95712732
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 716 ]
	then
	python nr_viral.py 95712733 95846409
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 717 ]
	then
	python nr_viral.py 95846410 95980086
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 718 ]
	then
	python nr_viral.py 95980087 96113763
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 719 ]
	then
	python nr_viral.py 96113764 96247440
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 720 ]
	then
	python nr_viral.py 96247441 96381117
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 721 ]
	then
	python nr_viral.py 96381118 96514794
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 722 ]
	then
	python nr_viral.py 96514795 96648471
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 723 ]
	then
	python nr_viral.py 96648472 96782148
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 724 ]
	then
	python nr_viral.py 96782149 96915825
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 725 ]
	then
	python nr_viral.py 96915826 97049502
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 726 ]
	then
	python nr_viral.py 97049503 97183179
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 727 ]
	then
	python nr_viral.py 97183180 97316856
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 728 ]
	then
	python nr_viral.py 97316857 97450533
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 729 ]
	then
	python nr_viral.py 97450534 97584210
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 730 ]
	then
	python nr_viral.py 97584211 97717887
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 731 ]
	then
	python nr_viral.py 97717888 97851564
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 732 ]
	then
	python nr_viral.py 97851565 97985241
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 733 ]
	then
	python nr_viral.py 97985242 98118918
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 734 ]
	then
	python nr_viral.py 98118919 98252595
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 735 ]
	then
	python nr_viral.py 98252596 98386272
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 736 ]
	then
	python nr_viral.py 98386273 98519949
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 737 ]
	then
	python nr_viral.py 98519950 98653626
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 738 ]
	then
	python nr_viral.py 98653627 98787303
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 739 ]
	then
	python nr_viral.py 98787304 98920980
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 740 ]
	then
	python nr_viral.py 98920981 99054657
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 741 ]
	then
	python nr_viral.py 99054658 99188334
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 742 ]
	then
	python nr_viral.py 99188335 99322011
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 743 ]
	then
	python nr_viral.py 99322012 99455688
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 744 ]
	then
	python nr_viral.py 99455689 99589365
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 745 ]
	then
	python nr_viral.py 99589366 99723042
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 746 ]
	then
	python nr_viral.py 99723043 99856719
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 747 ]
	then
	python nr_viral.py 99856720 99990396
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 748 ]
	then
	python nr_viral.py 99990397 100124073
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 749 ]
	then
	python nr_viral.py 100124074 100257750
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 750 ]
	then
	python nr_viral.py 100257751 100391427
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 751 ]
	then
	python nr_viral.py 100391428 100525104
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 752 ]
	then
	python nr_viral.py 100525105 100658781
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 753 ]
	then
	python nr_viral.py 100658782 100792458
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 754 ]
	then
	python nr_viral.py 100792459 100926135
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 755 ]
	then
	python nr_viral.py 100926136 101059812
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 756 ]
	then
	python nr_viral.py 101059813 101193489
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 757 ]
	then
	python nr_viral.py 101193490 101327166
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 758 ]
	then
	python nr_viral.py 101327167 101460843
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 759 ]
	then
	python nr_viral.py 101460844 101594520
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 760 ]
	then
	python nr_viral.py 101594521 101728197
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 761 ]
	then
	python nr_viral.py 101728198 101861874
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 762 ]
	then
	python nr_viral.py 101861875 101995551
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 763 ]
	then
	python nr_viral.py 101995552 102129228
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 764 ]
	then
	python nr_viral.py 102129229 102262905
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 765 ]
	then
	python nr_viral.py 102262906 102396582
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 766 ]
	then
	python nr_viral.py 102396583 102530259
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 767 ]
	then
	python nr_viral.py 102530260 102663936
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 768 ]
	then
	python nr_viral.py 102663937 102797613
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 769 ]
	then
	python nr_viral.py 102797614 102931290
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 770 ]
	then
	python nr_viral.py 102931291 103064967
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 771 ]
	then
	python nr_viral.py 103064968 103198644
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 772 ]
	then
	python nr_viral.py 103198645 103332321
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 773 ]
	then
	python nr_viral.py 103332322 103465998
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 774 ]
	then
	python nr_viral.py 103465999 103599675
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 775 ]
	then
	python nr_viral.py 103599676 103733352
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 776 ]
	then
	python nr_viral.py 103733353 103867029
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 777 ]
	then
	python nr_viral.py 103867030 104000706
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 778 ]
	then
	python nr_viral.py 104000707 104134383
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 779 ]
	then
	python nr_viral.py 104134384 104268060
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 780 ]
	then
	python nr_viral.py 104268061 104401737
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 781 ]
	then
	python nr_viral.py 104401738 104535414
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 782 ]
	then
	python nr_viral.py 104535415 104669091
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 783 ]
	then
	python nr_viral.py 104669092 104802768
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 784 ]
	then
	python nr_viral.py 104802769 104936445
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 785 ]
	then
	python nr_viral.py 104936446 105070122
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 786 ]
	then
	python nr_viral.py 105070123 105203799
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 787 ]
	then
	python nr_viral.py 105203800 105337476
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 788 ]
	then
	python nr_viral.py 105337477 105471153
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 789 ]
	then
	python nr_viral.py 105471154 105604830
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 790 ]
	then
	python nr_viral.py 105604831 105738507
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 791 ]
	then
	python nr_viral.py 105738508 105872184
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 792 ]
	then
	python nr_viral.py 105872185 106005861
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 793 ]
	then
	python nr_viral.py 106005862 106139538
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 794 ]
	then
	python nr_viral.py 106139539 106273215
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 795 ]
	then
	python nr_viral.py 106273216 106406892
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 796 ]
	then
	python nr_viral.py 106406893 106540569
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 797 ]
	then
	python nr_viral.py 106540570 106674246
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 798 ]
	then
	python nr_viral.py 106674247 106807923
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 799 ]
	then
	python nr_viral.py 106807924 106941600
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 800 ]
	then
	python nr_viral.py 106941601 107075277
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 801 ]
	then
	python nr_viral.py 107075278 107208954
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 802 ]
	then
	python nr_viral.py 107208955 107342631
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 803 ]
	then
	python nr_viral.py 107342632 107476308
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 804 ]
	then
	python nr_viral.py 107476309 107609985
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 805 ]
	then
	python nr_viral.py 107609986 107743662
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 806 ]
	then
	python nr_viral.py 107743663 107877339
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 807 ]
	then
	python nr_viral.py 107877340 108011016
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 808 ]
	then
	python nr_viral.py 108011017 108144693
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 809 ]
	then
	python nr_viral.py 108144694 108278370
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 810 ]
	then
	python nr_viral.py 108278371 108412047
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 811 ]
	then
	python nr_viral.py 108412048 108545724
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 812 ]
	then
	python nr_viral.py 108545725 108679401
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 813 ]
	then
	python nr_viral.py 108679402 108813078
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 814 ]
	then
	python nr_viral.py 108813079 108946755
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 815 ]
	then
	python nr_viral.py 108946756 109080432
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 816 ]
	then
	python nr_viral.py 109080433 109214109
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 817 ]
	then
	python nr_viral.py 109214110 109347786
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 818 ]
	then
	python nr_viral.py 109347787 109481463
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 819 ]
	then
	python nr_viral.py 109481464 109615140
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 820 ]
	then
	python nr_viral.py 109615141 109748817
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 821 ]
	then
	python nr_viral.py 109748818 109882494
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 822 ]
	then
	python nr_viral.py 109882495 110016171
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 823 ]
	then
	python nr_viral.py 110016172 110149848
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 824 ]
	then
	python nr_viral.py 110149849 110283525
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 825 ]
	then
	python nr_viral.py 110283526 110417202
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 826 ]
	then
	python nr_viral.py 110417203 110550879
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 827 ]
	then
	python nr_viral.py 110550880 110684556
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 828 ]
	then
	python nr_viral.py 110684557 110818233
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 829 ]
	then
	python nr_viral.py 110818234 110951910
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 830 ]
	then
	python nr_viral.py 110951911 111085587
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 831 ]
	then
	python nr_viral.py 111085588 111219264
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 832 ]
	then
	python nr_viral.py 111219265 111352941
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 833 ]
	then
	python nr_viral.py 111352942 111486618
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 834 ]
	then
	python nr_viral.py 111486619 111620295
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 835 ]
	then
	python nr_viral.py 111620296 111753972
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 836 ]
	then
	python nr_viral.py 111753973 111887649
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 837 ]
	then
	python nr_viral.py 111887650 112021326
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 838 ]
	then
	python nr_viral.py 112021327 112155003
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 839 ]
	then
	python nr_viral.py 112155004 112288680
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 840 ]
	then
	python nr_viral.py 112288681 112422357
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 841 ]
	then
	python nr_viral.py 112422358 112556034
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 842 ]
	then
	python nr_viral.py 112556035 112689711
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 843 ]
	then
	python nr_viral.py 112689712 112823388
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 844 ]
	then
	python nr_viral.py 112823389 112957065
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 845 ]
	then
	python nr_viral.py 112957066 113090742
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 846 ]
	then
	python nr_viral.py 113090743 113224419
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 847 ]
	then
	python nr_viral.py 113224420 113358096
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 848 ]
	then
	python nr_viral.py 113358097 113491773
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 849 ]
	then
	python nr_viral.py 113491774 113625450
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 850 ]
	then
	python nr_viral.py 113625451 113759127
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 851 ]
	then
	python nr_viral.py 113759128 113892804
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 852 ]
	then
	python nr_viral.py 113892805 114026481
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 853 ]
	then
	python nr_viral.py 114026482 114160158
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 854 ]
	then
	python nr_viral.py 114160159 114293835
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 855 ]
	then
	python nr_viral.py 114293836 114427512
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 856 ]
	then
	python nr_viral.py 114427513 114561189
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 857 ]
	then
	python nr_viral.py 114561190 114694866
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 858 ]
	then
	python nr_viral.py 114694867 114828543
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 859 ]
	then
	python nr_viral.py 114828544 114962220
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 860 ]
	then
	python nr_viral.py 114962221 115095897
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 861 ]
	then
	python nr_viral.py 115095898 115229574
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 862 ]
	then
	python nr_viral.py 115229575 115363251
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 863 ]
	then
	python nr_viral.py 115363252 115496928
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 864 ]
	then
	python nr_viral.py 115496929 115630605
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 865 ]
	then
	python nr_viral.py 115630606 115764282
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 866 ]
	then
	python nr_viral.py 115764283 115897959
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 867 ]
	then
	python nr_viral.py 115897960 116031636
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 868 ]
	then
	python nr_viral.py 116031637 116165313
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 869 ]
	then
	python nr_viral.py 116165314 116298990
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 870 ]
	then
	python nr_viral.py 116298991 116432667
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 871 ]
	then
	python nr_viral.py 116432668 116566344
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 872 ]
	then
	python nr_viral.py 116566345 116700021
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 873 ]
	then
	python nr_viral.py 116700022 116833698
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 874 ]
	then
	python nr_viral.py 116833699 116967375
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 875 ]
	then
	python nr_viral.py 116967376 117101052
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 876 ]
	then
	python nr_viral.py 117101053 117234729
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 877 ]
	then
	python nr_viral.py 117234730 117368406
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 878 ]
	then
	python nr_viral.py 117368407 117502083
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 879 ]
	then
	python nr_viral.py 117502084 117635760
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 880 ]
	then
	python nr_viral.py 117635761 117769437
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 881 ]
	then
	python nr_viral.py 117769438 117903114
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 882 ]
	then
	python nr_viral.py 117903115 118036791
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 883 ]
	then
	python nr_viral.py 118036792 118170468
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 884 ]
	then
	python nr_viral.py 118170469 118304145
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 885 ]
	then
	python nr_viral.py 118304146 118437822
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 886 ]
	then
	python nr_viral.py 118437823 118571499
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 887 ]
	then
	python nr_viral.py 118571500 118705176
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 888 ]
	then
	python nr_viral.py 118705177 118838853
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 889 ]
	then
	python nr_viral.py 118838854 118972530
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 890 ]
	then
	python nr_viral.py 118972531 119106207
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 891 ]
	then
	python nr_viral.py 119106208 119239884
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 892 ]
	then
	python nr_viral.py 119239885 119373561
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 893 ]
	then
	python nr_viral.py 119373562 119507238
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 894 ]
	then
	python nr_viral.py 119507239 119640915
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 895 ]
	then
	python nr_viral.py 119640916 119774592
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 896 ]
	then
	python nr_viral.py 119774593 119908269
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 897 ]
	then
	python nr_viral.py 119908270 120041946
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 898 ]
	then
	python nr_viral.py 120041947 120175623
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 899 ]
	then
	python nr_viral.py 120175624 120309300
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 900 ]
	then
	python nr_viral.py 120309301 120442977
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 901 ]
	then
	python nr_viral.py 120442978 120576654
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 902 ]
	then
	python nr_viral.py 120576655 120710331
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 903 ]
	then
	python nr_viral.py 120710332 120844008
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 904 ]
	then
	python nr_viral.py 120844009 120977685
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 905 ]
	then
	python nr_viral.py 120977686 121111362
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 906 ]
	then
	python nr_viral.py 121111363 121245039
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 907 ]
	then
	python nr_viral.py 121245040 121378716
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 908 ]
	then
	python nr_viral.py 121378717 121512393
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 909 ]
	then
	python nr_viral.py 121512394 121646070
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 910 ]
	then
	python nr_viral.py 121646071 121779747
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 911 ]
	then
	python nr_viral.py 121779748 121913424
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 912 ]
	then
	python nr_viral.py 121913425 122047101
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 913 ]
	then
	python nr_viral.py 122047102 122180778
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 914 ]
	then
	python nr_viral.py 122180779 122314455
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 915 ]
	then
	python nr_viral.py 122314456 122448132
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 916 ]
	then
	python nr_viral.py 122448133 122581809
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 917 ]
	then
	python nr_viral.py 122581810 122715486
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 918 ]
	then
	python nr_viral.py 122715487 122849163
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 919 ]
	then
	python nr_viral.py 122849164 122982840
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 920 ]
	then
	python nr_viral.py 122982841 123116517
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 921 ]
	then
	python nr_viral.py 123116518 123250194
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 922 ]
	then
	python nr_viral.py 123250195 123383871
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 923 ]
	then
	python nr_viral.py 123383872 123517548
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 924 ]
	then
	python nr_viral.py 123517549 123651225
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 925 ]
	then
	python nr_viral.py 123651226 123784902
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 926 ]
	then
	python nr_viral.py 123784903 123918579
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 927 ]
	then
	python nr_viral.py 123918580 124052256
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 928 ]
	then
	python nr_viral.py 124052257 124185933
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 929 ]
	then
	python nr_viral.py 124185934 124319610
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 930 ]
	then
	python nr_viral.py 124319611 124453287
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 931 ]
	then
	python nr_viral.py 124453288 124586964
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 932 ]
	then
	python nr_viral.py 124586965 124720641
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 933 ]
	then
	python nr_viral.py 124720642 124854318
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 934 ]
	then
	python nr_viral.py 124854319 124987995
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 935 ]
	then
	python nr_viral.py 124987996 125121672
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 936 ]
	then
	python nr_viral.py 125121673 125255349
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 937 ]
	then
	python nr_viral.py 125255350 125389026
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 938 ]
	then
	python nr_viral.py 125389027 125522703
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 939 ]
	then
	python nr_viral.py 125522704 125656380
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 940 ]
	then
	python nr_viral.py 125656381 125790057
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 941 ]
	then
	python nr_viral.py 125790058 125923734
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 942 ]
	then
	python nr_viral.py 125923735 126057411
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 943 ]
	then
	python nr_viral.py 126057412 126191088
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 944 ]
	then
	python nr_viral.py 126191089 126324765
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 945 ]
	then
	python nr_viral.py 126324766 126458442
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 946 ]
	then
	python nr_viral.py 126458443 126592119
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 947 ]
	then
	python nr_viral.py 126592120 126725796
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 948 ]
	then
	python nr_viral.py 126725797 126859473
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 949 ]
	then
	python nr_viral.py 126859474 126993150
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 950 ]
	then
	python nr_viral.py 126993151 127126827
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 951 ]
	then
	python nr_viral.py 127126828 127260504
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 952 ]
	then
	python nr_viral.py 127260505 127394181
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 953 ]
	then
	python nr_viral.py 127394182 127527858
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 954 ]
	then
	python nr_viral.py 127527859 127661535
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 955 ]
	then
	python nr_viral.py 127661536 127795212
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 956 ]
	then
	python nr_viral.py 127795213 127928889
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 957 ]
	then
	python nr_viral.py 127928890 128062566
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 958 ]
	then
	python nr_viral.py 128062567 128196243
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 959 ]
	then
	python nr_viral.py 128196244 128329920
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 960 ]
	then
	python nr_viral.py 128329921 128463597
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 961 ]
	then
	python nr_viral.py 128463598 128597274
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 962 ]
	then
	python nr_viral.py 128597275 128730951
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 963 ]
	then
	python nr_viral.py 128730952 128864628
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 964 ]
	then
	python nr_viral.py 128864629 128998305
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 965 ]
	then
	python nr_viral.py 128998306 129131982
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 966 ]
	then
	python nr_viral.py 129131983 129265659
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 967 ]
	then
	python nr_viral.py 129265660 129399336
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 968 ]
	then
	python nr_viral.py 129399337 129533013
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 969 ]
	then
	python nr_viral.py 129533014 129666690
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 970 ]
	then
	python nr_viral.py 129666691 129800367
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 971 ]
	then
	python nr_viral.py 129800368 129934044
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 972 ]
	then
	python nr_viral.py 129934045 130067721
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 973 ]
	then
	python nr_viral.py 130067722 130201398
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 974 ]
	then
	python nr_viral.py 130201399 130335075
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 975 ]
	then
	python nr_viral.py 130335076 130468752
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 976 ]
	then
	python nr_viral.py 130468753 130602429
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 977 ]
	then
	python nr_viral.py 130602430 130736106
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 978 ]
	then
	python nr_viral.py 130736107 130869783
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 979 ]
	then
	python nr_viral.py 130869784 131003460
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 980 ]
	then
	python nr_viral.py 131003461 131137137
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 981 ]
	then
	python nr_viral.py 131137138 131270814
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 982 ]
	then
	python nr_viral.py 131270815 131404491
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 983 ]
	then
	python nr_viral.py 131404492 131538168
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 984 ]
	then
	python nr_viral.py 131538169 131671845
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 985 ]
	then
	python nr_viral.py 131671846 131805522
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 986 ]
	then
	python nr_viral.py 131805523 131939199
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 987 ]
	then
	python nr_viral.py 131939200 132072876
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 988 ]
	then
	python nr_viral.py 132072877 132206553
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 989 ]
	then
	python nr_viral.py 132206554 132340230
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 990 ]
	then
	python nr_viral.py 132340231 132473907
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 991 ]
	then
	python nr_viral.py 132473908 132607584
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 992 ]
	then
	python nr_viral.py 132607585 132741261
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 993 ]
	then
	python nr_viral.py 132741262 132874938
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 994 ]
	then
	python nr_viral.py 132874939 133008615
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 995 ]
	then
	python nr_viral.py 133008616 133142292
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 996 ]
	then
	python nr_viral.py 133142293 133275969
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 997 ]
	then
	python nr_viral.py 133275970 133409646
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
elif [ $t -eq 998 ]
	then
	python nr_viral.py 133409647 133541610
	mv cluster/nr_viral_${t}.out ../data/nr/viral_out/
fi