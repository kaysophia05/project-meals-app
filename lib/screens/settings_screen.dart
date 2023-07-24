import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen(this.onSettingsChanged, {super.key});

  final Function(Settings) onSettingsChanged;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

//O valor correspondente em settings é atualizado por meio da função anônima que é passada para o onChanged do interruptor (switch
//depois que o user escolhe oq quer, o valor atualiza em (Settings)

class _SettingsScreenState extends State<SettingsScreen> {
  var settings = Settings();
  Widget _createSwite(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      // estudar o fucionamento dessa função
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(settings);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.topLeft,
            child: Text('Configurações',
                style: Theme.of(context).textTheme.titleLarge),
          ),
          Expanded(
            child: ListView(
              children: [
                //+=========================ADICIONANDO =====================

                //settings.isGlutenFree: O valor atual da preferência "Sem Glúten" armazenado em settings.
                //Ele será usado para definir se o interruptor estará ligado ou desligado com base na preferência atual do usuário.
                //(value) => setState(() => settings.isGlutenFree = value): Esta é a função para interagir com o interruptor
                // Quando o usuário alterar o valor do interruptor, o valor value (que representa o novo estado do interruptor) será passado para essa função.
                _createSwite(
                  'Sem Glúten',
                  'Só exibir refeições sem glúten',
                  settings.isGlutenFree,
                  //aqui o valor de  settings. é atualuzado
                  (value) => setState(() => settings.isGlutenFree = value),
                ),
                _createSwite(
                  'Sem Lactose',
                  'Só exibir refeições sem lactose',
                  settings.isLactoseFree,
                  (value) => setState(() => settings.isLactoseFree = value),
                ),
                _createSwite(
                  'Vegana',
                  'Só exibir refeições veganas',
                  settings.isVegan,
                  (value) => setState(() => settings.isVegan = value),
                ),
                _createSwite(
                  'Vegetariana',
                  'Só exibir refeições vegeterianas',
                  settings.isVegetarian,
                  (value) => setState(() => settings.isVegetarian = value),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
