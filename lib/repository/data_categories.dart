import 'package:news_app/model/category.dart';

List<Category> getCategories(){
  List<Category> categoris = [
    Category(
        categoryName: 'Bussiness',
        imgUrl: 'https://media.istockphoto.com/photos/large-group-of-business-people-in-convention-centre-picture-id1281724535?b=1&k=20&m=1281724535&s=170667a&w=0&h=RV0k68y2VPMDnP6QlW_7kErXhbLcqjYVgNmwc3kMMLo='
    ),

    Category(
        categoryName: 'Entertainment',
        imgUrl: 'https://images.unsplash.com/photo-1510511233900-1982d92bd835?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
    ),

    Category(
        categoryName: 'General',
        imgUrl: 'https://images.unsplash.com/photo-1494059980473-813e73ee784b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Z2VuZXJhbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
    ),

    Category(
        categoryName: 'Health',
        imgUrl: 'https://media.istockphoto.com/photos/medical-technology-concept-remote-medicine-electronic-medical-record-picture-id1300745916?b=1&k=20&m=1300745916&s=170667a&w=0&h=-LDFI4ofMSQ5tv_s7zq7BSGovtztl_38g7olQzV5p74='
    ),

    Category(
        categoryName: 'Science',
        imgUrl: 'https://images.unsplash.com/photo-1518152006812-edab29b069ac?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNjaWVuY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
    ),

    Category(
        categoryName: 'Sports',
        imgUrl: 'https://media.istockphoto.com/photos/various-sport-equipments-on-grass-picture-id949190736?b=1&k=20&m=949190736&s=170667a&w=0&h=f3ofVqhbmg2XSVOa3dqmvGtHc4VLA_rtbboRGaC8eNo='
    ),

    Category(
        categoryName: 'Technology',
        imgUrl: 'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dGVjaG5vbG9neXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
    ),

  ];

  return categoris;
}
