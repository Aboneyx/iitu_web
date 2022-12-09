import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iitu_web/core/common/widgets/responsive_widget.dart';
import 'package:iitu_web/core/resources/constants.dart';
import 'package:iitu_web/features/app/bloc/app_bloc.dart';
import 'package:iitu_web/features/app/widgets/custom_button.dart';
import 'package:iitu_web/features/app/widgets/web_appbar.dart';
import 'package:iitu_web/features/home/data/model/club_dto.dart';

class ClubDetailPage extends StatefulWidget {
  final ClubDTO club;
  const ClubDetailPage({super.key, required this.club});

  @override
  _ClubDetailPageState createState() => _ClubDetailPageState();
}

class _ClubDetailPageState extends State<ClubDetailPage> {
  int selectedImage = 0;
  bool sended = false;
  int? number;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: ResponsiveWidget(
        largeScreen: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * .1),
              children: [
                const SizedBox(height: 180),
                Text(
                  widget.club.name ?? '',
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 100),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 300,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 24,
                                  color: Color.fromRGBO(0, 0, 0, 0.08),
                                ),
                                BoxShadow(
                                  blurRadius: 2,
                                  color: Color.fromRGBO(0, 0, 0, 0.08),
                                ),
                              ],
                            ),
                            child: widget.club.images != null && widget.club.images!.isNotEmpty
                                ? Image.network(
                                    widget.club.images![selectedImage],
                                    fit: BoxFit.cover,
                                  )
                                : Image.network(NOT_FOUND_IMAGE),
                          ),
                          const SizedBox(height: 20),
                          if (widget.club.images != null)
                            SizedBox(
                              height: 110,
                              child: ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: widget.club.images!.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedImage = index;
                                      });
                                    },
                                    child: SizedBox(
                                      height: 110,
                                      width: 200,
                                      child: Image.network(
                                        widget.club.images![index],
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(width: 12);
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.club.name ?? '',
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            widget.club.description ?? '',
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 30),
                          BlocBuilder<AppBloc, AppState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                inAppState: (user) {
                                  return CustomButton(
                                    height: 56,
                                    body: sended
                                        ? Text('Request Sended, request id $number')
                                        : const Text('Join to the club'),
                                    onClick: sended
                                        ? null
                                        : () async {
                                            number = Random().nextInt(1000);

                                            final CollectionReference clubsReference =
                                                FirebaseFirestore.instance.collection('Organization');

                                            await clubsReference.doc(widget.club.id).update({
                                              'requests': 'New request for the join, id : ',
                                            }).whenComplete(() {
                                              setState(() {
                                                sended = true;
                                              });
                                            });
                                          },
                                    style: customButtonStyle(
                                      backgroundColor: AppColors.kPrimaryColor,
                                      radius: 5,
                                    ),
                                  );
                                },
                                orElse: () => const SizedBox(),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 100),
              ],
            ),
            const WebAppBar(),
          ],
        ),
        smallScreen: ListView(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
