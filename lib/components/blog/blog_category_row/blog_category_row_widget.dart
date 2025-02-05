import '/components/blog/blog_category_item/blog_category_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'blog_category_row_model.dart';
export 'blog_category_row_model.dart';

class BlogCategoryRowWidget extends StatefulWidget {
  const BlogCategoryRowWidget({
    super.key,
    bool? checked,
    bool? last,
  })  : checked = checked ?? true,
        last = last ?? true;

  final bool checked;
  final bool last;

  @override
  State<BlogCategoryRowWidget> createState() => _BlogCategoryRowWidgetState();
}

class _BlogCategoryRowWidgetState extends State<BlogCategoryRowWidget> {
  late BlogCategoryRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogCategoryRowModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Theme(
              data: ThemeData(
                checkboxTheme: const CheckboxThemeData(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: CircleBorder(),
                ),
                unselectedWidgetColor: FlutterFlowTheme.of(context).peachDark,
              ),
              child: Checkbox(
                value: _model.checkboxValue ??= widget.checked,
                onChanged: (newValue) async {
                  safeSetState(() => _model.checkboxValue = newValue!);
                },
                side: BorderSide(
                  width: 2,
                  color: FlutterFlowTheme.of(context).peachDark,
                ),
                activeColor: FlutterFlowTheme.of(context).peachDark,
                checkColor: FlutterFlowTheme.of(context).info,
              ),
            ),
            if ((widget.last != null) && (widget.last == false))
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://scontent.xx.fbcdn.net/v/t1.15752-9/474956479_1559902564703624_6598755787011715991_n.png?_nc_cat=100&ccb=1-7&_nc_sid=0024fc&_nc_ohc=fiyUb7tWkLEQ7kNvgHzO4lt&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gEi52HPfDqJc_Z8BRlohYyI-ZgX7zgAq1gC6K3pni7Z0g&oe=67C1B474',
                  fit: BoxFit.cover,
                ),
              ),
          ],
        ),
        Expanded(
          child: wrapWithModel(
            model: _model.blogCategoryItemModel,
            updateCallback: () => safeSetState(() {}),
            child: BlogCategoryItemWidget(
              image:
                  'https://scontent.xx.fbcdn.net/v/t1.15752-9/474185820_625887133258375_8131549781875534622_n.png?_nc_cat=103&ccb=1-7&_nc_sid=0024fc&_nc_ohc=jkL1-AI7lC4Q7kNvgHeCvg9&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1gGbN5YkAUPaDQ2tnSDY_TNOCQtI3n2DAWh9Fdj_zrXfWA&oe=67C1DCF2',
              title: 'Better connection',
              description: 'Do workouts regularly to improve health.',
              time: '3 min',
              ontap: () async {
                context.pushNamed('BlogItem');
              },
            ),
          ),
        ),
      ],
    );
  }
}
