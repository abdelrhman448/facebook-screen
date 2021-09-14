
import 'package:facebook_screen/modules/cubit.dart';
import 'package:facebook_screen/modules/cubit_states.dart';
import 'package:facebook_screen/shared/items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class FacebookWeb extends StatelessWidget {
  ScrollController _rrectController = ScrollController();
  ScrollController _rrectController2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostScreenCubit(),
      child: BlocConsumer<PostScreenCubit, CubitStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return DefaultTabController(
            length: 6,
            initialIndex: PostScreenCubit.get(context).tabBarIndex,
            child: Scaffold(
              backgroundColor: Colors.grey.shade200,
              body: Column(children: [
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(0),
                  child: Row(children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,
                              child: Icon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.white,
                              ),
                            ),
                            if (MediaQuery.of(context).size.width > 1250)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 40,
                                  width: 200,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey.shade300,
                                      contentPadding: EdgeInsets.all(5),
                                      hintText: 'Search Facebook',
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.grey,
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            if (MediaQuery.of(context).size.width <= 1250)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey.shade100,
                                      contentPadding: EdgeInsets.all(5),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.grey,
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          borderSide: BorderSide(
                                              color: Colors.red)),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TabBar(
                          onTap: (value) {
                            PostScreenCubit.get(context)
                                .ChangeTabBarColor(value);
                          },
                          tabs: [
                            Tab(
                              icon: Icon(Icons.home,
                                  color: PostScreenCubit.get(context)
                                              .tabBarIndex ==
                                          0
                                      ? Colors.blue
                                      : Colors.grey.shade900),
                            ),
                            Tab(
                              icon: Icon(Icons.group,
                                  color: PostScreenCubit.get(context)
                                              .tabBarIndex ==
                                          1
                                      ? Colors.blue
                                      : Colors.grey.shade900),
                            ),
                            Tab(
                              icon: Icon(Icons.ondemand_video,
                                  color: PostScreenCubit.get(context)
                                              .tabBarIndex ==
                                          2
                                      ? Colors.blue
                                      : Colors.grey.shade900),
                            ),
                            Tab(
                              icon: Icon(Icons.account_balance_sharp,
                                  color: PostScreenCubit.get(context)
                                              .tabBarIndex ==
                                          3
                                      ? Colors.blue
                                      : Colors.grey.shade900),
                            ),
                            Tab(
                              icon: Icon(Icons.notifications,
                                  color: PostScreenCubit.get(context)
                                              .tabBarIndex ==
                                          4
                                      ? Colors.blue
                                      : Colors.grey.shade900),
                            ),
                            Tab(
                              icon: Icon(Icons.menu,
                                  color: PostScreenCubit.get(context)
                                              .tabBarIndex ==
                                          5
                                      ? Colors.blue
                                      : Colors.grey.shade900),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://static.remove.bg/remove-bg-web/97e23b9bea3ef10227bf2e0bed160d3a30f93253/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg'),
                                  ),
                                ),
                                Expanded(
                                    child: Text(
                                  'abdo',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )),
                              ],
                            ),
                          ),
                          Expanded(
                            child: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                )),
                          ),
                          Expanded(
                            child: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.black,
                                )),
                          ),
                          Expanded(
                            child: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                child: Icon(
                                  Icons.messenger_outline,
                                  color: Colors.black,
                                )),
                          ),
                          Expanded(
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              child: Icon(
                                Icons.apps_sharp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),

                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if(MediaQuery.of(context).size.width>1000)
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left:16.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height-76,
                              child: Scrollbar(
                                thickness: 10,

                                isAlwaysShown: true,
                                controller: _rrectController,
                                child: ListView(
                                  controller: _rrectController,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(

                                              backgroundImage: NetworkImage(
                                                  'https://static.remove.bg/remove-bg-web/97e23b9bea3ef10227bf2e0bed160d3a30f93253/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg'),
                                              radius: 18,
                                            ),
                                            SizedBox(width: 8,),
                                            Text(
                                              'abdo mostafa',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            Icon(Icons.people,size: 35,color: Colors.blueAccent,),
                                            SizedBox(width: 8,),
                                            Text(
                                              'Friends',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            Icon(Icons.flag,size: 35,color: Colors.deepOrange,),
                                            SizedBox(width: 8,),
                                            Text(
                                              'Groups',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            Icon(Icons.group_work_sharp,size: 35,color: Colors.blueAccent,),
                                            SizedBox(width: 8,),
                                            Text(
                                              'Groups',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            Icon(Icons.account_balance,size: 35,color: Colors.blueAccent,),
                                            SizedBox(width: 8,),
                                            Text(
                                              'Market Place',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            Icon(Icons.ondemand_video,size: 35,color: Colors.blueAccent,),
                                            SizedBox(width: 8,),
                                            Text(
                                              'Friends',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.grey[500],
                                                child: Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(width: 8,),
                                            Text(
                                              'See More',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Divider(
                                          color: Colors.grey.shade400,
                                          height: 1,
                                          thickness: 2,
                                        ),
                                        SizedBox(height: 16,),
                                        Text(
                                          'Your Shortcut',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.grey[500],
                                                child: Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(width: 8,),
                                            Text(
                                              'See More',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.grey[500],
                                                child: Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(width: 8,),
                                            Text(
                                              'See More',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.grey[500],
                                                child: Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(width: 8,),
                                            Text(
                                              'See More',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.grey[500],
                                                child: Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(width: 8,),
                                            Text(
                                              'See More',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.grey[500],
                                                child: Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(width: 8,),
                                            Text(
                                              'See More',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.grey[500],
                                                child: Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(width: 8,),
                                            Text(
                                              'See More',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.grey[500],
                                                child: Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(width: 8,),
                                            Text(
                                              'See More',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.grey[500],
                                                child: Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(width: 8,),
                                            Text(
                                              'See More',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.grey[500],
                                                child: Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(width: 8,),
                                            Text(
                                              'See More',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),



                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: MediaQuery.of(context).size.height-76,
                            child: ListView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 70),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            height: 200,
                                            child: ListView.separated(
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) =>
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      top: 8.0,
                                                      bottom: 8,
                                                    ),
                                                    child: storyItem(
                                                        context,
                                                        PostScreenCubit.get(context)
                                                            .Stories[index]),
                                                  ),
                                              separatorBuilder:
                                                  (context, index) => SizedBox(
                                                width: 4,
                                              ),
                                              itemCount:
                                              PostScreenCubit.get(context)
                                                  .Stories
                                                  .length,
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 20,
                                                            backgroundColor:
                                                            Colors.grey,
                                                            child: CircleAvatar(
                                                              radius: 25,
                                                              backgroundImage:
                                                              NetworkImage(
                                                                  'https://image.freepik.com/free-vector/hand-drawn-halloween-pumpkin-illustration_23-2149063400.jpg'),
                                                              backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              height: 40,
                                                              child:
                                                              TextFormField(
                                                                decoration:
                                                                InputDecoration(
                                                                  hintText:
                                                                  "What's on your mind?",
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  contentPadding:
                                                                  EdgeInsets.only(
                                                                      left:
                                                                      16,
                                                                      top: 4),
                                                                  focusColor:
                                                                  Colors.grey,
                                                                  border: OutlineInputBorder(
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .grey
                                                                              .shade100),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          25)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    height: 3,
                                                    color: Colors.grey.shade600,
                                                  ),
                                                  Container(
                                                    height: 40,
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .switch_video,
                                                                  color:
                                                                  Colors.red,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text('Live'),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .photo_library_outlined,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text('Photos'),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .video_call,
                                                                  color: Colors
                                                                      .purple,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text('Room'),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        child: ListView.separated(
                                          shrinkWrap: true,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) =>
                                              myPostItem(
                                                  context,
                                                  PostScreenCubit.get(context)
                                                      .posts[index]),
                                          separatorBuilder: (context, index) =>
                                              SizedBox(
                                                height: 8,
                                              ),
                                          itemCount: PostScreenCubit.get(context)
                                              .posts
                                              .length,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: MediaQuery.of(context).size.height-76,
                            child: Scrollbar(
                              thickness: 10,

                              isAlwaysShown: true,
                              controller: _rrectController2,
                              child: ListView(
                                controller: _rrectController2,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Your Pages',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                  ),
                                                ),
                                                Spacer(),
                                                GestureDetector(onTap: (){},child: Icon(Icons.more_horiz,color: Colors.grey.shade900,))
                                              ],
                                            ),
                                            SizedBox(height: 16,),
                                            Row(
                                              children: [
                                               CircleAvatar(
                                                 radius: 20,
                                                 backgroundImage:NetworkImage('https://c8.alamy.com/comp/2BHG705/colourful-conceptual-images-2BHG705.jpg'),
                                               ),
                                                SizedBox(width: 8,),
                                                Text(
                                                  'My group',
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 16,),
                                            Row(
                                              children: [
                                                Icon(Icons.notifications,size: 35,color: Colors.grey,),
                                                SizedBox(width: 8,),
                                                Text(
                                                  '2 Notifications',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade600
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 16,),
                                            Row(
                                              children: [
                                                Icon(Icons.campaign,size: 35,color: Colors.grey,),
                                                SizedBox(width: 8,),
                                                Text(
                                                  'Create Promotions',
                                                  style: TextStyle(
                                                      color: Colors.grey.shade600
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 16,),
                                            Divider(
                                              color: Colors.grey.shade500,
                                              height: 1,
                                              thickness: 1,
                                            ),
                                            SizedBox(height: 16,),
                                            Row(
                                              children: [
                                                Text(
                                                  'Contacts',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontSize: 20
                                                  ),
                                                ),
                                                Spacer(),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                      icon: Icon(Icons.video_call,color: Colors.grey.shade600,),
                                                      onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.search,color: Colors.grey.shade600,),
                                                      onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.more_horiz,color: Colors.grey.shade600,),
                                                      onPressed: (){},
                                                    ),


                                                  ],
                                                ),


                                              ],
                                            ),
                                            SizedBox(height: 16,),
                                            Container(
                                              child: ListView.separated(
                                                physics: NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemBuilder: (context,index)=>chatItem(context, PostScreenCubit.get(context).chats[index]),
                                                separatorBuilder: (context,index)=>SizedBox(height: 16,),
                                                itemCount: PostScreenCubit.get(context).chats.length ,

                                              ),
                                            ),




                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
