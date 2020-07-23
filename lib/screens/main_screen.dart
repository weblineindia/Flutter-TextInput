import 'package:custom_textinput/screens/widgets/custom_text_input.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _paymentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Custom TextInput',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Image.asset(
                  'assets/image/logo.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              CustomTextInput(
                textEditController: _nameController,
                hintTextString: 'Enter User name',
                inputType: InputType.Default,
                enableBorder: true,
                themeColor: Theme.of(context).primaryColor,
                cornerRadius: 48.0,
                maxLength: 24,
                prefixIcon: Icon(Icons.person, color: Theme.of(context).primaryColor),
                textColor: Colors.black,
                errorMessage: 'User name cannot be empty',
                labelText: 'User Name',
              ),
              CustomTextInput(
                textEditController: _emailController,
                hintTextString: 'Enter Email',
                inputType: InputType.Email,
                enableBorder: true,
                cornerRadius: 48.0,
                maxLength: 24,
              ),
              CustomTextInput(
                textEditController: _passwordController,
                hintTextString: 'Enter Password',
                inputType: InputType.Password,
                enableBorder: true,
                cornerRadius: 48.0,
                maxLength: 16,
                prefixIcon: Icon(Icons.lock, color: Theme.of(context).primaryColor),
              ),
              CustomTextInput(
                textEditController: _phoneController,
                hintTextString: 'Enter Number',
                inputType: InputType.Number,
                enableBorder: true,
                cornerRadius: 48.0,
                maxLength: 10,
              ),
              CustomTextInput(
                textEditController: _paymentController,
                hintTextString: 'Enter Card Number',
                inputType: InputType.PaymentCard,
                enableBorder: true,
                cornerRadius: 48.0,
                maxLength: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(16),
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 253, 188, 51),
                  borderRadius: BorderRadius.circular(36),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
