import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: 365,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://wallpapercave.com/wp/wp3831632.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cosmic Convo',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.image_search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: ListView()),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        fillColor: Colors.white.withOpacity(0.5),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 81, 70, 101),
                      child: Center(
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
