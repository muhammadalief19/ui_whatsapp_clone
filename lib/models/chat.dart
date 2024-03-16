class Chat {
  String image;
  String name;
  String messageDate;
  String mostRecentMessage;
  Chat({
    required this.image,
    required this.name,
    required this.messageDate,
    required this.mostRecentMessage,
  });
}

var chatList = [
  Chat(
      name: 'YOGA AJEM KATE',
      image:
          'https://user-images.githubusercontent.com/75456232/211172515-f84140b8-02cb-42db-b7a1-c2775ec4af02.png',
      messageDate: '07/11/2023',
      mostRecentMessage: 'info mokel?'),
  Chat(
      name: 'Ais TI',
      image:
          'https://user-images.githubusercontent.com/75456232/211172543-bfda6e09-dae1-432a-88da-a85957a92da3.png',
      messageDate: '07/11/2023',
      mostRecentMessage: 'Mak Dam kuyyy'),
  Chat(
      name: 'Nanda',
      image:
          'https://user-images.githubusercontent.com/75456232/211172564-dbece7fd-f4ab-4dd2-8444-0d0e97c02216.png',
      messageDate: '07/11/2023',
      mostRecentMessage: 'P, nongki'),
];
