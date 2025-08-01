// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  List<Address> get addresses => throw _privateConstructorUsedError;
  Address? get defaultAddress => throw _privateConstructorUsedError;
  List<String> get favoriteRestaurants => throw _privateConstructorUsedError;
  List<Order> get orderHistory => throw _privateConstructorUsedError;
  UserPreferences get preferences => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    String id,
    String email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? avatarUrl,
    List<Address> addresses,
    Address? defaultAddress,
    List<String> favoriteRestaurants,
    List<Order> orderHistory,
    UserPreferences preferences,
    DateTime? createdAt,
    DateTime? updatedAt,
  });

  $AddressCopyWith<$Res>? get defaultAddress;
  $UserPreferencesCopyWith<$Res> get preferences;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? avatarUrl = freezed,
    Object? addresses = null,
    Object? defaultAddress = freezed,
    Object? favoriteRestaurants = null,
    Object? orderHistory = null,
    Object? preferences = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            firstName:
                freezed == firstName
                    ? _value.firstName
                    : firstName // ignore: cast_nullable_to_non_nullable
                        as String?,
            lastName:
                freezed == lastName
                    ? _value.lastName
                    : lastName // ignore: cast_nullable_to_non_nullable
                        as String?,
            phoneNumber:
                freezed == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
            avatarUrl:
                freezed == avatarUrl
                    ? _value.avatarUrl
                    : avatarUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            addresses:
                null == addresses
                    ? _value.addresses
                    : addresses // ignore: cast_nullable_to_non_nullable
                        as List<Address>,
            defaultAddress:
                freezed == defaultAddress
                    ? _value.defaultAddress
                    : defaultAddress // ignore: cast_nullable_to_non_nullable
                        as Address?,
            favoriteRestaurants:
                null == favoriteRestaurants
                    ? _value.favoriteRestaurants
                    : favoriteRestaurants // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            orderHistory:
                null == orderHistory
                    ? _value.orderHistory
                    : orderHistory // ignore: cast_nullable_to_non_nullable
                        as List<Order>,
            preferences:
                null == preferences
                    ? _value.preferences
                    : preferences // ignore: cast_nullable_to_non_nullable
                        as UserPreferences,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get defaultAddress {
    if (_value.defaultAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.defaultAddress!, (value) {
      return _then(_value.copyWith(defaultAddress: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPreferencesCopyWith<$Res> get preferences {
    return $UserPreferencesCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? avatarUrl,
    List<Address> addresses,
    Address? defaultAddress,
    List<String> favoriteRestaurants,
    List<Order> orderHistory,
    UserPreferences preferences,
    DateTime? createdAt,
    DateTime? updatedAt,
  });

  @override
  $AddressCopyWith<$Res>? get defaultAddress;
  @override
  $UserPreferencesCopyWith<$Res> get preferences;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? avatarUrl = freezed,
    Object? addresses = null,
    Object? defaultAddress = freezed,
    Object? favoriteRestaurants = null,
    Object? orderHistory = null,
    Object? preferences = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$UserImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        firstName:
            freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                    as String?,
        lastName:
            freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                    as String?,
        phoneNumber:
            freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        avatarUrl:
            freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        addresses:
            null == addresses
                ? _value._addresses
                : addresses // ignore: cast_nullable_to_non_nullable
                    as List<Address>,
        defaultAddress:
            freezed == defaultAddress
                ? _value.defaultAddress
                : defaultAddress // ignore: cast_nullable_to_non_nullable
                    as Address?,
        favoriteRestaurants:
            null == favoriteRestaurants
                ? _value._favoriteRestaurants
                : favoriteRestaurants // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        orderHistory:
            null == orderHistory
                ? _value._orderHistory
                : orderHistory // ignore: cast_nullable_to_non_nullable
                    as List<Order>,
        preferences:
            null == preferences
                ? _value.preferences
                : preferences // ignore: cast_nullable_to_non_nullable
                    as UserPreferences,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.avatarUrl,
    final List<Address> addresses = const [],
    this.defaultAddress,
    final List<String> favoriteRestaurants = const [],
    final List<Order> orderHistory = const [],
    this.preferences = const UserPreferences(),
    this.createdAt,
    this.updatedAt,
  }) : _addresses = addresses,
       _favoriteRestaurants = favoriteRestaurants,
       _orderHistory = orderHistory;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? phoneNumber;
  @override
  final String? avatarUrl;
  final List<Address> _addresses;
  @override
  @JsonKey()
  List<Address> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  final Address? defaultAddress;
  final List<String> _favoriteRestaurants;
  @override
  @JsonKey()
  List<String> get favoriteRestaurants {
    if (_favoriteRestaurants is EqualUnmodifiableListView)
      return _favoriteRestaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteRestaurants);
  }

  final List<Order> _orderHistory;
  @override
  @JsonKey()
  List<Order> get orderHistory {
    if (_orderHistory is EqualUnmodifiableListView) return _orderHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderHistory);
  }

  @override
  @JsonKey()
  final UserPreferences preferences;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'User(id: $id, email: $email, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, avatarUrl: $avatarUrl, addresses: $addresses, defaultAddress: $defaultAddress, favoriteRestaurants: $favoriteRestaurants, orderHistory: $orderHistory, preferences: $preferences, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality().equals(
              other._addresses,
              _addresses,
            ) &&
            (identical(other.defaultAddress, defaultAddress) ||
                other.defaultAddress == defaultAddress) &&
            const DeepCollectionEquality().equals(
              other._favoriteRestaurants,
              _favoriteRestaurants,
            ) &&
            const DeepCollectionEquality().equals(
              other._orderHistory,
              _orderHistory,
            ) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    email,
    firstName,
    lastName,
    phoneNumber,
    avatarUrl,
    const DeepCollectionEquality().hash(_addresses),
    defaultAddress,
    const DeepCollectionEquality().hash(_favoriteRestaurants),
    const DeepCollectionEquality().hash(_orderHistory),
    preferences,
    createdAt,
    updatedAt,
  );

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    required final String id,
    required final String email,
    final String? firstName,
    final String? lastName,
    final String? phoneNumber,
    final String? avatarUrl,
    final List<Address> addresses,
    final Address? defaultAddress,
    final List<String> favoriteRestaurants,
    final List<Order> orderHistory,
    final UserPreferences preferences,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get phoneNumber;
  @override
  String? get avatarUrl;
  @override
  List<Address> get addresses;
  @override
  Address? get defaultAddress;
  @override
  List<String> get favoriteRestaurants;
  @override
  List<Order> get orderHistory;
  @override
  UserPreferences get preferences;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get id => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String? get apartmentNumber => throw _privateConstructorUsedError;
  String? get label =>
      throw _privateConstructorUsedError; // 'Home', 'Work', etc.
  String? get deliveryInstructions => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({
    String id,
    String street,
    String city,
    String postalCode,
    String country,
    double latitude,
    double longitude,
    String? apartmentNumber,
    String? label,
    String? deliveryInstructions,
    bool isDefault,
  });
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? street = null,
    Object? city = null,
    Object? postalCode = null,
    Object? country = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? apartmentNumber = freezed,
    Object? label = freezed,
    Object? deliveryInstructions = freezed,
    Object? isDefault = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            street:
                null == street
                    ? _value.street
                    : street // ignore: cast_nullable_to_non_nullable
                        as String,
            city:
                null == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String,
            postalCode:
                null == postalCode
                    ? _value.postalCode
                    : postalCode // ignore: cast_nullable_to_non_nullable
                        as String,
            country:
                null == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String,
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double,
            apartmentNumber:
                freezed == apartmentNumber
                    ? _value.apartmentNumber
                    : apartmentNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
            label:
                freezed == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String?,
            deliveryInstructions:
                freezed == deliveryInstructions
                    ? _value.deliveryInstructions
                    : deliveryInstructions // ignore: cast_nullable_to_non_nullable
                        as String?,
            isDefault:
                null == isDefault
                    ? _value.isDefault
                    : isDefault // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
    _$AddressImpl value,
    $Res Function(_$AddressImpl) then,
  ) = __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String street,
    String city,
    String postalCode,
    String country,
    double latitude,
    double longitude,
    String? apartmentNumber,
    String? label,
    String? deliveryInstructions,
    bool isDefault,
  });
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
    _$AddressImpl _value,
    $Res Function(_$AddressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? street = null,
    Object? city = null,
    Object? postalCode = null,
    Object? country = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? apartmentNumber = freezed,
    Object? label = freezed,
    Object? deliveryInstructions = freezed,
    Object? isDefault = null,
  }) {
    return _then(
      _$AddressImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        street:
            null == street
                ? _value.street
                : street // ignore: cast_nullable_to_non_nullable
                    as String,
        city:
            null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String,
        postalCode:
            null == postalCode
                ? _value.postalCode
                : postalCode // ignore: cast_nullable_to_non_nullable
                    as String,
        country:
            null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String,
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double,
        apartmentNumber:
            freezed == apartmentNumber
                ? _value.apartmentNumber
                : apartmentNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        label:
            freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String?,
        deliveryInstructions:
            freezed == deliveryInstructions
                ? _value.deliveryInstructions
                : deliveryInstructions // ignore: cast_nullable_to_non_nullable
                    as String?,
        isDefault:
            null == isDefault
                ? _value.isDefault
                : isDefault // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl({
    required this.id,
    required this.street,
    required this.city,
    required this.postalCode,
    required this.country,
    required this.latitude,
    required this.longitude,
    this.apartmentNumber,
    this.label,
    this.deliveryInstructions,
    this.isDefault = false,
  });

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String id;
  @override
  final String street;
  @override
  final String city;
  @override
  final String postalCode;
  @override
  final String country;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? apartmentNumber;
  @override
  final String? label;
  // 'Home', 'Work', etc.
  @override
  final String? deliveryInstructions;
  @override
  @JsonKey()
  final bool isDefault;

  @override
  String toString() {
    return 'Address(id: $id, street: $street, city: $city, postalCode: $postalCode, country: $country, latitude: $latitude, longitude: $longitude, apartmentNumber: $apartmentNumber, label: $label, deliveryInstructions: $deliveryInstructions, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.apartmentNumber, apartmentNumber) ||
                other.apartmentNumber == apartmentNumber) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.deliveryInstructions, deliveryInstructions) ||
                other.deliveryInstructions == deliveryInstructions) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    street,
    city,
    postalCode,
    country,
    latitude,
    longitude,
    apartmentNumber,
    label,
    deliveryInstructions,
    isDefault,
  );

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(this);
  }
}

