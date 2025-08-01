// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
mixin _$Restaurant {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  String get deliveryTime => throw _privateConstructorUsedError;
  double get deliveryFee => throw _privateConstructorUsedError;
  double get minimumOrder => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<MenuItem> get menu => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  bool get isPromoted => throw _privateConstructorUsedError;
  String? get promoText => throw _privateConstructorUsedError;
  double? get discountPercentage => throw _privateConstructorUsedError;

  /// Serializes this Restaurant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
    Restaurant value,
    $Res Function(Restaurant) then,
  ) = _$RestaurantCopyWithImpl<$Res, Restaurant>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String imageUrl,
    String category,
    double rating,
    int reviewCount,
    String deliveryTime,
    double deliveryFee,
    double minimumOrder,
    bool isOpen,
    String address,
    String city,
    String country,
    double latitude,
    double longitude,
    List<String> tags,
    List<MenuItem> menu,
    bool isFavorite,
    bool isPromoted,
    String? promoText,
    double? discountPercentage,
  });
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res, $Val extends Restaurant>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? category = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? deliveryTime = null,
    Object? deliveryFee = null,
    Object? minimumOrder = null,
    Object? isOpen = null,
    Object? address = null,
    Object? city = null,
    Object? country = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? tags = null,
    Object? menu = null,
    Object? isFavorite = null,
    Object? isPromoted = null,
    Object? promoText = freezed,
    Object? discountPercentage = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            imageUrl:
                null == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            category:
                null == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String,
            rating:
                null == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as double,
            reviewCount:
                null == reviewCount
                    ? _value.reviewCount
                    : reviewCount // ignore: cast_nullable_to_non_nullable
                        as int,
            deliveryTime:
                null == deliveryTime
                    ? _value.deliveryTime
                    : deliveryTime // ignore: cast_nullable_to_non_nullable
                        as String,
            deliveryFee:
                null == deliveryFee
                    ? _value.deliveryFee
                    : deliveryFee // ignore: cast_nullable_to_non_nullable
                        as double,
            minimumOrder:
                null == minimumOrder
                    ? _value.minimumOrder
                    : minimumOrder // ignore: cast_nullable_to_non_nullable
                        as double,
            isOpen:
                null == isOpen
                    ? _value.isOpen
                    : isOpen // ignore: cast_nullable_to_non_nullable
                        as bool,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            city:
                null == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
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
            tags:
                null == tags
                    ? _value.tags
                    : tags // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            menu:
                null == menu
                    ? _value.menu
                    : menu // ignore: cast_nullable_to_non_nullable
                        as List<MenuItem>,
            isFavorite:
                null == isFavorite
                    ? _value.isFavorite
                    : isFavorite // ignore: cast_nullable_to_non_nullable
                        as bool,
            isPromoted:
                null == isPromoted
                    ? _value.isPromoted
                    : isPromoted // ignore: cast_nullable_to_non_nullable
                        as bool,
            promoText:
                freezed == promoText
                    ? _value.promoText
                    : promoText // ignore: cast_nullable_to_non_nullable
                        as String?,
            discountPercentage:
                freezed == discountPercentage
                    ? _value.discountPercentage
                    : discountPercentage // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RestaurantImplCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$$RestaurantImplCopyWith(
    _$RestaurantImpl value,
    $Res Function(_$RestaurantImpl) then,
  ) = __$$RestaurantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String imageUrl,
    String category,
    double rating,
    int reviewCount,
    String deliveryTime,
    double deliveryFee,
    double minimumOrder,
    bool isOpen,
    String address,
    String city,
    String country,
    double latitude,
    double longitude,
    List<String> tags,
    List<MenuItem> menu,
    bool isFavorite,
    bool isPromoted,
    String? promoText,
    double? discountPercentage,
  });
}

