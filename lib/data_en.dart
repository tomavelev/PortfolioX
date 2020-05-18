class Constants {
  static User user = User(
    name: "Toma Velev",
    projects: [
      "Better Habits Android App",
      "Notes Android App",
      "What You Eat - Platform",
      "ELI-HOME Smart Devices",
      "Prototype Studio - Platform",
    ],
    email:  "tomavelev@gmail.com",
    picture: "https://tomavelev.programtom.com/tcdn/resources/metalking.png",
    url: "https://tomavelev.com",

    github: "https://github.com/tomavelev/",
    youtube: "https://www.youtube.com/user/tomavelev",
    instagram: "https://www.instagram.com/tomata_/",
    facebook: "https://www.facebook.com/tomavelev",
    twitter: "https://twitter.com/tomavelev",

  );

  static String  creativeWorks() {
    return "All Creative works,\n";
  }

  static String projects() {
    return "Selected projects.";
  }

  static String loading() {
    return "Loading...";
  }

  static String gotAProject() {
    return "Got a project and you need a tech partner?\nLet's talk.";
  }

  static String madeInIndia() {
    return "Made in India with";
  }

  static String modifiedBy() {
    return "Modified By " + user.name;
  }

  static String thanks() {
    return  "Thanks for scrolling, ";
  }

  static String thatsAll() {
    return "that's all folks.";
  }

  static String intro() {
    return " - Introduction";
  }

  static String introdata() {
    return "Software Developer - with experience on Flutter, Android, several Java Frameworks, Full-stack know-how, Dart & Web.\nTechnologist, Blogger, Philosopher, Salsa Dancer.\Creator of kakvoiadesh.com, appcenter.online, programtom.com, tomavelev.com and several others.";
  }

  static String visit() {
    return "Visit ";
  }
}

class User {
  String name;
  List<String> projects;
  String email;
  String url;
  String picture;

  String github;
  String youtube;
  String instagram;
  String facebook;
  String twitter;

  User({this.name, this.projects, this.email, this.picture, this.url,
  this.github,this.youtube, this.instagram, this.twitter, this.facebook

  });


}