abstract class _Address implements Address {
  const factory _Address({
    required final String id,
    required final String street,
    required final String city,
    required final String postalCode,
    required final String country,
    required final double latitude,
    required final double longitude,
    final String? apartmentNumber,
    final String? label,
    final String? deliveryInstructions,
    final bool isDefault,
  }) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String get id;
  @override
  String get street;
  @override
  String get city;
  @override
  String get postalCode;
  @override
  String get country;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String? get apartmentNumber;
  @override
  String? get label; // 'Home', 'Work', etc.
  @override
  String? get deliveryInstructions;
  @override
  bool get isDefault;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPreferences _$UserPreferencesFromJson(Map<String, dynamic> json) {
  return _UserPreferences.fromJson(json);
}

/// @nodoc
mixin _$UserPreferences {
  bool get pushNotifications => throw _privateConstructorUsedError;
  bool get emailNotifications => throw _privateConstructorUsedError;
  bool get orderUpdates => throw _privateConstructorUsedError;
  bool get promotionalOffers => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  List<String> get dietaryRestrictions => throw _privateConstructorUsedError;
  List<String> get allergens => throw _privateConstructorUsedError;

  /// Serializes this UserPreferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPreferencesCopyWith<UserPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesCopyWith<$Res> {
  factory $UserPreferencesCopyWith(
    UserPreferences value,
    $Res Function(UserPreferences) then,
  ) = _$UserPreferencesCopyWithImpl<$Res, UserPreferences>;
  @useResult
  $Res call({
    bool pushNotifications,
    bool emailNotifications,
    bool orderUpdates,
    bool promotionalOffers,
    String language,
    String currency,
    List<String> dietaryRestrictions,
    List<String> allergens,
  });
}

/// @nodoc
class _$UserPreferencesCopyWithImpl<$Res, $Val extends UserPreferences>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushNotifications = null,
    Object? emailNotifications = null,
    Object? orderUpdates = null,
    Object? promotionalOffers = null,
    Object? language = null,
    Object? currency = null,
    Object? dietaryRestrictions = null,
    Object? allergens = null,
  }) {
    return _then(
      _value.copyWith(
            pushNotifications:
                null == pushNotifications
                    ? _value.pushNotifications
                    : pushNotifications // ignore: cast_nullable_to_non_nullable
                        as bool,
            emailNotifications:
                null == emailNotifications
                    ? _value.emailNotifications
                    : emailNotifications // ignore: cast_nullable_to_non_nullable
                        as bool,
            orderUpdates:
                null == orderUpdates
                    ? _value.orderUpdates
                    : orderUpdates // ignore: cast_nullable_to_non_nullable
                        as bool,
            promotionalOffers:
                null == promotionalOffers
                    ? _value.promotionalOffers
                    : promotionalOffers // ignore: cast_nullable_to_non_nullable
                        as bool,
            language:
                null == language
                    ? _value.language
                    : language // ignore: cast_nullable_to_non_nullable
                        as String,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
            dietaryRestrictions:
                null == dietaryRestrictions
                    ? _value.dietaryRestrictions
                    : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            allergens:
                null == allergens
                    ? _value.allergens
                    : allergens // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserPreferencesImplCopyWith<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  factory _$$UserPreferencesImplCopyWith(
    _$UserPreferencesImpl value,
    $Res Function(_$UserPreferencesImpl) then,
  ) = __$$UserPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool pushNotifications,
    bool emailNotifications,
    bool orderUpdates,
    bool promotionalOffers,
    String language,
    String currency,
    List<String> dietaryRestrictions,
    List<String> allergens,
  });
}