/// @nodoc
class __$$RestaurantImplCopyWithImpl<$Res>
    extends _$RestaurantCopyWithImpl<$Res, _$RestaurantImpl>
    implements _$$RestaurantImplCopyWith<$Res> {
  __$$RestaurantImplCopyWithImpl(
    _$RestaurantImpl _value,
    $Res Function(_$RestaurantImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? category = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? deliveryTime = null,
    Object? deliveryFee = null,
    Object? minimumOrder = null,
    Object? isOpen = null,
    Object? address = null,
    Object? city = null,
    Object? country = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? tags = null,
    Object? menu = null,
    Object? isFavorite = null,
    Object? isPromoted = null,
    Object? promoText = freezed,
    Object? discountPercentage = freezed,
  }) {
    return _then(
      _$RestaurantImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        imageUrl:
            null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        category:
            null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String,
        rating:
            null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double,
        reviewCount:
            null == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                    as int,
        deliveryTime:
            null == deliveryTime
                ? _value.deliveryTime
                : deliveryTime // ignore: cast_nullable_to_non_nullable
                    as String,
        deliveryFee:
            null == deliveryFee
                ? _value.deliveryFee
                : deliveryFee // ignore: cast_nullable_to_non_nullable
                    as double,
        minimumOrder:
            null == minimumOrder
                ? _value.minimumOrder
                : minimumOrder // ignore: cast_nullable_to_non_nullable
                    as double,
        isOpen:
            null == isOpen
                ? _value.isOpen
                : isOpen // ignore: cast_nullable_to_non_nullable
                    as bool,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        city:
            null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
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
        tags:
            null == tags
                ? _value._tags
                : tags // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        menu:
            null == menu
                ? _value._menu
                : menu // ignore: cast_nullable_to_non_nullable
                    as List<MenuItem>,
        isFavorite:
            null == isFavorite
                ? _value.isFavorite
                : isFavorite // ignore: cast_nullable_to_non_nullable
                    as bool,
        isPromoted:
            null == isPromoted
                ? _value.isPromoted
                : isPromoted // ignore: cast_nullable_to_non_nullable
                    as bool,
        promoText:
            freezed == promoText
                ? _value.promoText
                : promoText // ignore: cast_nullable_to_non_nullable
                    as String?,
        discountPercentage:
            freezed == discountPercentage
                ? _value.discountPercentage
                : discountPercentage // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantImpl implements _Restaurant {
  const _$RestaurantImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.rating,
    required this.reviewCount,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.minimumOrder,
    required this.isOpen,
    required this.address,
    required this.city,
    required this.country,
    required this.latitude,
    required this.longitude,
    required final List<String> tags,
    final List<MenuItem> menu = const [],
    this.isFavorite = false,
    this.isPromoted = false,
    this.promoText,
    this.discountPercentage,
  }) : _tags = tags,
       _menu = menu;

  factory _$RestaurantImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String category;
  @override
  final double rating;
  @override
  final int reviewCount;
  @override
  final String deliveryTime;
  @override
  final double deliveryFee;
  @override
  final double minimumOrder;
  @override
  final bool isOpen;
  @override
  final String address;
  @override
  final String city;
  @override
  final String country;
  @override
  final double latitude;
  @override
  final double longitude;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<MenuItem> _menu;
  @override
  @JsonKey()
  List<MenuItem> get menu {
    if (_menu is EqualUnmodifiableListView) return _menu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menu);
  }

  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final bool isPromoted;
  @override
  final String? promoText;
  @override
  final double? discountPercentage;

  @override
  String toString() {
    return 'Restaurant(id: $id, name: $name, description: $description, imageUrl: $imageUrl, category: $category, rating: $rating, reviewCount: $reviewCount, deliveryTime: $deliveryTime, deliveryFee: $deliveryFee, minimumOrder: $minimumOrder, isOpen: $isOpen, address: $address, city: $city, country: $country, latitude: $latitude, longitude: $longitude, tags: $tags, menu: $menu, isFavorite: $isFavorite, isPromoted: $isPromoted, promoText: $promoText, discountPercentage: $discountPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.minimumOrder, minimumOrder) ||
                other.minimumOrder == minimumOrder) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._menu, _menu) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.isPromoted, isPromoted) ||
                other.isPromoted == isPromoted) &&
            (identical(other.promoText, promoText) ||
                other.promoText == promoText) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    name,
    description,
    imageUrl,
    category,
    rating,
    reviewCount,
    deliveryTime,
    deliveryFee,
    minimumOrder,
    isOpen,
    address,
    city,
    country,
    latitude,
    longitude,
    const DeepCollectionEquality().hash(_tags),
    const DeepCollectionEquality().hash(_menu),
    isFavorite,
    isPromoted,
    promoText,
    discountPercentage,
  ]);

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      __$$RestaurantImplCopyWithImpl<_$RestaurantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantImplToJson(this);
  }
}

