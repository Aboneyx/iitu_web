import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iitu_web/core/extension/extensions.dart';
import 'package:iitu_web/core/resources/constants.dart';
import 'package:iitu_web/features/app/widgets/custom/custom_snackbars.dart';
import 'package:iitu_web/features/home/data/model/club_dto.dart';
import 'package:iitu_web/features/home/presentation/bloc/clubs_cubit.dart';

class ClubsListPage extends StatefulWidget {
  const ClubsListPage({super.key});

  @override
  State<ClubsListPage> createState() => _ClubsListPageState();
}

class _ClubsListPageState extends State<ClubsListPage> {
  @override
  void initState() {
    BlocProvider.of<ClubsCubit>(context).getClubs();
    // init();
    // addOrg();
    super.initState();
  }

  Future<List<QueryDocumentSnapshot<Object?>>> init() async {
    try {
      CollectionReference mapp = FirebaseFirestore.instance.collection('Organization');

      QuerySnapshot<Object?> snapshot = await mapp.get();
      List<QueryDocumentSnapshot<Object?>> queryDocumentSnapshot = snapshot.docs;
      for (int i = 0; i < queryDocumentSnapshot.length; i++) {
        print(queryDocumentSnapshot[i].data());
      }

      return queryDocumentSnapshot;
    } catch (e) {
      print('init $e');
      throw Exception(e);
    }
  }

  Future<void> addOrg() {
    CollectionReference orgs = FirebaseFirestore.instance.collection('Organization');

    return orgs
        .add({
          'name': 'exapmle', // John Doe
          'description': 'ascasc', // Stokes and Sons
        })
        .then((value) => print("Org Added"))
        .catchError((error) => print("Failed to add Org: $error"));
  }

  @override
  Widget build(BuildContext context) {
    final carouselWidth = context.mediaQuery.size.width * .8;

    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<ClubsCubit, ClubsState>(
          listener: (context, state) {
            state.whenOrNull(
              errorState: (String message) {
                buildErrorCustomSnackBar(context, message);
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loadedState: (List<ClubDTO> clubs) {
                return ListView.separated(
                  padding: const EdgeInsets.all(20),
                  itemCount: clubs.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(
                          clubs[index].name ?? '',
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          clubs[index].description ?? '',
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: carouselWidth,
                          height: carouselWidth * 9 / 16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: const [
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
                          child: Image.network(
                            clubs[index].avatar ?? '',
                            fit: BoxFit.cover,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.kPrimaryColor,
                                  value: loadingProgress.expectedTotalBytes != null
                                      ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
                              );
                            },
                            errorBuilder: (
                              BuildContext context,
                              Object exception,
                              StackTrace? stackTrace,
                            ) {
                              return Center(child: Text('Image Error: $exception'));
                            },
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 100),
                );
              },
              orElse: () => const Center(
                child: CircularProgressIndicator(color: Colors.red),
              ),
            );
          },
        ),
      ),
    );
  }
}
