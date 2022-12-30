


shotCDMax = 300;
shotCDLow = 45;


// keep them from starting at the same time
var a = x; 
while(a > shotCDMax){ a -= shotCDMax; }
shotCD = shotCDMax + a;


