import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServices {
  static CollectionReference? paymentMethodsCollection;
  static CollectionReference? counterCollection;

  static initFirebaseCollections() async {
    paymentMethodsCollection =
        FirebaseFirestore.instance.collection('paymentMethodsCollection');

    counterCollection =
        FirebaseFirestore.instance.collection('counterCollection');
  }

  Future<void> addPaymentMethods(
      String holder, String number, String expiryDate, String cvv) async {
    final counterRef = counterCollection!.doc('currentUserIdCounter');

    // Run a transaction to safely increment the counter and add the new document with the new ID
    await FirebaseFirestore.instance.runTransaction((transaction) async {
      int userId = await getAndUpdateCurrentUserId(transaction, counterRef);

      // Add new payment method with incremented ID
      await setCurrentUserPaymentMethodId(
        transaction,
        paymentMethodsCollection!,
        userId,
        holder,
        number,
        expiryDate,
        cvv,
      );
    }).then((_) {
      log("Payment method added with incremental ID ");
    }).catchError((error) {
      log("Failed to add payment method: $error");
    });
  }

  Future<int> getAndUpdateCurrentUserId(
      Transaction transaction, dynamic counterRef) async {
    // Get current counter value
    final counterSnapshot = await transaction.get(counterRef);
    int userId = 0; // current user ID

    if (!counterSnapshot.exists) {
      // Initialize counter if not exist
      transaction.set(counterRef, {'userId': 1});
      userId = 1;
    } else {
      userId = counterSnapshot['userId'] + 1;
      transaction.update(counterRef, {'userId': userId});
    }
    return userId;
  }

  Future<void> setCurrentUserPaymentMethodId(
      Transaction transaction,
      CollectionReference paymentMethodsCollection,
      int userId,
      String holder,
      String number,
      String expiryDate,
      String cvv) async {
    transaction.set(paymentMethodsCollection.doc(), {
      'id': userId,
      'holder': holder,
      'number': number,
      'expiryDate': expiryDate,
      'cvv': cvv,
    });
  }

  Future<void> updatePaymentMethod(
      String id, String holder, String number, String expiryDate, String cvv) {
    return paymentMethodsCollection!
        .doc(id)
        .update({
          'holder': holder,
          'number': number,
          'expiryDate': expiryDate,
          'cvv': cvv,
        })
        .then((value) => log("Method Updated"))
        .catchError((error) => log("Failed to update Method: $error"));
  }

  Future<void> deletePaymentMethod(String id) {
    return paymentMethodsCollection!
        .doc(id)
        .delete()
        .then((value) => log("Method Deleted"))
        .catchError((error) => log("Failed to delete Method: $error"));
  }
}



/**
 * 
 * 
 * 
 *     Future<void> addPaymentMethods(String holder, String number, String expiryDate, String cvv) {
      return paymentMethods
          .add({
            'holder':holder, 
            'number': number, 
            'expiryDate': expiryDate,
            'cvv': cvv,
            
          })
          .then((value) => log("Method Added"))
          .catchError((error) => log("Failed to add Method: $error"));
    }

 Future<void> updatePaymentMethod(
      String id, String holder, String number, String expiryDate, String cvv) {
    return paymentMethods
        .doc(id)
        .update({
          'holder': holder,
          'number': number,
          'expiryDate': expiryDate,
          'cvv': cvv,
        })
        .then((value) => log("Method Updated"))
        .catchError((error) => log("Failed to update Method: $error"));
  }

  Future<void> deletePaymentMethod(String id) {
    return paymentMethods
        .doc(id)
        .delete()
        .then((value) => log("Method Deleted"))
        .catchError((error) => log("Failed to delete Method: $error"));
  }









 */