import 'dart:collection';

import 'package:flutter/material.dart';

List<String> scheduleTitles = ["듀듀듀"];
List<String> scheduleContents = ["탄핵하라"];

class ScheduleList extends StatefulWidget {
  const ScheduleList({super.key});

  @override
  State<ScheduleList> createState() => _ScheduleListState();
}

class _ScheduleListState extends State<ScheduleList> {
  @override
  var inputData1 = TextEditingController();
  var inputData2 = TextEditingController();
  String inputTitle = "null";
  String inputContent = "null";

  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("일정등록"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: inputData1,
                        decoration: InputDecoration(hintText: "제목 입력하세요"),
                      ),
                      TextField(
                        controller: inputData2,
                        decoration: InputDecoration(hintText: "내용 입력하세요"),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(onPressed: (){Navigator.pop(context);}, child: Text("취소")),
                    TextButton(onPressed: (){
                      inputTitle = inputData1.text.isNotEmpty ? inputData1.text : inputTitle;
                      inputContent = inputData2.text.isNotEmpty ? inputData2.text : inputContent;
                      setState(() {
                        scheduleTitles.add(inputTitle);
                        scheduleContents.add(inputContent);
                        inputData1.clear();
                        inputData2.clear();
                      });
                      Navigator.pop(context);}, child: Text("확인"))
                  ],
                );
              });
            },
            child: Text("버튼")),
      body:
      ListView.builder(
          itemCount: scheduleTitles.length,
          itemBuilder: (context, i){
            return ListTile(
                leading: Text((i+1).toString()),
                title: Text("${scheduleTitles[i]}"),
                onTap: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text(scheduleTitles[i]),
                      content: Text(scheduleContents[i]),
                      actions: [TextButton(onPressed: (){Navigator.pop(context);}, child: Text("닫기"))],
                    );
                  });
                },
                trailing: ElevatedButton(onPressed: (){
                  setState(() {
                    scheduleTitles.remove(scheduleTitles[i]);
                    scheduleContents.remove(scheduleContents[i]);
                  });
                }, child: Text("삭제"))
            );
          })
    );
  }
}


