class Activity {
  String emg;
  String follower1;
  String follower2;
  String text;
  String desc;
  String time;

  Activity(
      {required this.emg,
      required this.text,
      required this.desc,
      required this.time,
      required this.follower1,
      required this.follower2});
}

List<Activity> activitylist = [
  Activity(
      emg: "assets/mecca.jpg",
      text: "Mahmood_Hasanat  and Omer Al_Udah.24",
      desc: " liked your story",
      time: "30min",
      follower1: "assets/mahmoo.jpg",
      follower2: "assets/omar.jpg"),
  Activity(
      emg: "assets/karzan.jpg",
      text: "Fahad Al_kandary  and  Ihsan._.",
      desc: "liked your comment",
      time: "1h",
      follower1: "assets/fahad.jpg",
      follower2: "assets/ihsan.jpg"),
  Activity(
      emg: "assets/niqab.jpg",
      text: "N4jwa.andalosy  and  Abdullah_Aljarallah",
      desc: "liked your post",
      time: "19h",
      follower1: "assets/najwa.jpg",
      follower2: "assets/abdullah.jpg"),
];

class Followers {
  String follower;
  String text;
  String time;

  Followers({
    required this.text,
    required this.time,
    required this.follower,
  });
}

List<Followers> followlist = [
  Followers(text: "Omer Al_Udah.24", time: "20h", follower: "assets/omar.jpg"),
  Followers(
    text: "Fahad Al_Kandary ",
    time: "23h",
    follower: "assets/fahad.jpg",
  ),
];
