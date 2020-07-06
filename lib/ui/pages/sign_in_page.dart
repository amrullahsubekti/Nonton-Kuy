part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SafeArea(
          child: Center(
        child: RaisedButton(
            child: Text('Sign In'),
            onPressed: () {
              AuthServices.signIn('amrullah167@gmail.com', '123456');
            }),
      )),
    );
  }
}
