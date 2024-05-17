import g4p_controls.* ;
Teacher[] teachers;
String[] lines;

int scroll = 0 ;
void setup () {
  createGUI();
  lines = loadStrings ("Teacher_Data.txt");
  getTeacherData();
  //teachers[1].describeMe();
  
}

void draw () {
}

void getTeacherData() {
  int num_teachers = lines.length ;
  teachers = new Teacher [num_teachers];
  //println("this is lenght" + lines.length);
  //PrintWriter pw = createWriter("Teacher_Data.txt");
  for (int i = 0; i < lines.length; i++) {
    String cur_line = lines [i];
    String[] value = new String[7];
    value = split(cur_line, '*');
    //println(value);
    //println("this is I   " + i);
    teachers [i] = new Teacher (value[0], value[1], value[2], value[3], value[4], value[5], value[6]);
  }
}

void addTeacherData (String data) {
  String[] value = new String[7];
  //println(data);
  value = split(data, '*');
  String new_Teacher = value[0] + "*" + value[1] + "*" + value[2] + "*" + value[3] + "8" + value[4] + "*" + value[5] + "*" + value[6];
  lines = append(lines, new_Teacher);
  //println(lines);
  saveStrings("Teacher_Data.txt", lines);
  //println(lines[3]);
  //println("hello");
  getTeacherData();
}
