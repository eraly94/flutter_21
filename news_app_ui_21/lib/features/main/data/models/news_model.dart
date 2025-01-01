class NewsModel {
  final String image;
  final String date;
  final String description;
  NewsModel({
    required this.image,
    required this.date,
    required this.description,
  });
}

NewsModel news1 = NewsModel(
    image: 'assets/images/1.png',
    date: '1 Feb, 2020',
    description:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.');
NewsModel news2 = NewsModel(
    image: 'assets/images/2.png',
    date: '5/27/15',
    description:
        'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit');
NewsModel news3 = NewsModel(
    image: 'assets/images/3.png',
    date: '1/15/12',
    description:
        'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit');
NewsModel news4 = NewsModel(
    image: 'assets/images/4.png',
    date: '21 Sep, 2020',
    description:
        'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit');
NewsModel news5 = NewsModel(
    image: 'assets/images/5.png',
    date: '8 Sep, 2020',
    description:
        'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit');

final List<NewsModel> newsList = [news1, news2, news3, news4, news5];
