class Teacher {
  //Feilds
  int rating, pow_lvl, wins ;
  String name, description, subject;
  String power, pow_desc;
  
  //Constructor
  Teacher (String name, String desc, String subject, String r, String power, String pow_desc, String pow_lvl) {
  this.name = name;
  this.description = desc;
  this.rating = int(r);
  this.subject = subject;
  this.power = power;
  this.pow_desc = pow_desc;
  this.pow_lvl = int(pow_lvl);
  this.wins = 0;
  }
  
  //Methods
  String Fight (Teacher other) {
    String result = "" ;
    if (this.rating > other.rating) {
      if (this.pow_lvl * 1.5 > other.pow_lvl) {
        result = this.name + "Wins!";
        this.wins ++;
      }
      else {
        result = other.name + "Wins!";
        other.wins ++;
      }
    }
    else if (other.rating > this.rating) {
      if (other.pow_lvl * 1.5 > this.pow_lvl) {
        result = other.name + "Wins!";
        other.wins ++;
      }
      else {
        result = this.name + "Wins!";
        this.wins ++;
      }
    }
    else {
      if (other.pow_lvl > this.pow_lvl) {
        result = other.name + "Wins!";
        other.wins ++;
      }
      else {
        result = this.name + "Wins!";
        this.wins ++;
      }
    }
    
    return result;
  }
  
  void ann_Result (Teacher other) {
    
  }
}
