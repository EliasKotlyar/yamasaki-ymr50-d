width=140*2;
lenght=100;
height=2;
difference(){
    cube([width,lenght,height],center=true);
    union(){        
        
        align(x="center", y="center") {
            
        }
        translate([0,-15,0]){
            // Create Holes for SS182:
            ss182xPos = 27;
            ss182yPos = 34;
            ss182radius = 2;
            cylinder(h=10, r=ss182radius, center=true);
            translate([ss182xPos,ss182yPos,0]){
            cylinder(h=10, r=ss182radius, center=true);
            }
            translate([-ss182xPos,ss182yPos,0]){
            cylinder(h=10, r=ss182radius, center=true);
            }
        }
        
        
        
        // Create Holes for Mounting:
        xPos = 100;
        yPos = 0;
        radius = 10;
        translate([xPos,yPos,0]){
            cylinder(h=10, r=radius, center=true);
        }
        translate([-xPos,yPos,0]){
            cylinder(h=10, r=radius, center=true);
        }
        
    }
    
}


