import 'package:flutter/material.dart';
import 'package:woff/pages/profile/common/for_profile.dart';

import '../widgets/Commons.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        title: TextField(
          decoration: InputDecoration(
              hintText: "Find friends...",
              hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.5),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.qr_code_scanner_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  /* Clear the search field */
                },
              ),
              border: InputBorder.none),
        ),
        centerTitle: true,
        backgroundColor: Colors.black.withOpacity(0.3),
        leading: const Icon(
          Icons.person_add_alt_1_outlined,
          color: Colors.white,
          size: 25,
        ),
        actions: const [Icon(Icons.info_outline)],
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Container(
          color: Colors.black,
          width: size.width,
          height: size.height,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return SizedBox(
                width: size.width,
                height: 60,
                child: ListTile(
                  subtitle: Texts(
                      text: "tiktok from your contacts",
                      color: Colors.white.withOpacity(0.5)),
                  trailing: SizedBox(
                    width: size.width * 0.26,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          style: styleButton(Colors.red),
                          onPressed: () {},
                          child: const Texts(
                              text: "Follow",
                              color: Color.fromARGB(255, 37, 16, 16)),
                        ),
                        const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://t4.ftcdn.net/jpg/01/15/85/23/240_F_115852367_E6iIYA8OxHDmRhjw7kOq4uYe4t440f14.jpg"),
                  ),
                  title: const Texts(
                    text: "username",
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
