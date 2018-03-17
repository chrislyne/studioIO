//Maya ASCII 2012 scene
//Name: foot.ma
//Last modified: Tue, Jul 21, 2015 11:00:46 PM
//Codeset: 1252
requires maya "2008";
currentUnit -l centimeter -a degree -t pal;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "001200000000-796618";
fileInfo "osv" "Microsoft Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "FitSkeleton";
	addAttr -ci true -sn "visCylinders" -ln "visCylinders" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBoxes" -ln "visBoxes" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBones" -ln "visBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "lockCenterJoints" -ln "lockCenterJoints" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "visGap" -ln "visGap" -dv 0.75 -min 0 -max 1 -at "double";
	addAttr -ci true -m -im false -sn "drivingSystem" -ln "drivingSystem" -at "message";
	addAttr -ci true -m -sn "drivingSystem_ToeCurl_R" -ln "drivingSystem_ToeCurl_R" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "drivingSystem_ToeCurl_L" -ln "drivingSystem_ToeCurl_L" 
		-dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".visBoxes" yes;
	setAttr ".visGap" 1;
	setAttr -s 38 ".drivingSystem";
	setAttr -s 19 ".drivingSystem_ToeCurl_R";
	setAttr -s 19 ".drivingSystem_ToeCurl_R";
	setAttr -s 19 ".drivingSystem_ToeCurl_L";
	setAttr -s 19 ".drivingSystem_ToeCurl_L";
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 29;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3508348746736751 1.4394712022965405e-016 -2.3508348746736716
		-3.7929511823487981e-016 2.035719696933274e-016 -3.3245825626631635
		-2.3508348746736729 1.4394712022965413e-016 -2.3508348746736729
		-3.3245825626631635 5.899006384856358e-032 -9.6338085217116898e-016
		-2.3508348746736734 -1.4394712022965408e-016 2.350834874673672
		-1.0017616090771558e-015 -2.0357196969332745e-016 3.3245825626631644
		2.3508348746736716 -1.4394712022965413e-016 2.3508348746736729
		3.3245825626631635 -1.0933890203714376e-031 1.7856397797841755e-015
		2.3508348746736751 1.4394712022965405e-016 -2.3508348746736716
		-3.7929511823487981e-016 2.035719696933274e-016 -3.3245825626631635
		-2.3508348746736729 1.4394712022965413e-016 -2.3508348746736729
		;
createNode joint -n "Ankle" -p "FitSkeleton";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "worldOrient" -ln "worldOrient" -min 0 -max 5 -en "xUp:yUp:zUp:xDown:yDown:zDown" 
		-at "enum";
	setAttr ".t" -type "double3" -1.0867024199147359 0.84983532411015528 -0.068643641764130958 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 91.071825605326779 0 -89.999999999999858 ;
	setAttr ".pa" -type "double3" 3.1147589914174403 -1.2104724556304993 -11.405913270501992 ;
	setAttr ".dl" yes;
	setAttr ".typ" 4;
	setAttr -k on ".fat" 0.36999999999999988;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
	setAttr -k on ".worldOrient" 3;
