import 'package:counter_app_with_flutter_bloc/screens/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                if (context.read<CounterCubit>().counter == -10) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Counter reached -10'),
                    ),
                  );
                }
                if (context.read<CounterCubit>().counter == 10) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Counter reached 10'),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is CounterInitial) {
                  return Text(context.read<CounterCubit>().counter.toString());
                }
                if (state is CounterIncremented) {
                  return Text(context.read<CounterCubit>().counter.toString());
                }
                if (state is CounterDecremented) {
                  return Text(context.read<CounterCubit>().counter.toString());
                }
                return Container();
              },
            ),
            ElevatedButton(
              onPressed: context.read<CounterCubit>().decrement,
              child: Text('Decrement'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterCubit>().increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
