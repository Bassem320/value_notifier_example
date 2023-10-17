import 'package:flutter/cupertino.dart';

import './contact.dart';

class ContactBook extends ValueNotifier<List<Contact>>{
  /// Singleton pattern
  ContactBook._sharedInstance(): super([]);

  static final ContactBook _shared = ContactBook._sharedInstance();

  factory ContactBook() => _shared;

  ////////////////////////////////////////////////////

  final List<Contact> _contacts = [];

  int get length => value.length;

  void add({required Contact contact}) {
    value.add(contact);
    notifyListeners();
  }

  void remove({required Contact contact}) {
    if(value.contains(contact)){
      value.remove(contact);
      notifyListeners();
    }
  }

  Contact? getContact(int index) {
    return (index < value.length) ? value[index] : null;
  }
}
