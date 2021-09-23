import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionTile extends StatelessWidget {
  final Question question;

  const UserQuestionTile(this.question, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: ListTile(
          title: Text(question.title),
          subtitle: Text(question.description),
          trailing: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                color: Colors.orange,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
                color: Colors.red,
              )
            ],
          )),
    );
  }
}
