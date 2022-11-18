import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TempPage extends StatefulWidget {
  const TempPage({super.key});

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  @override
  void initState() {
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
        child: FutureBuilder(
          future: init(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data == null) return const SizedBox();
              return ListView.separated(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Text(
                    snapshot.data![index].data().toString(),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(height: 12),
              );
            }

            return const Center(
              child: CircularProgressIndicator(color: Colors.red),
            );
          },
        ),
      ),
    );
  }
}