/// @nodoc
class __$$UserPreferencesImplCopyWithImpl<$Res>
    extends _$UserPreferencesCopyWithImpl<$Res, _$UserPreferencesImpl>
    implements _$$UserPreferencesImplCopyWith<$Res> {
  __$$UserPreferencesImplCopyWithImpl(
    _$UserPreferencesImpl _value,
    $Res Function(_$UserPreferencesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushNotifications = null,
    Object? emailNotifications = null,
    Object? orderUpdates = null,
    Object? promotionalOffers = null,
    Object? language = null,
    Object? currency = null,
    Object? dietaryRestrictions = null,
    Object? allergens = null,
  }) {
    return _then(
      _$UserPreferencesImpl(
        pushNotifications:
            null == pushNotifications
                ? _value.pushNotifications
                : pushNotifications // ignore: cast_nullable_to_non_nullable
                    as bool,
        emailNotifications:
            null == emailNotifications
                ? _value.emailNotifications
                : emailNotifications // ignore: cast_nullable_to_non_nullable
                    as bool,
        orderUpdates:
            null == orderUpdates
                ? _value.orderUpdates
                : orderUpdates // ignore: cast_nullable_to_non_nullable
                    as bool,
        promotionalOffers:
            null == promotionalOffers
                ? _value.promotionalOffers
                : promotionalOffers // ignore: cast_nullable_to_non_nullable
                    as bool,
        language:
            null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                    as String,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
        dietaryRestrictions:
            null == dietaryRestrictions
                ? _value._dietaryRestrictions
                : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        allergens:
            null == allergens
                ? _value._allergens
                : allergens // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPreferencesImpl implements _UserPreferences {
  const _$UserPreferencesImpl({
    this.pushNotifications = true,
    this.emailNotifications = true,
    this.orderUpdates = true,
    this.promotionalOffers = true,
    this.language = 'en',
    this.currency = 'CHF',
    final List<String> dietaryRestrictions = const [],
    final List<String> allergens = const [],
  }) : _dietaryRestrictions = dietaryRestrictions,
       _allergens = allergens;

  factory _$UserPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPreferencesImplFromJson(json);

  @override
  @JsonKey()
  final bool pushNotifications;
  @override
  @JsonKey()
  final bool emailNotifications;
  @override
  @JsonKey()
  final bool orderUpdates;
  @override
  @JsonKey()
  final bool promotionalOffers;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String currency;
  final List<String> _dietaryRestrictions;
  @override
  @JsonKey()
  List<String> get dietaryRestrictions {
    if (_dietaryRestrictions is EqualUnmodifiableListView)
      return _dietaryRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietaryRestrictions);
  }

  final List<String> _allergens;
  @override
  @JsonKey()
  List<String> get allergens {
    if (_allergens is EqualUnmodifiableListView) return _allergens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergens);
  }

  @override
  String toString() {
    return 'UserPreferences(pushNotifications: $pushNotifications, emailNotifications: $emailNotifications, orderUpdates: $orderUpdates, promotionalOffers: $promotionalOffers, language: $language, currency: $currency, dietaryRestrictions: $dietaryRestrictions, allergens: $allergens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreferencesImpl &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.emailNotifications, emailNotifications) ||
                other.emailNotifications == emailNotifications) &&
            (identical(other.orderUpdates, orderUpdates) ||
                other.orderUpdates == orderUpdates) &&
            (identical(other.promotionalOffers, promotionalOffers) ||
                other.promotionalOffers == promotionalOffers) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality().equals(
              other._dietaryRestrictions,
              _dietaryRestrictions,
            ) &&
            const DeepCollectionEquality().equals(
              other._allergens,
              _allergens,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    pushNotifications,
    emailNotifications,
    orderUpdates,
    promotionalOffers,
    language,
    currency,
    const DeepCollectionEquality().hash(_dietaryRestrictions),
    const DeepCollectionEquality().hash(_allergens),
  );

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      __$$UserPreferencesImplCopyWithImpl<_$UserPreferencesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPreferencesImplToJson(this);
  }
}

