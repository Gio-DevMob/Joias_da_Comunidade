import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvaliacaoRecord extends FirestoreRecord {
  AvaliacaoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nota" field.
  int? _nota;
  int get nota => _nota ?? 0;
  bool hasNota() => _nota != null;

  // "avaliacao" field.
  String? _avaliacao;
  String get avaliacao => _avaliacao ?? '';
  bool hasAvaliacao() => _avaliacao != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nota = castToType<int>(snapshotData['nota']);
    _avaliacao = snapshotData['avaliacao'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('avaliacao')
          : FirebaseFirestore.instance.collectionGroup('avaliacao');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('avaliacao').doc(id);

  static Stream<AvaliacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvaliacaoRecord.fromSnapshot(s));

  static Future<AvaliacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AvaliacaoRecord.fromSnapshot(s));

  static AvaliacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AvaliacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvaliacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvaliacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvaliacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvaliacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvaliacaoRecordData({
  int? nota,
  String? avaliacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nota': nota,
      'avaliacao': avaliacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvaliacaoRecordDocumentEquality implements Equality<AvaliacaoRecord> {
  const AvaliacaoRecordDocumentEquality();

  @override
  bool equals(AvaliacaoRecord? e1, AvaliacaoRecord? e2) {
    return e1?.nota == e2?.nota && e1?.avaliacao == e2?.avaliacao;
  }

  @override
  int hash(AvaliacaoRecord? e) =>
      const ListEquality().hash([e?.nota, e?.avaliacao]);

  @override
  bool isValidKey(Object? o) => o is AvaliacaoRecord;
}
