import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_plan/bloc/sidebar_menu_bloc/sidebar_menu_bloc.dart';
import 'package:master_plan/bloc/sidebar_menu_bloc/sidebar_menu_event.dart';
import 'package:master_plan/bloc/sidebar_menu_bloc/sidebar_menu_state.dart';
import 'package:master_plan/index.dart';
import 'package:master_plan/page/main_page/pages/body_page.dart';

part 'components/menu_data.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => SidebarMenuBloc()
              ..add(
                FetchSidebarMenuEvent(menu: menu_master_plan),
              ),
          ),
        ],
        child: Scaffold(
          backgroundColor: AppColor.greyE2E1E4,
          body: BlocBuilder<SidebarMenuBloc, SidebarMenuState>(
            builder: (context, state) {
              if (state is SidebarMenuSuccess) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: AppColor.black171719,
                      width: 250,
                      child: Column(
                        children: [
                          // Widget at the top side of the sidebar (preference).
                          Container(
                            color: AppColor.black171719,
                            width: 250,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 12,
                                right: 12,
                                bottom: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                    "Project Master Plan",
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Sidebar menu widget
                          Expanded(
                            child: Container(
                              color: AppColor.black171719,
                              child: TreeView.simple(
                                showRootNode: false,
                                tree: menuTree,
                                indentation: const Indentation(width: 0),
                                expansionIndicatorBuilder: (context, node) {
                                  return ChevronIndicator.rightDown(
                                    alignment: Alignment.centerLeft,
                                    tree: node,
                                    color: Colors.white,
                                    icon: Icons.arrow_right,
                                  );
                                },
                                onItemTap: (item) {
                                  String key = item.key;
                                  if (key == menu_customer_and_project) {
                                    key = menu_customer;
                                  }
                                  if (key == menu_report) {
                                    key = menu_report_by_project;
                                  }
                                  BlocProvider.of<SidebarMenuBloc>(context)
                                      .add(FetchSidebarMenuEvent(menu: key));
                                },
                                builder: (context, node) {
                                  final isSelected = state.menu == node.key;
                                  final isExpanded = node.isExpanded;
                                  return MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Container(
                                      color: node.level >= 2 || isExpanded
                                          ? AppColor
                                              .grey313136 // For coloring the background of child nodes
                                          : AppColor.black171719,
                                      height:
                                          42, // Padding between one menu and another.
                                      width: 250,
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: node.level >= 2
                                            ? const EdgeInsets.only(
                                                left:
                                                    27) // Padding for the children of the node
                                            : const EdgeInsets.only(left: 0),
                                        child: Container(
                                          width: 250,
                                          height:
                                              45, // The size dimension of the active button
                                          alignment: Alignment.centerLeft,
                                          decoration: BoxDecoration(
                                            color: isSelected
                                                ? node.isLeaf
                                                    ? AppColor
                                                        .blue2C45E8 // The color for the active node.
                                                    : null
                                                : null,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(50),
                                              bottomLeft: Radius.circular(50),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 25,
                                            ),
                                            child: node.level >= 2
                                                ? TextWidget(
                                                    node.key,
                                                    color: Colors.white,
                                                  )
                                                : Row(
                                                    children: [
                                                      if (node.data != null)
                                                        Icon(
                                                          node.data as IconData,
                                                          size: 20,
                                                          color: Colors.white,
                                                        ),
                                                      const SizedBox(
                                                        width: 6,
                                                      ),
                                                      TextWidget(
                                                        node.key,
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                      )
                                                    ],
                                                  ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: BodyPage(menu: state.menu),
                    ),
                  ],
                );
              } else if (state is SidebarMenuError) {
                return Center(
                  child: TextWidget(
                    "An error has occurred. Please try again later.",
                    color: Colors.white,
                    fontSize: 10,
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }
}
