import 'package:animate_routes/src/transition_dialog.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math.dart' as math;

// ignore: camel_case_extensions
extension navigationHelper on BuildContext {

  /// go to an other screen
  go(Route route) {
    Navigator.of(this).push(route);
  }

/// back to 
  back() {
    Navigator.of(this).pop();
  }

  // offUntil(Route route){
  //   Navigator.of(this).popUntil((route) => true);
  // }

  /// close all the route and open one
  offAll(Route route) {
    Navigator.of(this).pushReplacement(route);
  }
/// open dialog with just lines of code 
/// dialog take a few optional params and TransitionDialog type
  Future openDialog({TransitionDialog? transition}) async {
    switch (transition) {
      
      case TransitionDialog.rotate:
        return showGeneralDialog<void>(
          context: this,
          pageBuilder: (ctx, a1, a2) {
            return Container();
          },
          transitionBuilder: (ctx, a1, a2, child) {
            return Transform.rotate(
              angle: math.radians(a1.value * 360),
              child: _dialog(ctx),
            );
          },
          transitionDuration: const Duration(milliseconds: 400),
        );
      case TransitionDialog.scale:
        return showGeneralDialog<void>(
          context: this,
          pageBuilder: (ctx, a1, a2) {
            return Container();
          },
          transitionBuilder: (ctx, a1, a2, child) {
            var curve = Curves.easeInOut.transform(a1.value);
            return Transform.scale(
              scale: curve,
              child: _dialog(ctx),
            );
          },
          transitionDuration: const Duration(milliseconds: 400),
        );
      case TransitionDialog.right:
       return showGeneralDialog<void>(
          context: this,
          pageBuilder: (ctx, a1, a2) {
            return Container();
          },
          transitionDuration: const Duration(milliseconds: 400),
          transitionBuilder: (ctx, a1, a2, child) {
          return SlideTransition(
            transformHitTests: false,
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.bounceIn)).animate(a1),
            child: _dialog(ctx),
          );
          },
       );
       case TransitionDialog.left:
       return showGeneralDialog<void>(
          context: this,
          pageBuilder: (ctx, a1, a2) {
            return Container();
          },
          transitionDuration: const Duration(milliseconds: 400),
          transitionBuilder: (ctx, a1, a2, child) {
          return SlideTransition(
            transformHitTests: false,
            position: Tween<Offset>(
              begin: const Offset(-1.0, 0.0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.bounceIn)).animate(a1),
            child: _dialog(ctx),
          );
          },
       );
      
       case TransitionDialog.downToUp:
       return showGeneralDialog<void>(
          context: this,
          pageBuilder: (ctx, a1, a2) {
            return Container();
          },
          transitionDuration: const Duration(milliseconds: 400),
          transitionBuilder: (ctx, a1, a2, child) {
          return SlideTransition(
            transformHitTests: false,
            position: Tween<Offset>(
              begin: const Offset(0.0, 1.0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.bounceIn)).animate(a1),
            child: _dialog(ctx),
          );
          },
       );
       case TransitionDialog.topToDown:
       return showGeneralDialog<void>(
          context: this,
          pageBuilder: (ctx, a1, a2) {
            return Container();
          },
          transitionDuration: const Duration(milliseconds: 400),
          transitionBuilder: (ctx, a1, a2, child) {
          return SlideTransition(
            transformHitTests: false,
            position: Tween<Offset>(
              begin: const Offset(0.0, -1.0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.bounceIn)).animate(a1),
            child: _dialog(ctx),
          );
          },
       );
      
      default :
      return showDialog<void>(
          context: this,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('AlertDialog Title'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('This is a demo alert dialog.'),
                    Text('Would you like to approve of this message?'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Approve'),
                  onPressed: ()=>back(),
                  
                ),
              ],
            );
          },
        );

    }
  }
}

/// main widget to open a dilog
Widget _dialog(BuildContext context) {
  return AlertDialog(
    title: const Text("Dialog title"),
    content: const Text("Simple Dialog content"),
    actions: <Widget>[
      TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Okay"))
    ],
  );
}
