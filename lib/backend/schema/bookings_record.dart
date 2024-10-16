import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "accepted" field.
  bool? _accepted;
  bool get accepted => _accepted ?? false;
  bool hasAccepted() => _accepted != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "additionalInfo" field.
  String? _additionalInfo;
  String get additionalInfo => _additionalInfo ?? '';
  bool hasAdditionalInfo() => _additionalInfo != null;

  // "dye" field.
  String? _dye;
  String get dye => _dye ?? '';
  bool hasDye() => _dye != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _accepted = snapshotData['accepted'] as bool?;
    _type = snapshotData['type'] as String?;
    _additionalInfo = snapshotData['additionalInfo'] as String?;
    _dye = snapshotData['dye'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bookings')
          : FirebaseFirestore.instance.collectionGroup('bookings');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('bookings').doc(id);

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  DateTime? time,
  DocumentReference? uid,
  bool? accepted,
  String? type,
  String? additionalInfo,
  String? dye,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'uid': uid,
      'accepted': accepted,
      'type': type,
      'additionalInfo': additionalInfo,
      'dye': dye,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.uid == e2?.uid &&
        e1?.accepted == e2?.accepted &&
        e1?.type == e2?.type &&
        e1?.additionalInfo == e2?.additionalInfo &&
        e1?.dye == e2?.dye;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality()
      .hash([e?.time, e?.uid, e?.accepted, e?.type, e?.additionalInfo, e?.dye]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
