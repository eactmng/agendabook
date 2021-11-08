import 'package:agendabook/app/controller/user/agenda/user_agenda_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';
import 'package:agendabook/app/ui/widgets/image/image_container.dart';
import 'package:agendabook/app/ui/widgets/button/last_list_btn.dart';
import 'package:agendabook/app/ui/widgets/etc/loading_widget.dart';
import 'package:agendabook/app/ui/widgets/box/round_box.dart';


class UserAgendaList extends StatelessWidget {

  final String type;

  UserAgendaList({Key? key, required this.type}) : super(key: key);

  final UserAgendaListController c = Get.put(UserAgendaListController());

  @override
  Widget build(BuildContext context) {

    return Container(child: GetBuilder<UserAgendaListController>(builder: (_) {
      return ListView.separated(
        controller: c.scrollController,
        itemBuilder: (_, index) {
          if (index < c.postList.length) {
            // 값이 있는 경우
            if (type == "type1") {
              return Container(
                child: Column(
                  children: [
                    _buildTop(index),
                    _buildWriting(index),
                    _buildType(index),
                    _buildWriter(index),
                    _buildImage(index),
                    // Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    _buildTail(index),
                  ],
                ),
              );
            } else {
              return Container(
                // child: Column(
                //   children: [
                //     _buildTop(index),
                //     _buildWriting(index),
                //     _buildType(index),
                //     _buildWriter(index),
                //
                //     _buildTail(index),
                //   ],
                // ),
              );
            }
          } else {
            // 값이 없는 경우
            if (c.hasMore || c.isLoading) {
              // 리스트의 끝이 아닌 경우
              return LoadingWidget();
            } else {
              // 리스트의 끝인 경우
              return LastListBtn(onPressed: () {
                c.reload();
              });
            }
          }
        },
        separatorBuilder: (_, index) => Divider(
          height: 1,
          thickness: 1,
          color: Colors.grey[300],
        ),
        itemCount: c.postList.length + 1,
      );
    }));
  }

  Padding _buildTop(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(children: [
              Icon(
                FontAwesomeIcons.comment,
                color: fTextColor,
                size: 22,
              ),
              SizedBox(width: 3),
              Container(
                padding: EdgeInsets.all(4),
                child: Text(c.postList[index].category,
                    style: textTheme().bodyText1!.copyWith(fontWeight: FontWeight.bold)),
              ),
            ]),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(children: [
                  Text(
                    "${c.postList[index].commentCount}",
                    style: textTheme().bodyText2!.copyWith(height: 1.5),
                  ),
                  SizedBox(width: 3),
                  Icon(
                    FontAwesomeIcons.arrowCircleUp,
                    color: fPrimaryColor,
                    size: 16,
                  ),
                ]),
                Row(children: [
                  Text(
                    "${c.postList[index].authCount}",
                    style: textTheme().bodyText2!.copyWith(height: 1.5),
                  ),
                  SizedBox(width: 3),
                  Icon(
                    FontAwesomeIcons.arrowCircleDown,
                    color: Colors.blue,
                    size: 16,
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildWriting(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          c.postList[index].content,
          style: textTheme().bodyText2!.copyWith(height: 1.5),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Padding _buildType(index) {
    return Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 10, left: 40, right: 24),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: List.generate(
                  c.postList[index].type.length,
                      (i) => RoundBox(
                    title: c.postList[index].type[i],
                  ),
                ),
              ),
            ],
          ),
          Text(
            c.postList[index].date,
            style: textTheme().bodyText1!.copyWith(fontSize: 12.0),
          ),
        ]));
  }

  Padding _buildWriter(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextButton.icon(
                icon: ImageContainer(
                  width: 40,
                  height: 40,
                  borderRadius: 20,
                  imageUrl: c.postList[index].profileImgUri,
                ),
                style: TextButton.styleFrom(primary: fTextColor),
                label: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    '${c.postList[index].userName}',
                    style: textTheme().subtitle2,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: "following ", style: textTheme().bodyText2!.copyWith(fontSize: 12, height: 1.5)),
                        TextSpan(
                            text: "234",
                            style: textTheme().bodyText2!.copyWith(fontSize: 12, fontWeight: FontWeight.bold)),
                        TextSpan(text: " follower ", style: textTheme().bodyText2!.copyWith(fontSize: 12, height: 1.5)),
                        TextSpan(
                            text: "1234",
                            style: textTheme().bodyText2!.copyWith(fontSize: 12, fontWeight: FontWeight.bold))
                      ],
                    ),
                  )
                ]),
                onPressed: () {
                  print('Writer button is clicked');
                },
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(children: [
                  Text(
                    "123,523",
                    style: textTheme().bodyText2!.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 3),
                  Icon(
                    Icons.remove_red_eye_outlined,
                    color: fTextColor,
                    size: 20,
                  ),
                ]),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: '피드백 '.tr, style: textTheme().bodyText2!.copyWith(fontSize: 12, height: 1.5)),
                      TextSpan(
                          text: '342',
                          style: textTheme().bodyText2!.copyWith(fontSize: 12, fontWeight: FontWeight.bold))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Visibility _buildImage(index) {
    return Visibility(
      visible: c.postList[index].contentImgUri != '',
      child: Padding(
        //padding: EdgeInsets.only(left: 16, right: 16),
        padding: EdgeInsets.zero,
        child: Image.network(
          c.postList[index].contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding _buildTail(index) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(children: [
            TextButton.icon(
              icon: Icon(Icons.push_pin_outlined, size: 20),
              style: TextButton.styleFrom(primary: fTextColor),
              label: Text(
                "pick",
                style: textTheme().bodyText2,
              ),
              onPressed: () {
                print('pick button is clicked');
              },
            )
          ]),
          Row(children: [
            TextButton.icon(
              icon: Icon(Icons.comment_outlined, size: 20),
              style: TextButton.styleFrom(primary: fTextColor),
              label: Text(
                "${c.postList[index].commentCount}",
                style: textTheme().bodyText2,
              ),
              onPressed: () {
                print('comment button is clicked');
              },
            )
          ]),
          Row(children: [
            TextButton.icon(
              icon: Icon(FontAwesomeIcons.heart, size: 16),
              style: TextButton.styleFrom(primary: fTextColor),
              label: Text(
                "${c.postList[index].authCount}",
                style: textTheme().bodyText2,
              ),
              onPressed: () {
                print('heart button is clicked');
              },
            )
          ]),
          Row(children: [
            TextButton.icon(
              icon: Icon(FontAwesomeIcons.smile, size: 16),
              style: TextButton.styleFrom(primary: fTextColor),
              label: Text(
                "${c.postList[index].authCount}",
                style: textTheme().bodyText2,
              ),
              onPressed: () {
                print('user button is clicked');
              },
            )
          ]),
          Row(children: [
            TextButton.icon(
              icon: Icon(Icons.share_outlined, size: 20),
              style: TextButton.styleFrom(primary: fTextColor),
              label: Text(
                "shere",
                style: textTheme().bodyText2,
              ),
              onPressed: () {
                print('pick button is clicked');
              },
            )
          ]),
        ],
      ),
    );
  }
}