abstract class _UserPreferences implements UserPreferences {
  const factory _UserPreferences({
    final bool pushNotifications,
    final bool emailNotifications,
    final bool orderUpdates,
    final bool promotionalOffers,
    final String language,
    final String currency,
    final List<String> dietaryRestrictions,
    final List<String> allergens,
  }) = _$UserPreferencesImpl;

  factory _UserPreferences.fromJson(Map<String, dynamic> json) =
      _$UserPreferencesImpl.fromJson;

  @override
  bool get pushNotifications;
  @override
  bool get emailNotifications;
  @override
  bool get orderUpdates;
  @override
  bool get promotionalOffers;
  @override
  String get language;
  @override
  String get currency;
  @override
  List<String> get dietaryRestrictions;
  @override
  List<String> get allergens;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get restaurantId => throw _privateConstructorUsedError;
  String get restaurantName => throw _privateConstructorUsedError;
  List<OrderItem> get items => throw _privateConstructorUsedError;
  double get subtotal => throw _privateConstructorUsedError;
  double get deliveryFee => throw _privateConstructorUsedError;
  double get tax => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  Address get deliveryAddress => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get estimatedDeliveryTime => throw _privateConstructorUsedError;
  DateTime? get deliveredAt => throw _privateConstructorUsedError;
  String? get specialInstructions => throw _privateConstructorUsedError;
  String? get driverId => throw _privateConstructorUsedError;
  String? get trackingUrl => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call({
    String id,
    String userId,
    String restaurantId,
    String restaurantName,
    List<OrderItem> items,
    double subtotal,
    double deliveryFee,
    double tax,
    double total,
    OrderStatus status,
    Address deliveryAddress,
    DateTime createdAt,
    DateTime? estimatedDeliveryTime,
    DateTime? deliveredAt,
    String? specialInstructions,
    String? driverId,
    String? trackingUrl,
  });

