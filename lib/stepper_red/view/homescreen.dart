import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_red_ui/stepper_red/provider/stepper_provider.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  Stepper_provider? Stepper_providerTrue;
  Stepper_provider? Stepper_providerFalse;

  @override
  Widget build(BuildContext context) {
    Stepper_providerTrue = Provider.of<Stepper_provider>(context, listen: true);
    Stepper_providerFalse =
        Provider.of<Stepper_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Stepper App",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Theme(
          data: ThemeData(
            primarySwatch: Colors.red,
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: Colors.red,
                ),
          ),
          child: Stepper(
            type: StepperType.vertical,
            onStepTapped: (index) {
              Stepper_providerFalse!.stepper_value(index);
            },
            steps: [
              Step(
                isActive: true,
                title: Text(
                  "SignUp",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        prefix: Icon(
                          Icons.person_outline,
                          color: Colors.black54,
                        ),
                        hintText: "Full Name*",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefix: Icon(
                          Icons.email_outlined,
                          color: Colors.black54,
                        ),
                        hintText: "Email Id",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefix: Icon(
                          Icons.lock_outline,
                          color: Colors.black54,
                        ),
                        hintText: "Password*",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefix: Icon(
                          Icons.lock_outline,
                          color: Colors.black54,
                        ),
                        hintText: "Conform Password*",
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                isActive: true,
                title: Text(
                  "SignUp",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        prefix: Icon(
                          Icons.person_outline,
                          color: Colors.black54,
                        ),
                        hintText: "User Name*",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefix: Icon(
                          Icons.lock_outline,
                          color: Colors.black54,
                        ),
                        hintText: "Password*",
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                isActive: true,
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: [],
                ),
              ),
            ],
            currentStep: Stepper_providerTrue!.i,
            onStepCancel: () {
              Stepper_providerFalse!.Back();
            },
            onStepContinue: () {
              Stepper_providerFalse!.Next();
            },
          ),
        ),
      ),
    );
  }
}
