import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'healer_bookings_model.dart';
export 'healer_bookings_model.dart';

class HealerBookingsWidget extends StatefulWidget {
  const HealerBookingsWidget({super.key});

  @override
  State<HealerBookingsWidget> createState() => _HealerBookingsWidgetState();
}

class _HealerBookingsWidgetState extends State<HealerBookingsWidget>
    with TickerProviderStateMixin {
  late HealerBookingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HealerBookingsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                'https://images.unsplash.com/photo-1521134017679-e0adda02466e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzZ8fGJhcmJlcnxlbnwwfHwwfHx8MA%3D%3D',
              ).image,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2.0,
                sigmaY: 2.0,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('HomePage');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                shape: BoxShape.circle,
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.safePop();
                                },
                                child: Icon(
                                  Icons.chevron_left_rounded,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 40.0,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'My Bookings',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Raleway',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Opacity(
                            opacity: 0.0,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('MyCart');
                              },
                              child: badges.Badge(
                                badgeContent: Text(
                                  FFAppState().cartitems.toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Raleway',
                                        color: Colors.white,
                                        fontSize: 9.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                showBadge: true,
                                shape: badges.BadgeShape.circle,
                                badgeColor:
                                    FlutterFlowTheme.of(context).primary,
                                elevation: 4.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 8.0, 8.0, 8.0),
                                position: badges.BadgePosition.topStart(),
                                animationType: badges.BadgeAnimationType.scale,
                                toAnimate: true,
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('MyCart');
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.shoppingCart,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 23.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController,
                        focusNode: _model.textFieldFocusNode,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Search for healer',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Raleway',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Raleway',
                              letterSpacing: 0.0,
                            ),
                        maxLines: null,
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: StreamBuilder<List<BookingsRecord>>(
                          stream: queryBookingsRecord(
                            parent: currentUserReference,
                            queryBuilder: (bookingsRecord) =>
                                bookingsRecord.where(
                              'type',
                              isEqualTo: Role.admin.name,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<BookingsRecord> listViewBookingsRecordList =
                                snapshot.data!;

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewBookingsRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewBookingsRecord =
                                    listViewBookingsRecordList[listViewIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: StreamBuilder<UsersRecord>(
                                    stream: UsersRecord.getDocument(
                                        listViewBookingsRecord.uid!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }

                                      final containerUsersRecord =
                                          snapshot.data!;

                                      return Material(
                                        color: Colors.transparent,
                                        elevation: 20.0,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: const Color(0x96FFFFFF),
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFFC6D9EC),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.0),
                                                  child: Image.network(
                                                    containerUsersRecord
                                                        .photoUrl,
                                                    width: 40.0,
                                                    height: 40.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                containerUsersRecord
                                                                    .name,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Raleway',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                containerUsersRecord
                                                                    .surname,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Raleway',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Wrap(
                                                          spacing: 0.0,
                                                          runSpacing: 0.0,
                                                          alignment:
                                                              WrapAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .start,
                                                          direction:
                                                              Axis.horizontal,
                                                          runAlignment:
                                                              WrapAlignment
                                                                  .start,
                                                          verticalDirection:
                                                              VerticalDirection
                                                                  .down,
                                                          clipBehavior:
                                                              Clip.none,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                      "M/d h:mm a",
                                                                      listViewBookingsRecord
                                                                          .time),
                                                                  '0',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Raleway',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 40.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  disabledColor:
                                                      const Color(0xFF878A87),
                                                  icon: Icon(
                                                    Icons.check,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    size: 24.0,
                                                  ),
                                                  onPressed:
                                                      (listViewBookingsRecord
                                                                  .accepted ==
                                                              true)
                                                          ? null
                                                          : () async {
                                                              var confirmDialogResponse =
                                                                  await showDialog<
                                                                          bool>(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                const Text('Cancel Consultation'),
                                                                            content:
                                                                                const Text('Please confirm if you wanna accept '),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                child: const Text('Cancel'),
                                                                              ),
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                child: const Text('Confirm'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      ) ??
                                                                      false;

                                                              await listViewBookingsRecord
                                                                  .reference
                                                                  .update(
                                                                      createBookingsRecordData(
                                                                accepted: true,
                                                              ));
                                                            },
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    icon: Icon(
                                                      Icons.close,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      var confirmDialogResponse =
                                                          await showDialog<
                                                                  bool>(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Cancel Consultation'),
                                                                    content: const Text(
                                                                        'Please confirm if you wanna cancel '),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                        child: const Text(
                                                                            'Cancel'),
                                                                      ),
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                        child: const Text(
                                                                            'Confirm'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              ) ??
                                                              false;
                                                      await listViewBookingsRecord
                                                          .reference
                                                          .delete();
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        const Color(0xFF2BFF37),
                                                    icon: Icon(
                                                      Icons.phone,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      await launchUrl(Uri(
                                                        scheme: 'tel',
                                                        path:
                                                            containerUsersRecord
                                                                .phoneNumber,
                                                      ));
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
