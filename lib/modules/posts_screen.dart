
import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook_screen/models/post_model.dart';
import 'package:facebook_screen/models/story_model.dart';
import 'package:facebook_screen/shared/items.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';
import 'cubit_states.dart';


class FeedBack extends StatelessWidget {
  List<int>? images = [];



  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context)=>PostScreenCubit(),
      child: BlocConsumer<PostScreenCubit,CubitStates>(
        listener: (context,state){

        },
        builder:  (context,state){
          return DefaultTabController(
            initialIndex: PostScreenCubit.get(context).tabBarIndex,
            length: 6,
            child: Scaffold(
              backgroundColor: Colors.grey.shade200,
              appBar: AppBar(
                shape: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                bottom: TabBar(


                  onTap: (value){
                    PostScreenCubit.get(context).ChangeTabBarColor(value);
                  },
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.home,
                        color: PostScreenCubit.get(context).tabBarIndex==0?Colors.blue:Colors.grey,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.group_work_sharp,
                        color: PostScreenCubit.get(context).tabBarIndex==1?Colors.blue:Colors.grey,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.ondemand_video_outlined,
                        color: PostScreenCubit.get(context).tabBarIndex==2?Colors.blue:Colors.grey,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.account_balance_sharp,
                        color: PostScreenCubit.get(context).tabBarIndex==3?Colors.blue:Colors.grey,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.notifications,
                        color: PostScreenCubit.get(context).tabBarIndex==4?Colors.blue:Colors.grey,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.menu,
                        color: PostScreenCubit.get(context).tabBarIndex==5?Colors.blue:Colors.grey,
                      ),
                    ),
                  ],

                ),
                backgroundColor: Colors.white,
                elevation: 0,
                title: Text(
                  'Facebook',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image(
                      height: 25,
                      width: 25,
                      image: AssetImage('images/massenger.png'),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              body: SingleChildScrollView(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 26,
                                    backgroundColor: Colors.grey,
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage: NetworkImage(
                                          'https://image.freepik.com/free-vector/hand-drawn-halloween-pumpkin-illustration_23-2149063400.jpg'),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Expanded(
                                    child: Container(
                                      height: 40,
                                      child: TextFormField(

                                        decoration: InputDecoration(
                                          hintText: "What's on your mind?",
                                          contentPadding: EdgeInsets.only(left: 16,top: 4),
                                          focusColor: Colors.grey,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(25)
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 3,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      IntrinsicHeight(
                        child: Container(
                          color: Colors.white,
                          height: 40,
                          child: Row(

                            children: [
                              Expanded(
                                child: Container(

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.switch_video,
                                        color: Colors.red,
                                      ),
                                      SizedBox(width: 4,),
                                      Text('Live'),
                                    ],
                                  ),

                                ),
                              ),
                              Container(
                                height: 18,
                                width: 1,
                                color: Colors.grey.shade900,
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.photo_library_outlined,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 4,),
                                      Text('Photos'),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 18,
                                width: 1,
                                color: Colors.grey.shade900,
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.video_call,
                                        color: Colors.purple,
                                      ),
                                      SizedBox(width: 4,),
                                      Text('Room'),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        height: 200,
                        color: Colors.white,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index)=>Padding(
                            padding: const EdgeInsets.only(top:8.0,bottom: 8,),
                            child: storyItem(context,PostScreenCubit.get(context).Stories[index]),
                          ),
                          separatorBuilder: (context,index)=>SizedBox(width: 4,),
                          itemCount: PostScreenCubit.get(context).Stories.length,
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),

                          itemBuilder: (context, index) => myPostItem(context,PostScreenCubit.get(context).posts[index]),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 8,
                          ),
                          itemCount: PostScreenCubit.get(context).posts.length,
                        ),
                      ),

                    ],

                  ),
                ),
              ),

          );
        },

      ),
    );
  }

  // post item

}