createNode joint -n "Heel" -p "Ankle";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.36999999999999988 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.8396232890567531 -0.64341847648003048 0.012037760201838665 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Heel";
	setAttr -k on ".fat";
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "FootSideOuter" -p "Ankle";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.83962328905672445 0.79221176577548158 0.47385875407494682 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "PinkyToe";
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "FootSideInner" -p "Ankle";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.83962328905674144 0.77664434667161286 -0.35822004751468439 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "BigToe";
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "Toes" -p "Ankle";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.66611707946596899 1.3781098374469751 2.2204460492503131e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.14416839256663433 1.0620112072174781 82.268880628608471 ;
	setAttr ".pa" -type "double3" -0.00019030234564052423 0.00053514845282692043 25.864574245063647 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Toes";
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "PinkyToe1" -p "Toes";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" -0.17272346452771226 -0.023444560632726263 0.40392605231166057 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -0.00019030234564052423 0.00053514845282692043 25.864574245063647 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Toes";
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "PinkyToe2" -p "PinkyToe1";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.22551338571312973 7.7715611723760958e-016 4.2188474935755949e-015 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8626838158870722e-006 1.3815119963233423e-005 -15.357691910328651 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "PinkyToe3" -p "PinkyToe2";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.14000000000000035 7.7715611723760958e-016 4.4408920985006262e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "PinkyToe4" -p "PinkyToe3";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.070000000000000062 1.1102230246251565e-016 6.6613381477509392e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "RingToe1" -p "Toes";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" -0.059204846013090062 -0.0080361496100161411 0.28032197862075381 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -0.00019030234564052423 0.00053514845282692043 25.864574245063647 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Toes";
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "RingToe2" -p "RingToe1";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.23730413361723057 5.5511151231257827e-017 8.8817841970012523e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8626838158870722e-006 1.3815119963233423e-005 -15.357691910328651 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "RingToe3" -p "RingToe2";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.16000000000000014 1.1102230246251565e-015 6.6613381477509392e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "RingToe4" -p "RingToe3";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.089999999999999192 5.5511151231257827e-016 6.6613381477509392e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "MiddleToe1" -p "Toes";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.046845406502413978 0.0063585452973273782 0.13712217066583521 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -0.00019030234564052423 0.00053514845282692043 25.864574245063647 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Toes";
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "MiddleToe2" -p "MiddleToe1";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.27494201662014173 3.3306690738754696e-016 1.3322676295501878e-015 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8626838381510048e-006 1.3815119889647894e-005 -15.357691910328702 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "MiddleToe3" -p "MiddleToe2";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.1700000000000006 2.2204460492503131e-016 1.5543122344752192e-015 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "MiddleToe4" -p "MiddleToe3";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.10000000000000009 -1.1102230246251565e-016 2.2204460492503131e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "LongToe1" -p "Toes";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.04684516383333448 0.0063585123587217018 -0.050651628379982272 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -0.00019030234564052423 0.00053514845282692043 25.864574245063647 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Toes";
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "LongToe2" -p "LongToe1";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.34999999999999609 4.4408920985006262e-016 1.3322676295501878e-015 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8626838635953754e-006 1.3815119889648052e-005 -15.357691910328654 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "LongToe3" -p "LongToe2";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.18 0 0;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "LongToe4" -p "LongToe3";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.12000000000000011 -2.2204460492503131e-016 2.2204460492503131e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ToesEnd";
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "BigToe1" -p "Toes";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.046844868843390897 0.0063584723183588432 -0.27891055008907695 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -0.00019030234564052423 0.00053514845282692043 25.864574245063647 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Toes";
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "BigToe2" -p "BigToe1";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.34999999999999631 5.5511151231257827e-017 1.1102230246251565e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8626839335676576e-006 1.3815119878422988e-005 -15.357691910328708 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "BigToe3" -p "BigToe2";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.27000000000000179 8.8817841970012523e-016 4.4408920985006262e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 5;
	setAttr -k on ".fat" 0.1;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode animCurveUA -n "SDK1FKBigToe1_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "bigCurl" -ln "bigCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999892711639 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKBigToe2_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "bigCurl" -ln "bigCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999892711639 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKLongToe1_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "longCurl" -ln "longCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999892711639 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKLongToe2_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "longCurl" -ln "longCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999892711639 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKLongToe3_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "longCurl" -ln "longCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleToe1_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999892711639 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleToe2_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999892711639 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleToe3_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingToe1_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999892711639 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingToe2_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999892711639 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingToe3_R_rotateZ1";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyToe1_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999892711639 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyToe2_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999892711639 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyToe3_R_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKMiddleToe1_R_rotateY";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 1.9999998807907111 0 0 10 -10;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKLongToe1_R_rotateY";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -0.19999998807907102 0 0 10 1;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKBigToe1_R_rotateY";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -6.5999996066093445 0 0 10 33;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKRingToe1_R_rotateY";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 6.5999996066093445 0 0 10 -33;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKPinkyToe1_R_rotateY";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 9.9999994039535522 0 0 10 -50;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKBigToe1_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "bigCurl" -ln "bigCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999893 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKBigToe2_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "bigCurl" -ln "bigCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999893 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKLongToe1_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "longCurl" -ln "longCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999893 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKLongToe2_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "longCurl" -ln "longCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999893 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKLongToe3_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "longCurl" -ln "longCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleToe1_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999893 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleToe2_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999893 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKMiddleToe3_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingToe1_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999893 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingToe2_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999893 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKRingToe3_L_rotateZ1";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyToe1_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999893 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyToe2_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 17.99999893 0 0 10 -90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK1FKPinkyToe3_L_rotateZ";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKMiddleToe1_L_rotateY";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 1.9999998809999999 0 0 10 -10;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKLongToe1_L_rotateY";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -0.1999999881 0 0 10 1;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKBigToe1_L_rotateY";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -6.599999607 0 0 10 33;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKRingToe1_L_rotateY";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 6.599999607 0 0 10 -33;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "SDK2FKPinkyToe1_L_rotateY";
	addAttr -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 9.9999994040000004 0 0 10 -50;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode multiplyDivide -n "AnkleFat";
