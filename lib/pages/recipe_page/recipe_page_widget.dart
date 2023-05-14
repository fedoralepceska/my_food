import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'recipe_page_model.dart';
export 'recipe_page_model.dart';

class RecipePageWidget extends StatefulWidget {
  const RecipePageWidget({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final DocumentReference? recipe;

  @override
  _RecipePageWidgetState createState() => _RecipePageWidgetState();
}

class _RecipePageWidgetState extends State<RecipePageWidget> {
  late RecipePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecipePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<RecipesRecord>(
      stream: RecipesRecord.getDocument(widget.recipe!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final recipePageRecipesRecord = snapshot.data!;
        return YoutubeFullScreenWrapper(
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            appBar: AppBar(
              backgroundColor: Color(0xFFF1CD6A),
              automaticallyImplyLeading: true,
              leading: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pop();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 24.0,
                ),
              ),
              title: Text(
                recipePageRecipesRecord.name!,
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 15.0),
                            child: Image.network(
                              recipePageRecipesRecord.photoUrl!,
                              width: double.infinity,
                              height: 400.0,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 20.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ingredients',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF1E2429),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 0.0),
                                      child: Text(
                                        recipePageRecipesRecord.ingredients!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Playfair Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(
                                      height: 30.0,
                                      thickness: 0.5,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    Text(
                                      'Preparation',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF1E2429),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 0.0),
                                      child: Text(
                                        recipePageRecipesRecord.preparation!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Playfair Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(
                                      height: 30.0,
                                      thickness: 0.5,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    Text(
                                      'Video Url',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF1E2429),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    FlutterFlowYoutubePlayer(
                                      url: recipePageRecipesRecord.videoUrl!,
                                      autoPlay: false,
                                      looping: false,
                                      mute: false,
                                      showControls: true,
                                      showFullScreen: true,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
