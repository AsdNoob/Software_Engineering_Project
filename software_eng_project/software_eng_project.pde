import g4p_controls.* ;
Teacher[] teachers;

int scroll = 0 ;
void setup () {
  createGUI();
}

void draw () {

}

void getTeacherData() {
  String[] value = new String [7];
  String[] lines = loadStrings ("Teacher_Data.txt");
  int num_teachers = lines.length ;
  PrintWriter pw = createWriter("Teacher_Data.txt");
  for (int i = 0; i < lines.length; i++) {
    String cur_line = lines [i];
    int a = 0;
    String remain = cur_line;
    while (a <= num_teachers) {
      int star_index = cur_line.indexOf("*");
      value [a] = remain.substring(0, star_index);
      remain = cur_line.substring(star_index);
      a ++ ;
    }
    //String name = cur_line [0];
    teachers = new Teacher [num_teachers];
    teachers [i] = new Teacher (value[0], value[1], value[2], value[3], value[4], value[5], value[6]);
  }
}

void addTeacherData() {

}




  
//  for(int i=0; i< lines.length; i++) {
//    String currentLine = lines[i];
//    String[] parts = currentLine.split("\t");
    
//    String Name = parts[0];
//    //int gold = int(parts[1]);
//    //int silver = int(parts[2]);
//    //int bronze = int(parts[3]);
    
//    int avgMark = (int(parts[1]) + int(parts[2]) + int(parts[3]) + int(parts[4])) / 4 ;
    
//    println(Name ,"has an avgerage Mark of", avgMark);
//  }


//String get_smart_location (String pair) {
//  int comaIndex = pair.indexOf(",");
//  int spaceIndex = pair.indexOf(" ");
//  float x = float(pair.substring(0, comaIndex));
//  float y = float(pair.substring(spaceIndex));
  
//  // return x * y;
//}


// Tools to manipulate strings
       // substring(),   indexOf(),    int(),    float()
       
  // String cellNum = "(519) 246-4877";
  // int areCode = int(cellNum.substring(1, 4)); // 
  // println(areCode);
  
  // int spaceIndex = cellNum.indexOf(" ");
  // int dashIndex = cellNum.indexOf("-");
  // println(spaceIndex, dashIndex);
  
  // String last4 = cellNum.substring(dashIndex + 1);   // prints everything after the #dashIndex 
  // println(last4);
  
  // String middle = cellNum.substring(spaceIndex + 1, dashIndex);
  // println(middle);
  
  // if (areCode % 2 == 0)
  //   println("Area Code is Even");
  // else
  //   println("Area Code is Odd");
