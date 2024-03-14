import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie/core/resource/styles.dart';

class MearsurementDropDown extends StatelessWidget {
  const MearsurementDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listUnit = [
      "Other",
      "Cups",
      "Table Spoon",
      "Pinch",
      "Gram",
    ];
    return DropdownButtonFormField2(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(
          AppStyles.width(10),
          AppStyles.height(5),
          AppStyles.width(10),
          AppStyles.height(5),
        ),

        // constraints: BoxConstraints.tight(
        //   Size.fromHeight(
        //     AppStyles.height(40),
        //   ),
        // ),
        filled: true,
        fillColor: '#2b2b2b'.toColor(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 5,
          ),
        ),
        hintStyle: AppStyles.f15m().copyWith(
          color: '#FF6B00'.toColor(),
        ),
      ),
      isExpanded: true,
      value: true ? 'Other' : 'emptyname',
      onChanged: true ? (item) => debugPrint(item.toString()) : null,
      dropdownStyleData: DropdownStyleData(
        maxHeight: AppStyles.height(200),
        offset: const Offset(0, -5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: '#2b2b2b'.toColor(),
        ),
      ),
      menuItemStyleData: MenuItemStyleData(
        height: AppStyles.height(60),
        padding: EdgeInsets.only(
          left: AppStyles.width(15),
        ),
      ),
      iconStyleData: IconStyleData(
        openMenuIcon: Icon(
          Icons.arrow_drop_down,
          color: '#FF6B00'.toColor(),
        ),
      ),
      items: listUnit
          .map<DropdownMenuItem<String>>(
            (String unit) => DropdownMenuItem<String>(
              value: unit,
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    unit,
                    style: AppStyles.f12m().copyWith(
                      color: '#FF6B00'.toColor(),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
