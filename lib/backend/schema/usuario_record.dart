import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UsuarioRecord extends FirestoreRecord {
  UsuarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "term" field.
  bool? _term;
  bool get term => _term ?? false;
  bool hasTerm() => _term != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "update_time" field.
  DateTime? _updateTime;
  DateTime? get updateTime => _updateTime;
  bool hasUpdateTime() => _updateTime != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "term2" field.
  bool? _term2;
  bool get term2 => _term2 ?? false;
  bool hasTerm2() => _term2 != null;

  // "vendedor" field.
  bool? _vendedor;
  bool get vendedor => _vendedor ?? false;
  bool hasVendedor() => _vendedor != null;

  // "nomevendedor" field.
  String? _nomevendedor;
  String get nomevendedor => _nomevendedor ?? '';
  bool hasNomevendedor() => _nomevendedor != null;

  // "logovendedor" field.
  String? _logovendedor;
  String get logovendedor => _logovendedor ?? '';
  bool hasLogovendedor() => _logovendedor != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "termVendedor" field.
  bool? _termVendedor;
  bool get termVendedor => _termVendedor ?? false;
  bool hasTermVendedor() => _termVendedor != null;

  // "servico" field.
  String? _servico;
  String get servico => _servico ?? '';
  bool hasServico() => _servico != null;

  // "whatsAppVendedor" field.
  String? _whatsAppVendedor;
  String get whatsAppVendedor => _whatsAppVendedor ?? '';
  bool hasWhatsAppVendedor() => _whatsAppVendedor != null;

  // "urlVendedor" field.
  String? _urlVendedor;
  String get urlVendedor => _urlVendedor ?? '';
  bool hasUrlVendedor() => _urlVendedor != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _age = snapshotData['age'] as String?;
    _gender = snapshotData['gender'] as String?;
    _term = snapshotData['term'] as bool?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _updateTime = snapshotData['update_time'] as DateTime?;
    _cpf = snapshotData['cpf'] as String?;
    _cep = snapshotData['cep'] as String?;
    _term2 = snapshotData['term2'] as bool?;
    _vendedor = snapshotData['vendedor'] as bool?;
    _nomevendedor = snapshotData['nomevendedor'] as String?;
    _logovendedor = snapshotData['logovendedor'] as String?;
    _categoria = snapshotData['categoria'] as String?;
    _termVendedor = snapshotData['termVendedor'] as bool?;
    _servico = snapshotData['servico'] as String?;
    _whatsAppVendedor = snapshotData['whatsAppVendedor'] as String?;
    _urlVendedor = snapshotData['urlVendedor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuarioRecord.fromSnapshot(s));

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuarioRecord.fromSnapshot(s));

  static UsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuarioRecordData({
  String? name,
  String? age,
  String? gender,
  bool? term,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? updateTime,
  String? cpf,
  String? cep,
  bool? term2,
  bool? vendedor,
  String? nomevendedor,
  String? logovendedor,
  String? categoria,
  bool? termVendedor,
  String? servico,
  String? whatsAppVendedor,
  String? urlVendedor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'age': age,
      'gender': gender,
      'term': term,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'update_time': updateTime,
      'cpf': cpf,
      'cep': cep,
      'term2': term2,
      'vendedor': vendedor,
      'nomevendedor': nomevendedor,
      'logovendedor': logovendedor,
      'categoria': categoria,
      'termVendedor': termVendedor,
      'servico': servico,
      'whatsAppVendedor': whatsAppVendedor,
      'urlVendedor': urlVendedor,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuarioRecordDocumentEquality implements Equality<UsuarioRecord> {
  const UsuarioRecordDocumentEquality();

  @override
  bool equals(UsuarioRecord? e1, UsuarioRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.age == e2?.age &&
        e1?.gender == e2?.gender &&
        e1?.term == e2?.term &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.updateTime == e2?.updateTime &&
        e1?.cpf == e2?.cpf &&
        e1?.cep == e2?.cep &&
        e1?.term2 == e2?.term2 &&
        e1?.vendedor == e2?.vendedor &&
        e1?.nomevendedor == e2?.nomevendedor &&
        e1?.logovendedor == e2?.logovendedor &&
        e1?.categoria == e2?.categoria &&
        e1?.termVendedor == e2?.termVendedor &&
        e1?.servico == e2?.servico &&
        e1?.whatsAppVendedor == e2?.whatsAppVendedor &&
        e1?.urlVendedor == e2?.urlVendedor;
  }

  @override
  int hash(UsuarioRecord? e) => const ListEquality().hash([
        e?.name,
        e?.age,
        e?.gender,
        e?.term,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.updateTime,
        e?.cpf,
        e?.cep,
        e?.term2,
        e?.vendedor,
        e?.nomevendedor,
        e?.logovendedor,
        e?.categoria,
        e?.termVendedor,
        e?.servico,
        e?.whatsAppVendedor,
        e?.urlVendedor
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuarioRecord;
}
