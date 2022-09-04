import 'package:flutter/material.dart';
import 'package:navigation_manager/pages/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text("DetailsPageNamed"),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/details', arguments: "Title Named");
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: '/details',
                      // arguments: "Title",
                    ),
                    builder: (context) =>
                        DetailsPage(param: "Param page route"),
                  ),
                );
              },
              child: const Text("DetailsPage"),
            ),
            TextButton(
              onPressed: () async {
                var message =
                    await Navigator.of(context).pushNamed('/details2');
                print("Mensagem recebida da pagina $message");
                if (message == false) {
                  print("falso");
                  Navigator.pushNamed(context, '/details3');
                }
              },
              child: const Text("Go details 2 and waiting"),
            ),
          ],
        ),
      ),
    );
  }
}
