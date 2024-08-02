template <bool Value>
struct bool_literal {
  static const bool value = Value;
};

struct true_type : bool_literal<true> {};
struct false_type : bool_literal<false> {};

struct is_floating_point : false_type {};
template <> struct is_floating_point<float> : true_type {};
template <> struct is_floating_point<double> : true_type {};