createNode multiplyDivide -n "HeelFat";
createNode multiplyDivide -n "FootSideOuterFat";
createNode multiplyDivide -n "FootSideInnerFat";
createNode multiplyDivide -n "ToesFat";
createNode multiplyDivide -n "PinkyToe1Fat";
createNode multiplyDivide -n "PinkyToe2Fat";
createNode multiplyDivide -n "PinkyToe3Fat";
createNode multiplyDivide -n "PinkyToe4Fat";
createNode multiplyDivide -n "RingToe1Fat";
createNode multiplyDivide -n "RingToe2Fat";
createNode multiplyDivide -n "RingToe3Fat";
createNode multiplyDivide -n "RingToe4Fat";
createNode multiplyDivide -n "MiddleToe1Fat";
createNode multiplyDivide -n "MiddleToe2Fat";
createNode multiplyDivide -n "MiddleToe3Fat";
createNode multiplyDivide -n "MiddleToe4Fat";
createNode multiplyDivide -n "LongToe1Fat";
createNode multiplyDivide -n "LongToe2Fat";
createNode multiplyDivide -n "LongToe3Fat";
createNode multiplyDivide -n "LongToe4Fat";
createNode multiplyDivide -n "BigToe1Fat";
createNode multiplyDivide -n "BigToe2Fat";
createNode multiplyDivide -n "BigToe3Fat";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "SDK1FKBigToe1_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKBigToe2_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKLongToe1_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKLongToe2_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKLongToe3_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleToe1_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleToe2_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleToe3_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingToe1_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingToe2_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingToe3_R_rotateZ1.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyToe1_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyToe2_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyToe3_R_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKMiddleToe1_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKLongToe1_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKBigToe1_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKRingToe1_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKPinkyToe1_R_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKBigToe1_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKBigToe2_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKLongToe1_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKLongToe2_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKLongToe3_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleToe1_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleToe2_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKMiddleToe3_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingToe1_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingToe2_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKRingToe3_L_rotateZ1.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyToe1_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyToe2_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK1FKPinkyToe3_L_rotateZ.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKMiddleToe1_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKLongToe1_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKBigToe1_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKRingToe1_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "SDK2FKPinkyToe1_L_rotateY.drivingSystemOut" "FitSkeleton.drivingSystem"
		 -na;
