class ChatModel{
  final String name;
   final String  avatarUrl;
   final String  time;
   final String messeges;
   final String status;
   ChatModel(this.name,this.avatarUrl,this.time,this.messeges,this.status);
}

List<ChatModel> dummyData =[
  ChatModel("Amit Kumar", "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&h=350", "10:20 AM", "How are you?","busy"),
  ChatModel("Manoj Kumar", "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&h=350", "8:01 PM", "Hello","Available"),
  ChatModel("Suraj Kumar", "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&h=350", "2:00 PM", "Kaise ho bhai","At Work"),
  ChatModel("Ram kumar", "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&h=350", "8:00 PM", "Flutter is Awesome","In a Meeting"),
  ChatModel("A K Das", "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&h=350", "5:00 PM", "i Cloned Whatsapp","At the Gym"),
  ChatModel("Sumit Singh", "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&h=350", "9:30 AM", "HELLO","Sleeping"),  
];