abstract class _Restaurant implements Restaurant {
  const factory _Restaurant({
    required final String id,
    required final String name,
    required final String description,
    required final String imageUrl,
    required final String category,
    required final double rating,
    required final int reviewCount,
    required final String deliveryTime,
    required final double deliveryFee,
    required final double minimumOrder,
    required final bool isOpen,
    required final String address,
    required final String city,
    required final String country,
    required final double latitude,
    required final double longitude,
    required final List<String> tags,
    final List<MenuItem> menu,
    final bool isFavorite,
    final bool isPromoted,
    final String? promoText,
    final double? discountPercentage,
  }) = _$RestaurantImpl;

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$RestaurantImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  String get category;
  @override
  double get rating;
  @override
  int get reviewCount;
  @override
  String get deliveryTime;
  @override
  double get deliveryFee;
  @override
  double get minimumOrder;
  @override
  bool get isOpen;
  @override
  String get address;
  @override
  String get city;
  @override
  String get country;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  List<String> get tags;
  @override
  List<MenuItem> get menu;
  @override
  bool get isFavorite;
  @override
  bool get isPromoted;
  @override
  String? get promoText;
  @override
  double? get discountPercentage;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) {
  return _MenuItem.fromJson(json);
}

/// @nodoc
mixin _$MenuItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String> get allergens => throw _privateConstructorUsedError;
  List<MenuItemOption> get options => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  bool get isPopular => throw _privateConstructorUsedError;
  bool get isVegetarian => throw _privateConstructorUsedError;
  bool get isVegan => throw _privateConstructorUsedError;
  bool get isGlutenFree => throw _privateConstructorUsedError;
  String? get preparationTime => throw _privateConstructorUsedError;

  /// Serializes this MenuItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemCopyWith<MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) then) =
      _$MenuItemCopyWithImpl<$Res, MenuItem>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    double price,
    String imageUrl,
    String category,
    List<String> allergens,
    List<MenuItemOption> options,
    bool isAvailable,
    bool isPopular,
    bool isVegetarian,
    bool isVegan,
    bool isGlutenFree,
    String? preparationTime,
  });
}

/// @nodoc
class _$MenuItemCopyWithImpl<$Res, $Val extends MenuItem>
    implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? category = null,
    Object? allergens = null,
    Object? options = null,
    Object? isAvailable = null,
    Object? isPopular = null,
    Object? isVegetarian = null,
    Object? isVegan = null,
    Object? isGlutenFree = null,
    Object? preparationTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            imageUrl:
                null == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            category:
                null == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String,
            allergens:
                null == allergens
                    ? _value.allergens
                    : allergens // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            options:
                null == options
                    ? _value.options
                    : options // ignore: cast_nullable_to_non_nullable
                        as List<MenuItemOption>,
            isAvailable:
                null == isAvailable
                    ? _value.isAvailable
                    : isAvailable // ignore: cast_nullable_to_non_nullable
                        as bool,
            isPopular:
                null == isPopular
                    ? _value.isPopular
                    : isPopular // ignore: cast_nullable_to_non_nullable
                        as bool,
            isVegetarian:
                null == isVegetarian
                    ? _value.isVegetarian
                    : isVegetarian // ignore: cast_nullable_to_non_nullable
                        as bool,
            isVegan:
                null == isVegan
                    ? _value.isVegan
                    : isVegan // ignore: cast_nullable_to_non_nullable
                        as bool,
            isGlutenFree:
                null == isGlutenFree
                    ? _value.isGlutenFree
                    : isGlutenFree // ignore: cast_nullable_to_non_nullable
                        as bool,
            preparationTime:
                freezed == preparationTime
                    ? _value.preparationTime
                    : preparationTime // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MenuItemImplCopyWith<$Res>
    implements $MenuItemCopyWith<$Res> {
  factory _$$MenuItemImplCopyWith(
    _$MenuItemImpl value,
    $Res Function(_$MenuItemImpl) then,
  ) = __$$MenuItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    double price,
    String imageUrl,
    String category,
    List<String> allergens,
    List<MenuItemOption> options,
    bool isAvailable,
    bool isPopular,
    bool isVegetarian,
    bool isVegan,
    bool isGlutenFree,
    String? preparationTime,
  });
}

