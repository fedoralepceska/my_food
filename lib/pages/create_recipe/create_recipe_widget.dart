import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'create_recipe_model.dart';
export 'create_recipe_model.dart';

class CreateRecipeWidget extends StatefulWidget {
  const CreateRecipeWidget({Key? key}) : super(key: key);

  @override
  _CreateRecipeWidgetState createState() => _CreateRecipeWidgetState();
}

class _CreateRecipeWidgetState extends State<CreateRecipeWidget> {
  late CreateRecipeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateRecipeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if ((/* NOT RECOMMENDED */ _model.titleController.text == 'true') &&
          (/* NOT RECOMMENDED */ _model.ingredientsController1.text ==
              'true') &&
          (/* NOT RECOMMENDED */ _model.preparationController.text == 'true')) {
        final recipesCreateData = {
          ...createRecipesRecordData(
            name: _model.titleController.text,
            photoUrl: _model.uploadedFileUrl,
            owner: currentUserReference,
            ingredients: _model.ingredientsController1.text,
            preparation: _model.preparationController.text,
            videoUrl: _model.ingredientsController2.text,
          ),
          'created_at': FieldValue.serverTimestamp(),
          'created_time': FieldValue.serverTimestamp(),
        };
        await RecipesRecord.collection.doc().set(recipesCreateData);

        context.pushNamed('HomePage');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Please fill out all the required fields',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      }
    });

    _model.titleController ??= TextEditingController();
    _model.ingredientsController1 ??= TextEditingController();
    _model.ingredientsController2 ??= TextEditingController();
    _model.preparationController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFFF1CD6A),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Create New Recipe',
          style: FlutterFlowTheme.of(context).titleLarge,
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                child: TextFormField(
                  controller: _model.titleController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Playfair Display',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                    hintText: 'What will your recipe be called',
                    hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Playfair Display',
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).info,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Playfair Display',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                  maxLines: null,
                  validator:
                      _model.titleControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                child: TextFormField(
                  controller: _model.ingredientsController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Ingredients',
                    labelStyle: FlutterFlowTheme.of(context).bodySmall,
                    hintText: 'Write all the ingredients needed',
                    hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Playfair Display',
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).info,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Playfair Display',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                  maxLines: null,
                  validator: _model.ingredientsController1Validator
                      .asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                child: TextFormField(
                  controller: _model.ingredientsController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Youtube Video',
                    labelStyle: FlutterFlowTheme.of(context).bodySmall,
                    hintText: 'Paste a URL Link from your Youtube video',
                    hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Playfair Display',
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).info,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Playfair Display',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                  maxLines: null,
                  validator: _model.ingredientsController2Validator
                      .asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
                child: TextFormField(
                  controller: _model.preparationController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Preparation',
                    labelStyle: FlutterFlowTheme.of(context).bodySmall,
                    hintText: 'Here write how your recipe is made',
                    hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Playfair Display',
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).info,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Playfair Display',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                  textAlign: TextAlign.start,
                  maxLines: 10,
                  validator: _model.preparationControllerValidator
                      .asValidator(context),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final selectedMedia =
                          await selectMediaWithSourceBottomSheet(
                        context: context,
                        allowPhoto: true,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        setState(() => _model.isDataUploading = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];
                        var downloadUrls = <String>[];
                        try {
                          selectedUploadedFiles = selectedMedia
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                    height: m.dimensions?.height,
                                    width: m.dimensions?.width,
                                    blurHash: m.blurHash,
                                  ))
                              .toList();

                          downloadUrls = (await Future.wait(
                            selectedMedia.map(
                              (m) async =>
                                  await uploadData(m.storagePath, m.bytes),
                            ),
                          ))
                              .where((u) => u != null)
                              .map((u) => u!)
                              .toList();
                        } finally {
                          _model.isDataUploading = false;
                        }
                        if (selectedUploadedFiles.length ==
                                selectedMedia.length &&
                            downloadUrls.length == selectedMedia.length) {
                          setState(() {
                            _model.uploadedLocalFile =
                                selectedUploadedFiles.first;
                            _model.uploadedFileUrl = downloadUrls.first;
                          });
                        } else {
                          setState(() {});
                          return;
                        }
                      }
                    },
                    text: _model.uploadedFileUrl,
                    icon: Icon(
                      Icons.image_outlined,
                      size: 36.0,
                    ),
                    options: FFButtonOptions(
                      width: 270.0,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFF1CD6A),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleMedium
                          .override(
                            fontFamily: 'Playfair Display',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if ((_model.titleController.text != '') &&
                          (_model.ingredientsController1.text != '') &&
                          (_model.preparationController.text != '')) {
                        final recipesCreateData = {
                          ...createRecipesRecordData(
                            name: _model.titleController.text,
                            photoUrl: _model.uploadedFileUrl,
                            owner: currentUserReference,
                            ingredients: _model.ingredientsController1.text,
                            preparation: _model.preparationController.text,
                            videoUrl: _model.ingredientsController2.text,
                          ),
                          'created_at': FieldValue.serverTimestamp(),
                          'created_time': FieldValue.serverTimestamp(),
                        };
                        await RecipesRecord.collection
                            .doc()
                            .set(recipesCreateData);

                        context.pushNamed('HomePage');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Please fill all required fields.',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      }
                    },
                    text: 'Add Recipe',
                    icon: Icon(
                      Icons.cloud_upload_outlined,
                      size: 36.0,
                    ),
                    options: FFButtonOptions(
                      width: 270.0,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFF1CD6A),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleMedium
                          .override(
                            fontFamily: 'Playfair Display',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
