void main() {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.

  print('1 - Remover os duplicados');
  print('');
  Set<String> listaSemDuplicidade = Set<String>();
  for (String pessoa in pessoas) {
    listaSemDuplicidade.add(pessoa);
  }
  listaSemDuplicidade.forEach((p) => print(p));
  print('');
  print('2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino');

  int totalFeminino = listaSemDuplicidade
      .where((p) => p.split('|')[2] == 'Feminino')
      .toList()
      .length;

  int totalMasculino = listaSemDuplicidade
      .where((p) => p.split('|')[2] == 'Masculino')
      .toList()
      .length;

  print('Total Masculino: $totalMasculino - Total Feminino: $totalFeminino');
  print('');
  print('''
   3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
       e mostre a quantidade de pessoas com mais de 18 anos
  ''');

  var pessoasMaiorDezoito = listaSemDuplicidade
      .where((p) => int.parse(p.split('|')[1]) > 18)
      .toList();

  pessoasMaiorDezoito.forEach((p) => print(
      'Nome: ${p.split('|')[0]}        Idade: ${p.split('|')[1]}     Sexo: ${p.split('|')[1]}'));
  print('Total de Registros: ${pessoasMaiorDezoito.length}');

  print('');
  print('4 - Encontre a pessoa mais velha.');

  pessoasMaiorDezoito.sort((n1, n2) =>
      int.parse(n1.split('|')[1]).compareTo(int.parse(n2.split('|')[1])));
      
  print('A Pessoa mais velha é: ');
  print(
      'Nome: ${pessoasMaiorDezoito.last.split('|')[0]}     Idade: ${pessoasMaiorDezoito.last.split('|')[1]}    Sexo: ${pessoasMaiorDezoito.last.split('|')[2]}');
}
