import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../perfil/perfil_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConclusionWidget extends StatefulWidget {
  const ConclusionWidget({Key key}) : super(key: key);

  @override
  _ConclusionWidgetState createState() => _ConclusionWidgetState();
}

class _ConclusionWidgetState extends State<ConclusionWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF090F13),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PerfilWidget(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_outlined,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 40,
          ),
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
          child: Text(
            'Conclusiones',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).title1.override(
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        actions: [
          Image.network(
            'https://raw.githubusercontent.com/daniel-cedillo/imagenes-para-flutter/main/ojo.png',
            width: 70,
            fit: BoxFit.cover,
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                child: Text(
                  'Flutlab es un programa un poco mas complicado que flutterflow, ya que al contrario de este, si se maneja el codigo, pero solo es cosa de no perder la logica de la estructura e investigar sobre las funciones de cada cosa, si esto se hace al pie de la letra, no es tan dificil hacer una aplicacion en flutlab.\n\nEsta aplicacion me parecio muy interesante e interactiva al realizarla, uno termina agarrandole el gusto sobre todo por el diseño personal que uno le da en base a su imaginacion.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).subtitle1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
