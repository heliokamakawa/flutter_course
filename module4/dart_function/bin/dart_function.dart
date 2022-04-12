import 'package:dart_function/a_dart_function.dart' as dart_function;
import 'package:dart_function/b_function_without_return_arg.dart' as function_without_return_arg;
import 'package:dart_function/c_function_without_return_with_arg.dart' as function_without_return_with_arg;
import 'package:dart_function/d_function_with_return_without_arg.dart' as function_with_return_without_arg;
import 'package:dart_function/e_function_with_return_arg.dart' as function_with_return_arg;

void main(List<String> arguments) {
  dart_function.show();
  function_without_return_arg.show();
  function_without_return_with_arg.show();
  function_with_return_without_arg.show();
  function_with_return_arg.show();
}