/// @nodoc
class __$$MenuItemImplCopyWithImpl<$Res>
    extends _$MenuItemCopyWithImpl<$Res, _$MenuItemImpl>
    implements _$$MenuItemImplCopyWith<$Res> {
  __$$MenuItemImplCopyWithImpl(
    _$MenuItemImpl _value,
    $Res Function(_$MenuItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? category = null,
    Object? allergens = null,
    Object? options = null,
    Object? isAvailable = null,
    Object? isPopular = null,
    Object? isVegetarian = null,
    Object? isVegan = null,
    Object? isGlutenFree = null,
    Object? preparationTime = freezed,
  }) {
    return _then(
      _$MenuItemImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        imageUrl:
            null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        category:
            null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String,
        allergens:
            null == allergens
                ? _value._allergens
                : allergens // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        options:
            null == options
                ? _value._options
                : options // ignore: cast_nullable_to_non_nullable
                    as List<MenuItemOption>,
        isAvailable:
            null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                    as bool,
        isPopular:
            null == isPopular
                ? _value.isPopular
                : isPopular // ignore: cast_nullable_to_non_nullable
                    as bool,
        isVegetarian:
            null == isVegetarian
                ? _value.isVegetarian
                : isVegetarian // ignore: cast_nullable_to_non_nullable
                    as bool,
        isVegan:
            null == isVegan
                ? _value.isVegan
                : isVegan // ignore: cast_nullable_to_non_nullable
                    as bool,
        isGlutenFree:
            null == isGlutenFree
                ? _value.isGlutenFree
                : isGlutenFree // ignore: cast_nullable_to_non_nullable
                    as bool,
        preparationTime:
            freezed == preparationTime
                ? _value.preparationTime
                : preparationTime // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuItemImpl implements _MenuItem {
  const _$MenuItemImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    final List<String> allergens = const [],
    final List<MenuItemOption> options = const [],
    this.isAvailable = true,
    this.isPopular = false,
    this.isVegetarian = false,
    this.isVegan = false,
    this.isGlutenFree = false,
    this.preparationTime,
  }) : _allergens = allergens,
       _options = options;

  factory _$MenuItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final String imageUrl;
  @override
  final String category;
  final List<String> _allergens;
  @override
  @JsonKey()
  List<String> get allergens {
    if (_allergens is EqualUnmodifiableListView) return _allergens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergens);
  }

  final List<MenuItemOption> _options;
  @override
  @JsonKey()
  List<MenuItemOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey()
  final bool isAvailable;
  @override
  @JsonKey()
  final bool isPopular;
  @override
  @JsonKey()
  final bool isVegetarian;
  @override
  @JsonKey()
  final bool isVegan;
  @override
  @JsonKey()
  final bool isGlutenFree;
  @override
  final String? preparationTime;

  @override
  String toString() {
    return 'MenuItem(id: $id, name: $name, description: $description, price: $price, imageUrl: $imageUrl, category: $category, allergens: $allergens, options: $options, isAvailable: $isAvailable, isPopular: $isPopular, isVegetarian: $isVegetarian, isVegan: $isVegan, isGlutenFree: $isGlutenFree, preparationTime: $preparationTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(
              other._allergens,
              _allergens,
            ) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular) &&
            (identical(other.isVegetarian, isVegetarian) ||
                other.isVegetarian == isVegetarian) &&
            (identical(other.isVegan, isVegan) || other.isVegan == isVegan) &&
            (identical(other.isGlutenFree, isGlutenFree) ||
                other.isGlutenFree == isGlutenFree) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    price,
    imageUrl,
    category,
    const DeepCollectionEquality().hash(_allergens),
    const DeepCollectionEquality().hash(_options),
    isAvailable,
    isPopular,
    isVegetarian,
    isVegan,
    isGlutenFree,
    preparationTime,
  );

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      __$$MenuItemImplCopyWithImpl<_$MenuItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuItemImplToJson(this);
  }
}

abstract class _MenuItem implements MenuItem {
  const factory _MenuItem({
    required final String id,
    required final String name,
    required final String description,
    required final double price,
    required final String imageUrl,
    required final String category,
    final List<String> allergens,
    final List<MenuItemOption> options,
    final bool isAvailable,
    final bool isPopular,
    final bool isVegetarian,
    final bool isVegan,
    final bool isGlutenFree,
    final String? preparationTime,
  }) = _$MenuItemImpl;

