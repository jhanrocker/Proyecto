// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) {
  return _ContactInfo.fromJson(json);
}

/// @nodoc
mixin _$ContactInfo {
// CORREGIDO: Usar lowerCamelCase (Dart) y JsonKey para mapear al snake_case (Firestore).
  @JsonKey(name: 'whatsapp_url')
  String? get whatsappUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'facebook_url')
  String? get facebookUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_url')
  String? get instagramUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'website_url')
  String? get websiteUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactInfoCopyWith<ContactInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactInfoCopyWith<$Res> {
  factory $ContactInfoCopyWith(
          ContactInfo value, $Res Function(ContactInfo) then) =
      _$ContactInfoCopyWithImpl<$Res, ContactInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'whatsapp_url') String? whatsappUrl,
      @JsonKey(name: 'facebook_url') String? facebookUrl,
      @JsonKey(name: 'instagram_url') String? instagramUrl,
      @JsonKey(name: 'website_url') String? websiteUrl});
}

/// @nodoc
class _$ContactInfoCopyWithImpl<$Res, $Val extends ContactInfo>
    implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whatsappUrl = freezed,
    Object? facebookUrl = freezed,
    Object? instagramUrl = freezed,
    Object? websiteUrl = freezed,
  }) {
    return _then(_value.copyWith(
      whatsappUrl: freezed == whatsappUrl
          ? _value.whatsappUrl
          : whatsappUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookUrl: freezed == facebookUrl
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUrl: freezed == instagramUrl
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactInfoImplCopyWith<$Res>
    implements $ContactInfoCopyWith<$Res> {
  factory _$$ContactInfoImplCopyWith(
          _$ContactInfoImpl value, $Res Function(_$ContactInfoImpl) then) =
      __$$ContactInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'whatsapp_url') String? whatsappUrl,
      @JsonKey(name: 'facebook_url') String? facebookUrl,
      @JsonKey(name: 'instagram_url') String? instagramUrl,
      @JsonKey(name: 'website_url') String? websiteUrl});
}

