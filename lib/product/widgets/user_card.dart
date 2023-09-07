import 'package:flutter/material.dart';
import 'package:task2/product/widgets/users.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.userList,
  });

  final List<Users> userList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) => Card(
                  elevation: 10,
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    height: 185,
                    padding: const EdgeInsets.all(8),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            '${userList[index].photoUrl}',
                            width: 170,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '${userList[index].fullname}',
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      '${userList[index].department}',
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                  Text(
                                    '${userList[index].ability}',
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                  ),
                )));
  }
}
