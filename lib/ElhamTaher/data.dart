class User{
String emg;
String follower1;
String follower2;
String text;
String desc;
String time;

User({required this.emg,required this.text,
 required this .desc , required this.time,required this. follower1,required this. follower2});
}
List<User>userlist=[
User(emg:"assets/najwa.jpg",text: "Omer al udah",desc:" liked your story",time: "1h",follower1: "assets/mahmoo.jpg",follower2: "assets/omar.jpg"),
User(emg:"assets/karzan.jpg",text: "Fahad al kanday and ihsan",desc:"started follow you",time:"30min",follower1: "assets/fahad.jpg",follower2: "assets/ihsan.jpg"),
User(emg:"assets/ihsan.jpg",text: "Najwa andalosy and karzan ",desc:"liked your comment",time: "5h",follower1: "assets/najwa.jpg",follower2: "assets/karzan.jpg"),

];

