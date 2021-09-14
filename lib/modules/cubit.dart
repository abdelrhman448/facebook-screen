import 'package:bloc/bloc.dart';
import 'package:facebook_screen/models/chat%20model.dart';
import 'package:facebook_screen/models/post_model.dart';
import 'package:facebook_screen/models/story_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit_states.dart';

class PostScreenCubit extends Cubit<CubitStates>{
  PostScreenCubit() : super(InitialState());

  static PostScreenCubit get(context)=>BlocProvider.of(context);
  int tabBarIndex=0;
  List<PostModel> posts=[
    PostModel(
      username: 'Ahmed Mohamed',
      time: '5h',
      text: 'Text messages are used for personal, family, business and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal',
      like: 20,
      profileImage: 'https://image.freepik.com/free-vector/elegant-birthday-background-with-realistic-podium_1361-3437.jpg',

    ),
    PostModel(
      username: 'Amira Ali',
      time: '3 d',
      text: 'Text messages are used for personal, family, business and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal',
      like: 40,
      profileImage: 'https://image.freepik.com/free-psd/stationery-dark-copper-mockup_23-2149052439.jpg',
      postPhoto: [
        'https://image.freepik.com/free-photo/close-up-hands-holding-pizza-slices_23-2149066098.jpg',
        'https://image.freepik.com/free-photo/athlete-ready-run-with-are-you-ready-message_23-2149074274.jpg',
        'https://image.freepik.com/free-photo/man-jumping-neon-are-you-ready-sign_23-2149074277.jpg'
      ],

    ),
    PostModel(
      username: 'Hassan Gamal',
      time: '2 h',
      text: 'Text messages are used for personal, family, business and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal',
      like: 28,
      profileImage: 'https://image.freepik.com/free-vector/gradient-abstract-background-design_23-2149066044.jpg',
      postPhoto: [

        'https://image.freepik.com/free-photo/man-jumping-neon-are-you-ready-sign_23-2149074277.jpg'
      ],

    ),
    PostModel(
      username: 'Ayman elaswany',
      time: '7 h',
      text: 'organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal',
      like: 20,
      profileImage: 'https://image.freepik.com/free-photo/white-child-room-interior-with-copy-space_43614-805.jpg',

    ),
  ];
  List<StoryModel>Stories=[
    StoryModel(
      storyImage: 'https://image.freepik.com/free-psd/instagram-glass-social-media-mockup-pink-abstract-background-feed-presentation-3d-render_360590-506.jpg',
      userImage: 'https://image.freepik.com/free-psd/creative-bold-text-effect_23-2149032950.jpg',
      userName: 'Ahmed Emad'
    ),
    StoryModel(
        storyImage: 'https://image.freepik.com/free-photo/golden-retriever_87557-13803.jpg',
        userImage: 'https://image.freepik.com/free-photo/cute-spitz_144627-7076.jpg',
        userName: 'shrouk tarek'
    ),
    StoryModel(
        storyImage: 'https://image.freepik.com/free-photo/delicious-chicken-table_144627-8760.jpg',
        userImage: 'https://image.freepik.com/free-photo/top-view-meals-tasty-yummy-different-pastries-dishes-brown-surface_140725-14554.jpg',
        userName: 'Ali Emad'
    ),
    StoryModel(
        storyImage: 'https://image.freepik.com/free-psd/instagram-glass-social-media-mockup-pink-abstract-background-feed-presentation-3d-render_360590-506.jpg',
        userImage: 'https://image.freepik.com/free-psd/creative-bold-text-effect_23-2149032950.jpg',
        userName: 'Ahmed Emad'
    ),
    StoryModel(
        storyImage: 'https://image.freepik.com/free-psd/instagram-glass-social-media-mockup-pink-abstract-background-feed-presentation-3d-render_360590-506.jpg',
        userImage: 'https://image.freepik.com/free-psd/creative-bold-text-effect_23-2149032950.jpg',
        userName: 'Ahmed Emad'
    ),
  ];
  List<ChatModel> chats=[
    ChatModel(
      name: 'Ali Mahomud',
      image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
    ChatModel(
        name: 'Ali Mahomud',
        image: 'https://cdn.pixabay.com/photo/2021/09/06/16/42/bird-6602049__340.jpg'
    ),
  ];
  //change app bar selected icon color
 void ChangeTabBarColor(int value){
   tabBarIndex=value;
  emit(changeTabBarColor());
 }


}