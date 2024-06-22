import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utls/api_service.dart';
import '../../data/repos/home_repo_impl.dart';
import '../view_model/home/home_cubit.dart';
import 'widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    //context.read<HomeCubit>().getBanners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: BlocProvider(
          create: (context) => HomeCubit(HomeRepoImpl(
            apiService: ApiService(),
          ))
            ..getBanners(),
          child: const HomeBody(),
        ),
      ),
    );
  }
}
