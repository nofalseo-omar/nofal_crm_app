import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:flutter/material.dart';


class MainTable extends StatelessWidget {
  const MainTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        margin: const EdgeInsets.all(0),
        color: const Color(0xffFfffff),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text('المشاريع ',
                        style: context.f20700
                            ?.copyWith(color: const Color(0xff020202))),
                    const Spacer(),
                    // CircleAvatar(
                    //   backgroundColor: Colors.grey.shade300,
                    //   radius: 15.sp,
                    //   child: const Icon(
                    //     Icons.arrow_back,
                    //   ),
                    // ),
                    // SizedBox(width: 10.sp),
                    // CircleAvatar(
                    //   radius: 15.sp,
                    //   child: const Icon(Icons.arrow_forward),
                    // ),
                  ],
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