connectAttr "AnkleFat.oy" "Ankle.fatYabs";
connectAttr "AnkleFat.oz" "Ankle.fatZabs";
connectAttr "Ankle.s" "Heel.is";
connectAttr "HeelFat.oy" "Heel.fatYabs";
connectAttr "HeelFat.oz" "Heel.fatZabs";
connectAttr "Ankle.s" "FootSideOuter.is";
connectAttr "FootSideOuterFat.oy" "FootSideOuter.fatYabs";
connectAttr "FootSideOuterFat.oz" "FootSideOuter.fatZabs";
connectAttr "Ankle.s" "FootSideInner.is";
connectAttr "FootSideInnerFat.oy" "FootSideInner.fatYabs";
connectAttr "FootSideInnerFat.oz" "FootSideInner.fatZabs";
connectAttr "Ankle.s" "Toes.is";
connectAttr "ToesFat.oy" "Toes.fatYabs";
connectAttr "ToesFat.oz" "Toes.fatZabs";
connectAttr "PinkyToe1Fat.oy" "PinkyToe1.fatYabs";
connectAttr "PinkyToe1Fat.oz" "PinkyToe1.fatZabs";
connectAttr "PinkyToe1.s" "PinkyToe2.is";
connectAttr "PinkyToe2Fat.oy" "PinkyToe2.fatYabs";
connectAttr "PinkyToe2Fat.oz" "PinkyToe2.fatZabs";
connectAttr "PinkyToe2.s" "PinkyToe3.is";
connectAttr "PinkyToe3Fat.oy" "PinkyToe3.fatYabs";
connectAttr "PinkyToe3Fat.oz" "PinkyToe3.fatZabs";
connectAttr "PinkyToe3.s" "PinkyToe4.is";
connectAttr "PinkyToe4Fat.oy" "PinkyToe4.fatYabs";
connectAttr "PinkyToe4Fat.oz" "PinkyToe4.fatZabs";
connectAttr "RingToe1Fat.oy" "RingToe1.fatYabs";
connectAttr "RingToe1Fat.oz" "RingToe1.fatZabs";
connectAttr "RingToe1.s" "RingToe2.is";
connectAttr "RingToe2Fat.oy" "RingToe2.fatYabs";
connectAttr "RingToe2Fat.oz" "RingToe2.fatZabs";
connectAttr "RingToe2.s" "RingToe3.is";
connectAttr "RingToe3Fat.oy" "RingToe3.fatYabs";
connectAttr "RingToe3Fat.oz" "RingToe3.fatZabs";
connectAttr "RingToe3.s" "RingToe4.is";
connectAttr "RingToe4Fat.oy" "RingToe4.fatYabs";
connectAttr "RingToe4Fat.oz" "RingToe4.fatZabs";
connectAttr "MiddleToe1Fat.oy" "MiddleToe1.fatYabs";
connectAttr "MiddleToe1Fat.oz" "MiddleToe1.fatZabs";
connectAttr "MiddleToe1.s" "MiddleToe2.is";
connectAttr "MiddleToe2Fat.oy" "MiddleToe2.fatYabs";
connectAttr "MiddleToe2Fat.oz" "MiddleToe2.fatZabs";
connectAttr "MiddleToe2.s" "MiddleToe3.is";
connectAttr "MiddleToe3Fat.oy" "MiddleToe3.fatYabs";
connectAttr "MiddleToe3Fat.oz" "MiddleToe3.fatZabs";
connectAttr "MiddleToe3.s" "MiddleToe4.is";
connectAttr "MiddleToe4Fat.oy" "MiddleToe4.fatYabs";
connectAttr "MiddleToe4Fat.oz" "MiddleToe4.fatZabs";
connectAttr "LongToe1Fat.oy" "LongToe1.fatYabs";
connectAttr "LongToe1Fat.oz" "LongToe1.fatZabs";
connectAttr "LongToe1.s" "LongToe2.is";
connectAttr "LongToe2Fat.oy" "LongToe2.fatYabs";
connectAttr "LongToe2Fat.oz" "LongToe2.fatZabs";
connectAttr "LongToe2.s" "LongToe3.is";
connectAttr "LongToe3Fat.oy" "LongToe3.fatYabs";
connectAttr "LongToe3Fat.oz" "LongToe3.fatZabs";
connectAttr "LongToe3.s" "LongToe4.is";
connectAttr "LongToe4Fat.oy" "LongToe4.fatYabs";
connectAttr "LongToe4Fat.oz" "LongToe4.fatZabs";
connectAttr "BigToe1Fat.oy" "BigToe1.fatYabs";
connectAttr "BigToe1Fat.oz" "BigToe1.fatZabs";
connectAttr "BigToe1.s" "BigToe2.is";
connectAttr "BigToe2Fat.oy" "BigToe2.fatYabs";
connectAttr "BigToe2Fat.oz" "BigToe2.fatZabs";
connectAttr "BigToe2.s" "BigToe3.is";
connectAttr "BigToe3Fat.oy" "BigToe3.fatYabs";
connectAttr "BigToe3Fat.oz" "BigToe3.fatZabs";

connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[0]" "SDK2FKMiddleToe1_R_rotateY.spread"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[1]" "SDK2FKLongToe1_R_rotateY.spread"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[2]" "SDK2FKBigToe1_R_rotateY.spread"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[3]" "SDK2FKRingToe1_R_rotateY.spread"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[4]" "SDK2FKPinkyToe1_R_rotateY.spread"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[5]" "SDK1FKBigToe1_R_rotateZ.bigCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[6]" "SDK1FKBigToe2_R_rotateZ.bigCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[7]" "SDK1FKLongToe1_R_rotateZ.longCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[8]" "SDK1FKLongToe2_R_rotateZ.longCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[9]" "SDK1FKLongToe3_R_rotateZ.longCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[10]" "SDK1FKMiddleToe1_R_rotateZ.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[11]" "SDK1FKMiddleToe2_R_rotateZ.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[12]" "SDK1FKMiddleToe3_R_rotateZ.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[13]" "SDK1FKRingToe1_R_rotateZ.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[14]" "SDK1FKRingToe2_R_rotateZ.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[15]" "SDK1FKRingToe3_R_rotateZ1.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[16]" "SDK1FKPinkyToe1_R_rotateZ.pinkyCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[17]" "SDK1FKPinkyToe2_R_rotateZ.pinkyCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_R[18]" "SDK1FKPinkyToe3_R_rotateZ.pinkyCurl"
		;


connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[0]" "SDK2FKMiddleToe1_L_rotateY.spread"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[1]" "SDK2FKLongToe1_L_rotateY.spread"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[2]" "SDK2FKBigToe1_L_rotateY.spread"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[3]" "SDK2FKRingToe1_L_rotateY.spread"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[4]" "SDK2FKPinkyToe1_L_rotateY.spread"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[5]" "SDK1FKBigToe1_L_rotateZ.bigCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[6]" "SDK1FKBigToe2_R_rotateZ.bigCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[7]" "SDK1FKLongToe1_L_rotateZ.longCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[8]" "SDK1FKLongToe2_R_rotateZ.longCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[9]" "SDK1FKLongToe3_R_rotateZ.longCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[10]" "SDK1FKMiddleToe1_L_rotateZ.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[11]" "SDK1FKMiddleToe2_R_rotateZ.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[12]" "SDK1FKMiddleToe3_R_rotateZ.middleCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[13]" "SDK1FKRingToe1_L_rotateZ.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[14]" "SDK1FKRingToe2_R_rotateZ.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[15]" "SDK1FKRingToe3_R_rotateZ1.ringCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[16]" "SDK1FKPinkyToe1_L_rotateZ.pinkyCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[17]" "SDK1FKPinkyToe2_R_rotateZ.pinkyCurl"
		;
connectAttr "FitSkeleton.drivingSystem_ToeCurl_L[18]" "SDK1FKPinkyToe3_R_rotateZ.pinkyCurl"
		;

// End of foot.ma