  factory _MenuItem.fromJson(Map<String, dynamic> json) =
      _$MenuItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override
  String get imageUrl;
  @override
  String get category;
  @override
  List<String> get allergens;
  @override
  List<MenuItemOption> get options;
  @override
  bool get isAvailable;
  @override
  bool get isPopular;
  @override
  bool get isVegetarian;
  @override
  bool get isVegan;
  @override
  bool get isGlutenFree;
  @override
  String? get preparationTime;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuItemOption _$MenuItemOptionFromJson(Map<String, dynamic> json) {
  return _MenuItemOption.fromJson(json);
}

/// @nodoc
mixin _$MenuItemOption {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'size', 'extras', 'choices'
  bool get isRequired => throw _privateConstructorUsedError;
  List<MenuItemChoice> get choices => throw _privateConstructorUsedError;
  int? get maxChoices => throw _privateConstructorUsedError;
  int? get minChoices => throw _privateConstructorUsedError;

  /// Serializes this MenuItemOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MenuItemOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemOptionCopyWith<MenuItemOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemOptionCopyWith<$Res> {
  factory $MenuItemOptionCopyWith(
    MenuItemOption value,
    $Res Function(MenuItemOption) then,
  ) = _$MenuItemOptionCopyWithImpl<$Res, MenuItemOption>;
  @useResult
  $Res call({
    String id,
    String name,
    String type,
    bool isRequired,
    List<MenuItemChoice> choices,
    int? maxChoices,
    int? minChoices,
  });
}

/// @nodoc
class _$MenuItemOptionCopyWithImpl<$Res, $Val extends MenuItemOption>
    implements $MenuItemOptionCopyWith<$Res> {
  _$MenuItemOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuItemOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? isRequired = null,
    Object? choices = null,
    Object? maxChoices = freezed,
    Object? minChoices = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            isRequired:
                null == isRequired
                    ? _value.isRequired
                    : isRequired // ignore: cast_nullable_to_non_nullable
                        as bool,
            choices:
                null == choices
                    ? _value.choices
                    : choices // ignore: cast_nullable_to_non_nullable
                        as List<MenuItemChoice>,
            maxChoices:
                freezed == maxChoices
                    ? _value.maxChoices
                    : maxChoices // ignore: cast_nullable_to_non_nullable
                        as int?,
            minChoices:
                freezed == minChoices
                    ? _value.minChoices
                    : minChoices // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MenuItemOptionImplCopyWith<$Res>
    implements $MenuItemOptionCopyWith<$Res> {
  factory _$$MenuItemOptionImplCopyWith(
    _$MenuItemOptionImpl value,
    $Res Function(_$MenuItemOptionImpl) then,
  ) = __$$MenuItemOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String type,
    bool isRequired,
    List<MenuItemChoice> choices,
    int? maxChoices,
    int? minChoices,
  });
}

