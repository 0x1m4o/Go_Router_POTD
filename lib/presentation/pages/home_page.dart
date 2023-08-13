// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

// Import Go Router Package
import 'package:go_router/go_router.dart';

// Import the PageName
import 'package:go_router_potd/presentation/routes/pages_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Go Router by D\'Code',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.grey.shade400,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          child: ListView(
            physics: const RangeMaintainingScrollPhysics(),
            children: [
              // Start the navigation route

              // Push Method
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: const Text(
                      'Push Method',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                          onPressed: () {
                            // GoRouter.of(context).push(
                            //   PageName.aboutRoute,
                            // );

                            // OR

                            context.push(PageName.aboutRoute);
                          },
                          child: const Text('Go to the about page')),
                    ),
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                        child: Text(
                            'Push Method is the method who add new layer above the current pages screen, so you can pop the new screen later'),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // Push Replacement Method
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: const Text(
                      'Push Replacement Method',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                          onPressed: () {
                            // GoRouter.of(context)
                            //     .pushReplacement(PageName.aboutRoute);

                            // OR

                            context.pushReplacement(PageName.aboutRoute);
                          },
                          child: const Text('Go to the about page')),
                    ),
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                        child: Text(
                            'Push Replacement Method is the method replace the current screen'),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // Go Method
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: const Text(
                      'Go Method',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                          onPressed: () {
                            // GoRouter.of(context).go(
                            //   PageName.aboutRoute,
                            // );

                            // OR

                            context.go(PageName.aboutRoute);
                          },
                          child: const Text('Go to the about page')),
                    ),
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                        child: Text(
                            'Go Method is the method who replace the current screen same like the push replacement'),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: const Text(
                      'Passing Single Argument',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                          onPressed: () {
                            GoRouter.of(context).push(PageName.argumentsRoute,
                                extra: 'Ini argument dari homepage');
                          },
                          child: const Text('Go to the about page')),
                    ),
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                        child:
                            Text('You can passing single argument to the page'),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: const Text(
                      'Passing Multiple Argument',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                          onPressed: () {
                            GoRouter.of(context)
                                .push(PageName.multiArgumentsRoute, extra: {
                              'arg1': 'Ini argument pertama dari homepage',
                              'arg2': 'Ini argument kedua dari homepage'
                            });
                          },
                          child: const Text('Go to the about page')),
                    ),
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                        child: Text(
                            'You can passing multiple argument to the page'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
