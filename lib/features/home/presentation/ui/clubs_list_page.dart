import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // FutureBuilder(
            //   future: init(),
            //   builder: (BuildContext context, snapshot) {
            //     if (snapshot.hasData) {
            //       if (snapshot.data == null) return const SizedBox();
            //       return ListView.separated(
            //         shrinkWrap: true,
            //         itemCount: snapshot.data!.length,
            //         itemBuilder: (context, index) {
            //           return Text(
            //             snapshot.data![index].data().toString(),
            //           );
            //         },
            //         separatorBuilder: (context, index) => const SizedBox(height: 12),
            //       );
            //     }

            //     return const Center(
            //       child: CircularProgressIndicator(color: Colors.red),
            //     );
            //   },
            // ),
            BlocConsumer<ClubsCubit, ClubsState>(
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
                      shrinkWrap: true,
                      itemCount: clubs.length,
                      itemBuilder: (context, index) {
                        return Text(
                          clubs[index].toString(),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(height: 12),
                    );
                  },
                  orElse: () => const Center(
                    child: CircularProgressIndicator(color: Colors.red),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
