import 'package:flutter/material.dart';

import '../constants.dart';

class ContactBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.all(60),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Contact Me',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          const SizedBox(height: 20,),
          Form(
            child: Wrap(
              spacing: 20 * 2.5,
              runSpacing: 20 * 1.5,
              children: [
                SizedBox(
                  width: 470,
                  child: TextFormField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      labelText: "Your Name",
                      hintText: "Enter Your Name",
                    ),
                  ),
                ),
                SizedBox(
                  width: 470,
                  child: TextFormField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      labelText: "Email Address",
                      hintText: "Enter your email address",
                    ),
                  ),
                ),
                SizedBox(
                  child: TextFormField(
                    minLines: 3,
                    maxLines: 6,
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      labelText: "Description",
                      hintText: "Write some description",
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 30,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kSymbolColor,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Contact Me',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
