import 'package:cat_breed_app/home/ui/screen/home.screen.dart';
import 'package:cat_breed_app/menu_footer/view_model/menu_footer.view_model.dart';
import 'package:cat_breed_app/voting/ui/screen/vote.screen.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';


/// En MenuFooterScreen se muestra un menú con dos opciones, uno 
/// para ver las información de la razas y el otro para votar. 
class MenuFooterScreen extends StackedView<MenuFooterViewModel> {
  const MenuFooterScreen({super.key});

  @override
  Widget builder(
    BuildContext context,
    MenuFooterViewModel viewModel,
    Widget? child,
  ) => Scaffold(
    appBar: AppBar(title: Text("Cat App")),
    body: IndexedStack(
      index: viewModel.currentIndex,
      children: const [HomeScreen(), VoteScreen()],
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: viewModel.currentIndex,
      onTap: viewModel.setIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Razas'),
        BottomNavigationBarItem(icon: Icon(Icons.thumb_up), label: 'Votar'),
      ],
    ),
  );

  @override
  MenuFooterViewModel viewModelBuilder(BuildContext context) =>
      MenuFooterViewModel();
}
