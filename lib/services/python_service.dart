import 'dart:io';

void runPythonFunction(String functionName, String? arg1) {
// Caminho para o script Python
String pythonScriptPath = 'caminho/para/o/seu/script_python.py'; // Substitua pelo caminho correto

// Argumentos que serão passados para o script Python
//List<String> arguments = ['arg1', 'arg2']; // Substitua pelos argumentos necessários

// Executando o script Python
Process.run('python3', [pythonScriptPath, functionName, '$arg1']).then((ProcessResult result) {
if (result.exitCode == 0) {
print('Função Python $functionName executada com sucesso.');
print('Saída do Python:');
print(result.stdout);
} else {
print("$arg1");
print('Erro ao executar a função Python $functionName.');
print('Erro:');
print(result.stderr);
}
}).catchError((error) {
print('Erro ao executar a função Python $functionName: $error');
});
}