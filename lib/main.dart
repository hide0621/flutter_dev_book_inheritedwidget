import 'package:flutter/material.dart';

/// InheritedWidgetについて
///
/// InheritedWidgetは、ウィジェットの階層を越えてデータを提供することができる
///
/// 階層を越えてウィジェットの再構築をトリガーすることができる
///
/// 今回のサンプルだと、Themeウィジェットのように上位に配置されるウィジェットがStatefulWidgetとして実装されると
/// ThemeDataが更新されるたびに、その配下の全てのウィジェットを再構築する必要があり、パフォーマンスとしてはよくない
/// そこで、InheritedWidgetを使用することで、再構築の対象を限定することができる（今回ならThemeウィジェット）
/// これにより、必要に応じて局所的にウィジェットを再構築しつつ、階層を越えてデータを渡すことができる

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Themeウィジェットは内部でInheritedWidgetを使用している
    final theme = Theme.of(context); // ThemeDataを取得
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
