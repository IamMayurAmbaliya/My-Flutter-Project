import 'package:quotes_app/headers.dart';

Widget dialogueBox({required BuildContext context}) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          child: const Text("Simple Dialogue"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: const Text("Simple Dialogue"),
                //
                children: [
                  RadioListTile(
                    value: "Male",
                    groupValue: "Male",
                    onChanged: (val) {},
                    title: const Text("Male"),
                  ),
                  RadioListTile(
                    value: "Female",
                    groupValue: "Female",
                    onChanged: (val) {},
                    title: const Text("Female"),
                  ),
                ],
              ),
            );
          },
        ),
        ElevatedButton(
          child: const Text("Alert Dialogue"),
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Alert Dialogue"),
                content: const Text("ARE YOU SURE TO EXIT???"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Yes"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("No"),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    ),
  );
}
