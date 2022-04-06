import 'package:dart_logic_programming_1/01_types_variables.dart' as sample_variables;
import 'package:dart_logic_programming_1/02_inference_variables.dart' as sample_inference_variables;
import 'package:dart_logic_programming_1/03_dynamic_variables.dart' as sample_dynamic_variables;
import 'package:dart_logic_programming_1/04_final_variables.dart' as sample_final_variable;
import 'package:dart_logic_programming_1/05_data_input.dart' as sample_data_input;
import 'package:dart_logic_programming_1/06_data_conversion.dart' as  sample_data_conversion;

void main(List<String> arguments) {
  var separate = '\n --------------------------------------- \n';

  sample_variables.execute();
  print(separate);

  sample_inference_variables.execute();
  print(separate);

  sample_dynamic_variables.execute();
  print(separate);

  sample_final_variable.execute();
  print(separate);

  sample_data_input.execute();
  print(separate);

  sample_data_conversion.execute();
  print(separate);
}
