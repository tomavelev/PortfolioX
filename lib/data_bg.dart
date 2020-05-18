class Constants {
  static User user = User(
    name: "Тома Велев",
    projects: [
      "Приложение за андроид По-добри навици",
      "Приложение за андроид - Бележки",
      "Сайт и приложения - Какво Ядеш",
      "ELI-HOME - Умни устройства",
      "Платформа за създаване на прототипи",
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
    return "Творчески разработки,\n";
  }

  static String projects() {
    return "Избрани проекти.";
  }

  static String loading() {
    return "Зареждане...";
  }

  static String gotAProject() {
    return "Имаш проект и търсиш парньор?";
  }

  static String madeInIndia() {
    return "Направено в Индия с ";
  }

  static String modifiedBy() {
    return "Модифицирано от " + user.name;
  }

  static String thanks() {
    return  "Благодаря, че скролвахте, ";
  }

  static String thatsAll() {
    return "Това е всичко приятели.";
  }

  static String intro() {
    return " - Въведение";
  }

  static String introdata() {
    return "Софтуерен разработчик - опит с Flutter, Android, Няколко Java Frameworks, Full-stack знания, Web.\nНърд, Блогър, Философ, Салса Танцьор.\nСъздател на kakvoiadesh.com, appcenter.online, programtom.com, tomavelev.com няколко още проекта.";
  }

  static String visit() {
    return "Посети ";
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