  $AddressCopyWith<$Res> get deliveryAddress;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? restaurantId = null,
    Object? restaurantName = null,
    Object? items = null,
    Object? subtotal = null,
    Object? deliveryFee = null,
    Object? tax = null,
    Object? total = null,
    Object? status = null,
    Object? deliveryAddress = null,
    Object? createdAt = null,
    Object? estimatedDeliveryTime = freezed,
    Object? deliveredAt = freezed,
    Object? specialInstructions = freezed,
    Object? driverId = freezed,
    Object? trackingUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            restaurantId:
                null == restaurantId
                    ? _value.restaurantId
                    : restaurantId // ignore: cast_nullable_to_non_nullable
                        as String,
            restaurantName:
                null == restaurantName
                    ? _value.restaurantName
                    : restaurantName // ignore: cast_nullable_to_non_nullable
                        as String,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<OrderItem>,
            subtotal:
                null == subtotal
                    ? _value.subtotal
                    : subtotal // ignore: cast_nullable_to_non_nullable
                        as double,
            deliveryFee:
                null == deliveryFee
                    ? _value.deliveryFee
                    : deliveryFee // ignore: cast_nullable_to_non_nullable
                        as double,
            tax:
                null == tax
                    ? _value.tax
                    : tax // ignore: cast_nullable_to_non_nullable
                        as double,
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as double,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as OrderStatus,
            deliveryAddress:
                null == deliveryAddress
                    ? _value.deliveryAddress
                    : deliveryAddress // ignore: cast_nullable_to_non_nullable
                        as Address,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            estimatedDeliveryTime:
                freezed == estimatedDeliveryTime
                    ? _value.estimatedDeliveryTime
                    : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            deliveredAt:
                freezed == deliveredAt
                    ? _value.deliveredAt
                    : deliveredAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            specialInstructions:
                freezed == specialInstructions
                    ? _value.specialInstructions
                    : specialInstructions // ignore: cast_nullable_to_non_nullable
                        as String?,
            driverId:
                freezed == driverId
                    ? _value.driverId
                    : driverId // ignore: cast_nullable_to_non_nullable
                        as String?,
            trackingUrl:
                freezed == trackingUrl
                    ? _value.trackingUrl
                    : trackingUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get deliveryAddress {
    return $AddressCopyWith<$Res>(_value.deliveryAddress, (value) {
      return _then(_value.copyWith(deliveryAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
    _$OrderImpl value,
    $Res Function(_$OrderImpl) then,
  ) = __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String restaurantId,
    String restaurantName,
    List<OrderItem> items,
    double subtotal,
    double deliveryFee,
    double tax,
    double total,
    OrderStatus status,
    Address deliveryAddress,
    DateTime createdAt,
    DateTime? estimatedDeliveryTime,
    DateTime? deliveredAt,
    String? specialInstructions,
    String? driverId,
    String? trackingUrl,
  });

  @override
  $AddressCopyWith<$Res> get deliveryAddress;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
    _$OrderImpl _value,
    $Res Function(_$OrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? restaurantId = null,
    Object? restaurantName = null,
    Object? items = null,
    Object? subtotal = null,
    Object? deliveryFee = null,
    Object? tax = null,
    Object? total = null,
    Object? status = null,
    Object? deliveryAddress = null,
    Object? createdAt = null,
    Object? estimatedDeliveryTime = freezed,
    Object? deliveredAt = freezed,
    Object? specialInstructions = freezed,
    Object? driverId = freezed,
    Object? trackingUrl = freezed,
  }) {
    return _then(
      _$OrderImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        restaurantId:
            null == restaurantId
                ? _value.restaurantId
                : restaurantId // ignore: cast_nullable_to_non_nullable
                    as String,
        restaurantName:
            null == restaurantName
                ? _value.restaurantName
                : restaurantName // ignore: cast_nullable_to_non_nullable
                    as String,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<OrderItem>,
        subtotal:
            null == subtotal
                ? _value.subtotal
                : subtotal // ignore: cast_nullable_to_non_nullable
                    as double,
        deliveryFee:
            null == deliveryFee
                ? _value.deliveryFee
                : deliveryFee // ignore: cast_nullable_to_non_nullable
                    as double,
        tax:
            null == tax
                ? _value.tax
                : tax // ignore: cast_nullable_to_non_nullable
                    as double,
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as double,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as OrderStatus,
        deliveryAddress:
            null == deliveryAddress
                ? _value.deliveryAddress
                : deliveryAddress // ignore: cast_nullable_to_non_nullable
                    as Address,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        estimatedDeliveryTime:
            freezed == estimatedDeliveryTime
                ? _value.estimatedDeliveryTime
                : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        deliveredAt:
            freezed == deliveredAt
                ? _value.deliveredAt
                : deliveredAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        specialInstructions:
            freezed == specialInstructions
                ? _value.specialInstructions
                : specialInstructions // ignore: cast_nullable_to_non_nullable
                    as String?,
        driverId:
            freezed == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                    as String?,
        trackingUrl:
            freezed == trackingUrl
                ? _value.trackingUrl
                : trackingUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl({
    required this.id,
    required this.userId,
    required this.restaurantId,
    required this.restaurantName,
    required final List<OrderItem> items,
    required this.subtotal,
    required this.deliveryFee,
    required this.tax,
    required this.total,
    required this.status,
    required this.deliveryAddress,
    required this.createdAt,
    this.estimatedDeliveryTime,
    this.deliveredAt,
    this.specialInstructions,
    this.driverId,
    this.trackingUrl,
  }) : _items = items;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String restaurantId;
  @override
  final String restaurantName;
  final List<OrderItem> _items;
  @override
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final double subtotal;
  @override
  final double deliveryFee;
  @override
  final double tax;
  @override
  final double total;
  @override
  final OrderStatus status;
  @override
  final Address deliveryAddress;
  @override
  final DateTime createdAt;
  @override
  final DateTime? estimatedDeliveryTime;
  @override
  final DateTime? deliveredAt;
  @override
  final String? specialInstructions;
  @override
  final String? driverId;
  @override
  final String? trackingUrl;

  @override
  String toString() {
    return 'Order(id: $id, userId: $userId, restaurantId: $restaurantId, restaurantName: $restaurantName, items: $items, subtotal: $subtotal, deliveryFee: $deliveryFee, tax: $tax, total: $total, status: $status, deliveryAddress: $deliveryAddress, createdAt: $createdAt, estimatedDeliveryTime: $estimatedDeliveryTime, deliveredAt: $deliveredAt, specialInstructions: $specialInstructions, driverId: $driverId, trackingUrl: $trackingUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.estimatedDeliveryTime, estimatedDeliveryTime) ||
                other.estimatedDeliveryTime == estimatedDeliveryTime) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.specialInstructions, specialInstructions) ||
                other.specialInstructions == specialInstructions) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.trackingUrl, trackingUrl) ||
                other.trackingUrl == trackingUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    restaurantId,
    restaurantName,
    const DeepCollectionEquality().hash(_items),
    subtotal,
    deliveryFee,
    tax,
    total,
    status,
    deliveryAddress,
    createdAt,
    estimatedDeliveryTime,
    deliveredAt,
    specialInstructions,
    driverId,
    trackingUrl,
  );

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(this);
  }
}