/// @nodoc
class __$$ContactInfoImplCopyWithImpl<$Res>
    extends _$ContactInfoCopyWithImpl<$Res, _$ContactInfoImpl>
    implements _$$ContactInfoImplCopyWith<$Res> {
  __$$ContactInfoImplCopyWithImpl(
      _$ContactInfoImpl _value, $Res Function(_$ContactInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whatsappUrl = freezed,
    Object? facebookUrl = freezed,
    Object? instagramUrl = freezed,
    Object? websiteUrl = freezed,
  }) {
    return _then(_$ContactInfoImpl(
      whatsappUrl: freezed == whatsappUrl
          ? _value.whatsappUrl
          : whatsappUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookUrl: freezed == facebookUrl
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUrl: freezed == instagramUrl
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactInfoImpl implements _ContactInfo {
  const _$ContactInfoImpl(
      {@JsonKey(name: 'whatsapp_url') this.whatsappUrl,
      @JsonKey(name: 'facebook_url') this.facebookUrl,
      @JsonKey(name: 'instagram_url') this.instagramUrl,
      @JsonKey(name: 'website_url') this.websiteUrl});

  factory _$ContactInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactInfoImplFromJson(json);

// CORREGIDO: Usar lowerCamelCase (Dart) y JsonKey para mapear al snake_case (Firestore).
  @override
  @JsonKey(name: 'whatsapp_url')
  final String? whatsappUrl;
  @override
  @JsonKey(name: 'facebook_url')
  final String? facebookUrl;
  @override
  @JsonKey(name: 'instagram_url')
  final String? instagramUrl;
  @override
  @JsonKey(name: 'website_url')
  final String? websiteUrl;

  @override
  String toString() {
    return 'ContactInfo(whatsappUrl: $whatsappUrl, facebookUrl: $facebookUrl, instagramUrl: $instagramUrl, websiteUrl: $websiteUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactInfoImpl &&
            (identical(other.whatsappUrl, whatsappUrl) ||
                other.whatsappUrl == whatsappUrl) &&
            (identical(other.facebookUrl, facebookUrl) ||
                other.facebookUrl == facebookUrl) &&
            (identical(other.instagramUrl, instagramUrl) ||
                other.instagramUrl == instagramUrl) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, whatsappUrl, facebookUrl, instagramUrl, websiteUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactInfoImplCopyWith<_$ContactInfoImpl> get copyWith =>
      __$$ContactInfoImplCopyWithImpl<_$ContactInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactInfoImplToJson(
      this,
    );
  }
}

abstract class _ContactInfo implements ContactInfo {
  const factory _ContactInfo(
          {@JsonKey(name: 'whatsapp_url') final String? whatsappUrl,
          @JsonKey(name: 'facebook_url') final String? facebookUrl,
          @JsonKey(name: 'instagram_url') final String? instagramUrl,
          @JsonKey(name: 'website_url') final String? websiteUrl}) =
      _$ContactInfoImpl;

  factory _ContactInfo.fromJson(Map<String, dynamic> json) =
      _$ContactInfoImpl.fromJson;

  @override // CORREGIDO: Usar lowerCamelCase (Dart) y JsonKey para mapear al snake_case (Firestore).
  @JsonKey(name: 'whatsapp_url')
  String? get whatsappUrl;
  @override
  @JsonKey(name: 'facebook_url')
  String? get facebookUrl;
  @override
  @JsonKey(name: 'instagram_url')
  String? get instagramUrl;
  @override
  @JsonKey(name: 'website_url')
  String? get websiteUrl;
  @override
  @JsonKey(ignore: true)
  _$$ContactInfoImplCopyWith<_$ContactInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AboutUsInfo _$AboutUsInfoFromJson(Map<String, dynamic> json) {
  return _AboutUsInfo.fromJson(json);
}

/// @nodoc
mixin _$AboutUsInfo {
  String? get mission => throw _privateConstructorUsedError;
  String? get vision => throw _privateConstructorUsedError;
  String? get objective => throw _privateConstructorUsedError;
  String? get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutUsInfoCopyWith<AboutUsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutUsInfoCopyWith<$Res> {
  factory $AboutUsInfoCopyWith(
          AboutUsInfo value, $Res Function(AboutUsInfo) then) =
      _$AboutUsInfoCopyWithImpl<$Res, AboutUsInfo>;
  @useResult
  $Res call(
      {String? mission, String? vision, String? objective, String? history});
}

/// @nodoc
class _$AboutUsInfoCopyWithImpl<$Res, $Val extends AboutUsInfo>
    implements $AboutUsInfoCopyWith<$Res> {
  _$AboutUsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mission = freezed,
    Object? vision = freezed,
    Object? objective = freezed,
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      mission: freezed == mission
          ? _value.mission
          : mission // ignore: cast_nullable_to_non_nullable
              as String?,
      vision: freezed == vision
          ? _value.vision
          : vision // ignore: cast_nullable_to_non_nullable
              as String?,
      objective: freezed == objective
          ? _value.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as String?,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutUsInfoImplCopyWith<$Res>
    implements $AboutUsInfoCopyWith<$Res> {
  factory _$$AboutUsInfoImplCopyWith(
          _$AboutUsInfoImpl value, $Res Function(_$AboutUsInfoImpl) then) =
      __$$AboutUsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? mission, String? vision, String? objective, String? history});
}

/// @nodoc
class __$$AboutUsInfoImplCopyWithImpl<$Res>
    extends _$AboutUsInfoCopyWithImpl<$Res, _$AboutUsInfoImpl>
    implements _$$AboutUsInfoImplCopyWith<$Res> {
  __$$AboutUsInfoImplCopyWithImpl(
      _$AboutUsInfoImpl _value, $Res Function(_$AboutUsInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mission = freezed,
    Object? vision = freezed,
    Object? objective = freezed,
    Object? history = freezed,
  }) {
    return _then(_$AboutUsInfoImpl(
      mission: freezed == mission
          ? _value.mission
          : mission // ignore: cast_nullable_to_non_nullable
              as String?,
      vision: freezed == vision
          ? _value.vision
          : vision // ignore: cast_nullable_to_non_nullable
              as String?,
      objective: freezed == objective
          ? _value.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as String?,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutUsInfoImpl implements _AboutUsInfo {
  const _$AboutUsInfoImpl(
      {this.mission, this.vision, this.objective, this.history});

  factory _$AboutUsInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutUsInfoImplFromJson(json);

  @override
  final String? mission;
  @override
  final String? vision;
  @override
  final String? objective;
  @override
  final String? history;

  @override
  String toString() {
    return 'AboutUsInfo(mission: $mission, vision: $vision, objective: $objective, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutUsInfoImpl &&
            (identical(other.mission, mission) || other.mission == mission) &&
            (identical(other.vision, vision) || other.vision == vision) &&
            (identical(other.objective, objective) ||
                other.objective == objective) &&
            (identical(other.history, history) || other.history == history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mission, vision, objective, history);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutUsInfoImplCopyWith<_$AboutUsInfoImpl> get copyWith =>
      __$$AboutUsInfoImplCopyWithImpl<_$AboutUsInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutUsInfoImplToJson(
      this,
    );
  }
}

abstract class _AboutUsInfo implements AboutUsInfo {
  const factory _AboutUsInfo(
      {final String? mission,
      final String? vision,
      final String? objective,
      final String? history}) = _$AboutUsInfoImpl;

  factory _AboutUsInfo.fromJson(Map<String, dynamic> json) =
      _$AboutUsInfoImpl.fromJson;

  @override
  String? get mission;
  @override
  String? get vision;
  @override
  String? get objective;
  @override
  String? get history;
  @override
  @JsonKey(ignore: true)
  _$$AboutUsInfoImplCopyWith<_$AboutUsInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
