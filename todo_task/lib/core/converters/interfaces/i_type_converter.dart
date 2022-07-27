abstract class ITypeConverter<fromType, toType> {
  fromType decode({required toType data});
  toType encode({required fromType data, String? formate,});
}