/// @nodoc
class __$$MenuItemOptionImplCopyWithImpl<$Res>
    extends _$MenuItemOptionCopyWithImpl<$Res, _$MenuItemOptionImpl>
    implements _$$MenuItemOptionImplCopyWith<$Res> {
  __$$MenuItemOptionImplCopyWithImpl(
    _$MenuItemOptionImpl _value,
    $Res Function(_$MenuItemOptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MenuItemOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? isRequired = null,
    Object? choices = null,
    Object? maxChoices = freezed,
    Object? minChoices = freezed,
  }) {
    return _then(
      _$MenuItemOptionImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        isRequired:
            null == isRequired
                ? _value.isRequired
                : isRequired // ignore: cast_nullable_to_non_nullable
                    as bool,
        choices:
            null == choices
                ? _value._choices
                : choices // ignore: cast_nullable_to_non_nullable
                    as List<MenuItemChoice>,
        maxChoices:
            freezed == maxChoices
                ? _value.maxChoices
                : maxChoices // ignore: cast_nullable_to_non_nullable
                    as int?,
        minChoices:
            freezed == minChoices
                ? _value.minChoices
                : minChoices // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuItemOptionImpl implements _MenuItemOption {
  const _$MenuItemOptionImpl({
    required this.id,
    required this.name,
    required this.type,
    required this.isRequired,
    final List<MenuItemChoice> choices = const [],
    this.maxChoices,
    this.minChoices,
  }) : _choices = choices;

  factory _$MenuItemOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuItemOptionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  // 'size', 'extras', 'choices'
  @override
  final bool isRequired;
  final List<MenuItemChoice> _choices;
  @override
  @JsonKey()
  List<MenuItemChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final int? maxChoices;
  @override
  final int? minChoices;

  @override
  String toString() {
    return 'MenuItemOption(id: $id, name: $name, type: $type, isRequired: $isRequired, choices: $choices, maxChoices: $maxChoices, minChoices: $minChoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.maxChoices, maxChoices) ||
                other.maxChoices == maxChoices) &&
            (identical(other.minChoices, minChoices) ||
                other.minChoices == minChoices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    type,
    isRequired,
    const DeepCollectionEquality().hash(_choices),
    maxChoices,
    minChoices,
  );

  /// Create a copy of MenuItemOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemOptionImplCopyWith<_$MenuItemOptionImpl> get copyWith =>
      __$$MenuItemOptionImplCopyWithImpl<_$MenuItemOptionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuItemOptionImplToJson(this);
  }
}

abstract class _MenuItemOption implements MenuItemOption {
  const factory _MenuItemOption({
    required final String id,
    required final String name,
    required final String type,
    required final bool isRequired,
    final List<MenuItemChoice> choices,
    final int? maxChoices,
    final int? minChoices,
  }) = _$MenuItemOptionImpl;

  factory _MenuItemOption.fromJson(Map<String, dynamic> json) =
      _$MenuItemOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type; // 'size', 'extras', 'choices'
  @override
  bool get isRequired;
  @override
  List<MenuItemChoice> get choices;
  @override
  int? get maxChoices;
  @override
  int? get minChoices;

  /// Create a copy of MenuItemOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemOptionImplCopyWith<_$MenuItemOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuItemChoice _$MenuItemChoiceFromJson(Map<String, dynamic> json) {
  return _MenuItemChoice.fromJson(json);
}

/// @nodoc
mixin _$MenuItemChoice {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;

  /// Serializes this MenuItemChoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MenuItemChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemChoiceCopyWith<MenuItemChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemChoiceCopyWith<$Res> {
  factory $MenuItemChoiceCopyWith(
    MenuItemChoice value,
    $Res Function(MenuItemChoice) then,
  ) = _$MenuItemChoiceCopyWithImpl<$Res, MenuItemChoice>;
  @useResult
  $Res call({String id, String name, double price, bool isAvailable});
}

/// @nodoc
class _$MenuItemChoiceCopyWithImpl<$Res, $Val extends MenuItemChoice>
    implements $MenuItemChoiceCopyWith<$Res> {
  _$MenuItemChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuItemChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? isAvailable = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
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
            isAvailable:
                null == isAvailable
                    ? _value.isAvailable
                    : isAvailable // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MenuItemChoiceImplCopyWith<$Res>
    implements $MenuItemChoiceCopyWith<$Res> {
  factory _$$MenuItemChoiceImplCopyWith(
    _$MenuItemChoiceImpl value,
    $Res Function(_$MenuItemChoiceImpl) then,
  ) = __$$MenuItemChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, double price, bool isAvailable});
}

/// @nodoc
class __$$MenuItemChoiceImplCopyWithImpl<$Res>
    extends _$MenuItemChoiceCopyWithImpl<$Res, _$MenuItemChoiceImpl>
    implements _$$MenuItemChoiceImplCopyWith<$Res> {
  __$$MenuItemChoiceImplCopyWithImpl(
    _$MenuItemChoiceImpl _value,
    $Res Function(_$MenuItemChoiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MenuItemChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? isAvailable = null,
  }) {
    return _then(
      _$MenuItemChoiceImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
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
        isAvailable:
            null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuItemChoiceImpl implements _MenuItemChoice {
  const _$MenuItemChoiceImpl({
    required this.id,
    required this.name,
    required this.price,
    this.isAvailable = true,
  });

  factory _$MenuItemChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuItemChoiceImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  @JsonKey()
  final bool isAvailable;

  @override
  String toString() {
    return 'MenuItemChoice(id: $id, name: $name, price: $price, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemChoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, isAvailable);

  /// Create a copy of MenuItemChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemChoiceImplCopyWith<_$MenuItemChoiceImpl> get copyWith =>
      __$$MenuItemChoiceImplCopyWithImpl<_$MenuItemChoiceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuItemChoiceImplToJson(this);
  }
}

abstract class _MenuItemChoice implements MenuItemChoice {
  const factory _MenuItemChoice({
    required final String id,
    required final String name,
    required final double price,
    final bool isAvailable,
  }) = _$MenuItemChoiceImpl;

  factory _MenuItemChoice.fromJson(Map<String, dynamic> json) =
      _$MenuItemChoiceImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get price;
  @override
  bool get isAvailable;

  /// Create a copy of MenuItemChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemChoiceImplCopyWith<_$MenuItemChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
