import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/packageTest/cubit/cubits/internet_cubit.dart';

class CubitHome extends StatelessWidget {
  const CubitHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit method implimentation'),
        elevation: 0,
      ),
      body: Center(
        child: BlocConsumer<InternetCubit, InternetState>(
          listener: (context, state) {
            if (state == InternetState.Gained) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Internet connected !'),
                  backgroundColor: Colors.green,
                ),
              );
            } else if (state == InternetState.Lost) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Internet connected !'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state == InternetState.Gained) {
              return Text('Connected !');
            } else if (state == InternetState.Lost) {
              return Text('Not connected !');
            }
            return Text('Loading...');
          },
        ),
      ),
    );
  }
}