abstract class _Order implements Order {
  const factory _Order({
    required final String id,
    required final String userId,
    required final String restaurantId,
    required final String restaurantName,
    required final List<OrderItem> items,
    required final double subtotal,
    required final double deliveryFee,
    required final double tax,
    required final double total,
    required final OrderStatus status,
    required final Address deliveryAddress,
    required final DateTime createdAt,
    final DateTime? estimatedDeliveryTime,
    final DateTime? deliveredAt,
    final String? specialInstructions,
    final String? driverId,
    final String? trackingUrl,
  }) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get restaurantId;
  @override
  String get restaurantName;
  @override
  List<OrderItem> get items;
  @override
  double get subtotal;
  @override
  double get deliveryFee;
  @override
  double get tax;
  @override
  double get total;
  @override
  OrderStatus get status;
  @override
  Address get deliveryAddress;
  @override
  DateTime get createdAt;
  @override
  DateTime? get estimatedDeliveryTime;
  @override
  DateTime? get deliveredAt;
  @override
  String? get specialInstructions;
  @override
  String? get driverId;
  @override
  String? get trackingUrl;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  String get menuItemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  List<OrderItemChoice> get choices => throw _privateConstructorUsedError;
  String? get specialInstructions => throw _privateConstructorUsedError;

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call({
    String menuItemId,
    String name,
    double price,
    int quantity,
    List<OrderItemChoice> choices,
    String? specialInstructions,
  });
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuItemId = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = null,
    Object? choices = null,
    Object? specialInstructions = freezed,
  }) {
    return _then(
      _value.copyWith(
            menuItemId:
                null == menuItemId
                    ? _value.menuItemId
                    : menuItemId // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            choices:
                null == choices
                    ? _value.choices
                    : choices // ignore: cast_nullable_to_non_nullable
                        as List<OrderItemChoice>,
            specialInstructions:
                freezed == specialInstructions
                    ? _value.specialInstructions
                    : specialInstructions // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
    _$OrderItemImpl value,
    $Res Function(_$OrderItemImpl) then,
  ) = __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String menuItemId,
    String name,
    double price,
    int quantity,
    List<OrderItemChoice> choices,
    String? specialInstructions,
  });
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
    _$OrderItemImpl _value,
    $Res Function(_$OrderItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuItemId = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = null,
    Object? choices = null,
    Object? specialInstructions = freezed,
  }) {
    return _then(
      _$OrderItemImpl(
        menuItemId:
            null == menuItemId
                ? _value.menuItemId
                : menuItemId // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        choices:
            null == choices
                ? _value._choices
                : choices // ignore: cast_nullable_to_non_nullable
                    as List<OrderItemChoice>,
        specialInstructions:
            freezed == specialInstructions
                ? _value.specialInstructions
                : specialInstructions // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemImpl implements _OrderItem {
  const _$OrderItemImpl({
    required this.menuItemId,
    required this.name,
    required this.price,
    required this.quantity,
    final List<OrderItemChoice> choices = const [],
    this.specialInstructions,
  }) : _choices = choices;

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  final String menuItemId;
  @override
  final String name;
  @override
  final double price;
  @override
  final int quantity;
  final List<OrderItemChoice> _choices;
  @override
  @JsonKey()
  List<OrderItemChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final String? specialInstructions;

  @override
  String toString() {
    return 'OrderItem(menuItemId: $menuItemId, name: $name, price: $price, quantity: $quantity, choices: $choices, specialInstructions: $specialInstructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.menuItemId, menuItemId) ||
                other.menuItemId == menuItemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.specialInstructions, specialInstructions) ||
                other.specialInstructions == specialInstructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    menuItemId,
    name,
    price,
    quantity,
    const DeepCollectionEquality().hash(_choices),
    specialInstructions,
  );

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemImplToJson(this);
  }
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem({
    required final String menuItemId,
    required final String name,
    required final double price,
    required final int quantity,
    final List<OrderItemChoice> choices,
    final String? specialInstructions,
  }) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  String get menuItemId;
  @override
  String get name;
  @override
  double get price;
  @override
  int get quantity;
  @override
  List<OrderItemChoice> get choices;
  @override
  String? get specialInstructions;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemChoice _$OrderItemChoiceFromJson(Map<String, dynamic> json) {
  return _OrderItemChoice.fromJson(json);
}

/// @nodoc
mixin _$OrderItemChoice {
  String get optionId => throw _privateConstructorUsedError;
  String get choiceId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// Serializes this OrderItemChoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemChoiceCopyWith<OrderItemChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemChoiceCopyWith<$Res> {
  factory $OrderItemChoiceCopyWith(
    OrderItemChoice value,
    $Res Function(OrderItemChoice) then,
  ) = _$OrderItemChoiceCopyWithImpl<$Res, OrderItemChoice>;
  @useResult
  $Res call({String optionId, String choiceId, String name, double price});
}

/// @nodoc
class _$OrderItemChoiceCopyWithImpl<$Res, $Val extends OrderItemChoice>
    implements $OrderItemChoiceCopyWith<$Res> {
  _$OrderItemChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionId = null,
    Object? choiceId = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(
      _value.copyWith(
            optionId:
                null == optionId
                    ? _value.optionId
                    : optionId // ignore: cast_nullable_to_non_nullable
                        as String,
            choiceId:
                null == choiceId
                    ? _value.choiceId
                    : choiceId // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderItemChoiceImplCopyWith<$Res>
    implements $OrderItemChoiceCopyWith<$Res> {
  factory _$$OrderItemChoiceImplCopyWith(
    _$OrderItemChoiceImpl value,
    $Res Function(_$OrderItemChoiceImpl) then,
  ) = __$$OrderItemChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String optionId, String choiceId, String name, double price});
}

/// @nodoc
class __$$OrderItemChoiceImplCopyWithImpl<$Res>
    extends _$OrderItemChoiceCopyWithImpl<$Res, _$OrderItemChoiceImpl>
    implements _$$OrderItemChoiceImplCopyWith<$Res> {
  __$$OrderItemChoiceImplCopyWithImpl(
    _$OrderItemChoiceImpl _value,
    $Res Function(_$OrderItemChoiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionId = null,
    Object? choiceId = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(
      _$OrderItemChoiceImpl(
        optionId:
            null == optionId
                ? _value.optionId
                : optionId // ignore: cast_nullable_to_non_nullable
                    as String,
        choiceId:
            null == choiceId
                ? _value.choiceId
                : choiceId // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemChoiceImpl implements _OrderItemChoice {
  const _$OrderItemChoiceImpl({
    required this.optionId,
    required this.choiceId,
    required this.name,
    required this.price,
  });

  factory _$OrderItemChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemChoiceImplFromJson(json);

  @override
  final String optionId;
  @override
  final String choiceId;
  @override
  final String name;
  @override
  final double price;

  @override
  String toString() {
    return 'OrderItemChoice(optionId: $optionId, choiceId: $choiceId, name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemChoiceImpl &&
            (identical(other.optionId, optionId) ||
                other.optionId == optionId) &&
            (identical(other.choiceId, choiceId) ||
                other.choiceId == choiceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, optionId, choiceId, name, price);

  /// Create a copy of OrderItemChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemChoiceImplCopyWith<_$OrderItemChoiceImpl> get copyWith =>
      __$$OrderItemChoiceImplCopyWithImpl<_$OrderItemChoiceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemChoiceImplToJson(this);
  }
}

abstract class _OrderItemChoice implements OrderItemChoice {
  const factory _OrderItemChoice({
    required final String optionId,
    required final String choiceId,
    required final String name,
    required final double price,
  }) = _$OrderItemChoiceImpl;

  factory _OrderItemChoice.fromJson(Map<String, dynamic> json) =
      _$OrderItemChoiceImpl.fromJson;

  @override
  String get optionId;
  @override
  String get choiceId;
  @override
  String get name;
  @override
  double get price;

  /// Create a copy of OrderItemChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemChoiceImplCopyWith<_$OrderItemChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
