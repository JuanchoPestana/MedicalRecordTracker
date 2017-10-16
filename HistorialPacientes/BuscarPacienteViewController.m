//
//  BuscarPacienteViewController.m
//  HistorialPacientes
//
//  Created by Juan Pestana on 7/6/15.
//  Copyright (c) 2015 Juan Pestana. All rights reserved.
//

#import "BuscarPacienteViewController.h"

@interface BuscarPacienteViewController ()
{
    // UNO
    sqlite3 *HistorialPacientes;
    NSString *dbPathString;
    
    // DOS
    sqlite3 *HistorialPacientesDOS;
    NSString *dbPathStringDOS;
    
    // TRES
    sqlite3 *HistorialPacientesTRES;
    NSString *dbPathStringTRES;
    
    // CUATRO
    sqlite3 *HistorialPacientesCUATRO;
    NSString *dbPathStringCUATRO;
    
    // CINCO
    sqlite3 *HistorialPacientesCINCO;
    NSString *dbPathStringCINCO;
    
    
    
    // SEIS
    sqlite3 *HistorialPacientesSEIS;
    NSString *dbPathStringSEIS;
    
    // SIETE
    sqlite3 *HistorialPacientesSIETE;
    NSString *dbPathStringSIETE;
    
    // OCHO
    sqlite3 *HistorialPacientesOCHO;
    NSString *dbPathStringOCHO;
    
    // OCHO
    sqlite3 *HistorialPacientesOCHOB;
    NSString *dbPathStringOCHOB;
    
    // NUEVE
    sqlite3 *HistorialPacientesNUEVE;
    NSString *dbPathStringNUEVE;
    
    // DIEZ
    sqlite3 *HistorialPacientesDIEZ;
    NSString *dbPathStringDIEZ;
    
    // ONCE
    sqlite3 *HistorialPacientesONCE;
    NSString *dbPathStringONCE;
    
    // DOCE
    sqlite3 *HistorialPacientesDOCE;
    NSString *dbPathStringDOCE;
    
}


@end

@implementation BuscarPacienteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self createOrOpenDB];
    [self createOrOpenDBDOS];
    [self createOrOpenDBTRES];
    [self createOrOpenDBCUATRO];
    [self createOrOpenDBCINCO];
    [self createOrOpenDBSEIS];
    [self createOrOpenDBSIETE];
    [self createOrOpenDBOCHO];
    [self createOrOpenDBOCHOB];
    [self createOrOpenDBNUEVE];
    [self createOrOpenDBDIEZ];
    [self createOrOpenDBDONCE];
    [self createOrOpenDBDDOCE];
    
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;

    
    
    
    
    
}



// UNO
-(void)createOrOpenDB{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathString = [docPath stringByAppendingPathComponent:@"ficha_identificacion_final.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathString]) {
        const char *dbPath = [dbPathString UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientes)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS FICHA_IDENTIFICACION_FINAL (ID INTEGER PRIMARY KEY AUTOINCREMENT,NOMBRE TEXT, EDAD TEXT, ESTADO_CIVIL TEXT, OCUPACION TEXT, ESCOLARIDAD TEXT, ORIGINARIA TEXT, RELIGION TEXT, RADICA TEXT, FECHA TEXT)";
            sqlite3_exec(HistorialPacientes, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientes);
            
            NSLog(@"TABLA CREADA");
        }
    }
}

// DOS
-(void)createOrOpenDBDOS{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringDOS = [docPath stringByAppendingPathComponent:@"antecedentes_heredo_familiares.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringDOS]) {
        const char *dbPath = [dbPathStringDOS UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesDOS)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS ANTECEDENTES_HEREDO_FAMILIARES (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, PB_CONOCIDO TEXT, PB_DESCONOCIDO TEXT, PB_VIVO TEXT, PB_MUERTO TEXT, PB_NUM_MATRIMONIO TEXT, PB_ESTADO_SALUD TEXT, PB_RELACION_BUENA TEXT, PB_RELACION_MALA TEXT, PB_RELACION_NORMAL TEXT, PB_RELACION_EXPLIQUE TEXT, MB_CONOCIDO TEXT, MB_DESCONOCIDO TEXT, MB_VIVO TEXT, MB_MUERTO TEXT, MB_CAUSA TEXT, MB_NUM_MATRIMONIO TEXT, MB_ESTADO_SALUD TEXT, MB_RELACION_BUENA TEXT, MB_RELACION_MALA TEXT, MB_RELACION_NORMAL TEXT, MB_RELACION_EXPLIQUE TEXT, HERMANOS_NUMERO TEXT, HERMANOS_VIVOS TEXT, HERMANOS_MUERTOS TEXT, HERMANOS_CAUSA TEXT, HERMANOS_RELACION_BUENA TEXT, HERMANOS_RELACION_MALA TEXT, HERMANOS_RELACION_NORMAL TEXT, HERMANOS_RELACION_EXPLIQUE TEXT, HERMANOS_ESTADO_SALUD TEXT, MEDIOHERMANO_NUMERO TEXT,MEDIOHERMANO_VIVOS TEXT, MEDIOHERMANO_MUERTOS TEXT, MEDIOHERMANO_CAUSA TEXT, MEDIOHERMANO_RELACION_BUENA TEXT, MEDIOHERMANO_RELACION_MALA TEXT, MEDIOHERMANO_RELACION_NORMAL TEXT, MEDIOHERMANO_RELACION_EXPLIQUE TEXT, MEDIOHERMANO_ESTADO_SALUD TEXT, ABUELOMATERNO_VIVO TEXT, ABUELOMATERNO_MUERTO TEXT, ABUELOMATERNO_CAUSA TEXT, ABUELOMATERNO_ESTADO_SALUD TEXT, ABUELAMATERNA_VIVO TEXT, ABUELAMATERNA_MUERTO TEXT, ABUELAMATERNA_CAUSA TEXT, ABUELAMATERNA_ESTADO_SALUD TEXT, ABUELOPATERNO_VIVO TEXT, ABUELOPATERNO_MUERTO TEXT, ABUELOPATERNO_CAUSA TEXT, ABUELOPATERNO_ESTADO_SALUD TEXT, ABUELAPATERNA_VIVO TEXT, ABUELAPATERNA_MUERTO TEXT, ABUELAPATERNA_CAUSA TEXT, ABUELAPATERNA_ESTADO_SALUD TEXT, ENFERMEDADES_PSIQUIATRICAS_FAMILIA TEXT, CANCER_FAMILIA TEXT, ENFERMEDADES_IMPORTANTES_FAMILIA TEXT)";
            sqlite3_exec(HistorialPacientesDOS, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesDOS);
            
            NSLog(@"TABLA CREADA 2");
        }
    }
}

// TRES
-(void)createOrOpenDBTRES{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringTRES = [docPath stringByAppendingPathComponent:@"antecedentes_personales_patologicos.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringTRES]) {
        const char *dbPath = [dbPathStringTRES UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesTRES)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS ANTECEDENTES_PERSONALES_PATOLOGICOS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, SOBREPESO_SI TEXT, SOBREPESO_NO TEXT, SOBREPESO_EXPLIQUE TEXT, PESO  TEXT, ESTATURA TEXT, TIPO_PADECIMIENTO TEXT, ANTECEDENTES_QUIRURGICOS_SI TEXT, ANTECEDENTES_QUIRURGICOS_NO TEXT, ANTECEDENTES_QUIRURGICOS_EXPLIQUE TEXT, HOSPITALIZACIONES_SI TEXT, HOSPITALIZACIONES_NO TEXT, HOSPITALIZACIONES_EXPLIQUE TEXT, TABAQUISMO_SI TEXT, TABAQUISMO_NO TEXT, TABAQUISMO_FECHA TEXT, ALCOHOLISMO_SI TEXT, ALCOHOLISMO_NO TEXT, ALCOHOLISMO_FECHA TEXT, ALERGICOS_SI TEXT, ALERGICOS_NO TEXT, ALERGIOS_EXPLIQUE TEXT, DROGAS_SI TEXT, DROGAS_NO TEXT, DROGAS_FECHA TEXT, COCAINA TEXT, MARIHUANA TEXT, HEROINA TEXT, OTRA_DROGA TEXT)";
            sqlite3_exec(HistorialPacientesTRES, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesTRES);
            
            NSLog(@"TABLA CREADA 3");
        }
    }
}


// CUATRO
-(void)createOrOpenDBCUATRO{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringCUATRO = [docPath stringByAppendingPathComponent:@"antecedentes_personales_no_patologicos.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringCUATRO]) {
        const char *dbPath = [dbPathStringCUATRO UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesCUATRO)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS ANTECEDENTES_PERSONALES_NO_PATOLOGICOS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, GRADO_ESCOLAR TEXT, REPROBATORIO_SI TEXT, REPROBATORIO_NO TEXT, REPROBATORIO_CUANTOS TEXT, MOTIVO_REPROBATORIO TEXT, PROMEDIO_ESTUDIOS TEXT, QUEJAS_ESTUDIOS TEXT, BATALLA_AMIGOS_SI TEXT, BATALLA_AMIGOS_NO TEXT, BATALLA_AMIGOS_EXPLIQUE TEXT, CASADA TEXT, SOLTERA TEXT, DIVORCIADA TEXT, VIUDA TEXT, NUMERO_MATRIMONIO TEXT, DEDICA_HOGAR TEXT, DEDICA_TRABAJO TEXT, DEDICA_DESEMPLEADA TEXT, DEDICA_ESTUDIANTE TEXT, TIPO_TRABAJO TEXT, NUMERO_HIJOS TEXT, HIJOUNO_NOMBRE TEXT, HIJOUNO_EDAD TEXT, HIJOUNO_SITUACION TEXT, HIJOUNO_RELACION TEXT, HIJODOS_NOMBRE TEXT, HIJODOS_EDAD TEXT, HIJODOS_SITUACION TEXT, HIJODOS_RELACION TEXT, HIJOTRES_NOMBRE TEXT, HIJOTRES_EDAD TEXT, HIJOTRES_SITUACION TEXT, HIJOTRES_RELACION TEXT, HIJOCUATRO_NOMBRE TEXT, HIJOCUATRO_EDAD TEXT, HIJOCUATRO_SITUACION TEXT, HIJOCUATRO_RELACION TEXT, HIJOCINCO_NOMBRE TEXT, HIJOCINCO_EDAD TEXT, HIJOCINCO_RELACION TEXT, HIJOCINCO_SITUACION TEXT, HIJOSEIS_NOMBRE TEXT, HIJOSEIS_EDAD TEXT, HIJOSEIS_SITUACION TEXT, HIJOSEIS_RELACION TEXT, VIVEN_USTED TEXT, SE_LLEVA_HERMANOS TEXT, LLEVA_MEJOR_FAMILIA TEXT, LLEVAN_PAPAS TEXT, RELACION_LLEVA_PAREJA TEXT, RELACION_LLEVA_HIJOS TEXT)";
            sqlite3_exec(HistorialPacientesCUATRO, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesCUATRO);
            
            NSLog(@"TABLA CREADA 4");
        }
    }
}

// CINCO
-(void)createOrOpenDBCINCO{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringCINCO = [docPath stringByAppendingPathComponent:@"interrogatorio_aparatos_y_sistemas.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringCINCO]) {
        const char *dbPath = [dbPathStringCINCO UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesCINCO)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS INTERROGATORIO_APARATOS_Y_SISTEMAS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, ALTERACIONES_SUENO_SI TEXT, ALTERACIONES_SUENO_NO TEXT, ALTERACIONES_SUENO_EXPLIQUE TEXT, FATIGA_SI TEXT, FATIGA_NO TEXT, FATIGA_EXPLIQUE TEXT, APETITO_NORMAL TEXT, APETITO_AUMENTADO TEXT, APETITO_DISMINUIDO, ALTERACION_PESO_AUMENTADO TEXT, ALTERACION_PESO_DISMINUIDO TEXT, ALTERACION_PESO_NORMAL TEXT, ALTERACION_DISFRUTAR_SI TEXT, ALTERACION_DISFRUTAR_NO TEXT, ALTERACION_DISFRUTAR_EXPLIQUE TEXT, LENTO_ACTIVIDADES_PRESENTE TEXT, LENTO_ACTIVIDADES_AUSENTE TEXT, PROBLEMAS_DIGESTIVOS_SI TEXT, PROBLEMAS_DIGESTIVOS_NO TEXT, PROBLEMAS_DIGESTIVOS_EXPLIQUE TEXT, PROBLEMAS_ARTICULARES_SI TEXT, PROBLEMAS_ARTICULARES_NO TEXT, PROBLEMAS_ARTICULARES_EXPLIQUE TEXT, DOLORES_FRECUENTES_SI TEXT, DOLORES_FRECUENTES_NO TEXT, DOLORES_FRECUENTES_EXPLIQUE TEXT, PROBLEMAS_RINONES_SI TEXT, PROBLEMAS_RINONES_NO TEXT, PROBLEMAS_RINONES_EXPLIQUE TEXT, DIABETES_SI TEXT, DIABETES_NO TEXT, DIABETES_EXPLIQUE TEXT, PROBLEMAS_PULMON_SI TEXT, PROBLEMAS_PULMON_NO TEXT, PROBLEMAS_PULMON_EXPLIQUE TEXT, PROBLEMAS_AUDITIVOS_SI TEXT, PROBLEMAS_AUDITIVOS_NO TEXT, PROBLEMAS_VISUALES_SI TEXT, PROBLEMAS_VISUALES_NO TEXT, PROBLEMAS_CONCENTRACION_SI TEXT, PROBLEMAS_CONCENTRACION_NO TEXT, PROBLEMAS_CONCENTRACION_EXPLIQUE TEXT, PROBLEMAS_TIROIDES_SI TEXT, PROBLEMAS_TIROIDES_NO TEXT, PROBLEMA_TIROIDES_EXPLIQUE TEXT, PADECIMIENTO_SALUD TEXT, DESMAYOS_SI TEXT, DESMAYOS_NO TEXT, DESMAYOS_FRECUENCIA TEXT, DESMAYOS_MOTIVOS TEXT, CANCER_SI TEXT, CANCER_NO TEXT, ENFERMEDADES_FAMILIA TEXT)";
            sqlite3_exec(HistorialPacientesCINCO, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesCINCO);
            
            NSLog(@"TABLA CREADA 5");
        }
    }
}



// SEIS
-(void)createOrOpenDBSEIS{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringSEIS = [docPath stringByAppendingPathComponent:@"motivo_consulta.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringSEIS]) {
        const char *dbPath = [dbPathStringSEIS UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesSEIS)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS MOTIVO_CONSULTA (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, MOTIVO_CONSULTA TEXT)";
            sqlite3_exec(HistorialPacientesSEIS, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesSEIS);
            
            NSLog(@"TABLA CREADA 6");
        }
    }
}



// SIETE
-(void)createOrOpenDBSIETE{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringSIETE = [docPath stringByAppendingPathComponent:@"principio_evolucion_padecimiento.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringSIETE]) {
        const char *dbPath = [dbPathStringSIETE UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesSIETE)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS PRINCIPIO_EVOLUCION_PADECIMIENTO (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, CUANDO_INCIARON TEXT, DESCRIPCION_SINTOMAS TEXT, HOSPITALIZADA_SI TEXT, HOSPITALIZADA_NO TEXT, HOSPITALIZADA_FRECUENCIA TEXT, MEDICAMENTO_SI TEXT, MEDICAMENTO_NO TEXT, MEDICAMENTO_EXPLIQUE TEXT, FUNCIONO_TRATAMIENTO_SI TEXT, FUNCIONO_TRATAMIENTO_NO TEXT, FUNCIONO_TRATAMIENTO_EXPLIQUE TEXT, SIGUE_SINTOMAS_SI TEXT, SIGUE_SINTOMAS_NO TEXT, SIGUE_SINTOMAS_EXPLIQUE TEXT, ACOMPANE_SINTOMAS TEXT)";
            sqlite3_exec(HistorialPacientesSIETE, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesSIETE);
            
            NSLog(@"TABLA CREADA 7");
        }
    }
}


// OCHO
-(void)createOrOpenDBOCHO{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringOCHO = [docPath stringByAppendingPathComponent:@"examen_mental_parte_uno.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringOCHO]) {
        const char *dbPath = [dbPathStringOCHO UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesOCHO)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS EXAMEN_MENTAL_PARTE_UNO (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, FEMENINA TEXT, MASCULINA TEXT, COMENTARIO TEXT, EDAD_IGUAL TEXT, EDAD_MAYOR TEXT, EDAD_EQUIVALENTE TEXT, ESTATURA_BAJA TEXT, ESTATURA_ALTA TEXT, ESTATURA_NORMAL TEXT, COMPLEXION_DELGADA TEXT, COMPLEXION_SOBREPESO TEXT, COMPLEXION_NORMAL TEXT, FACIES_ANCIOSO TEXT, FACIES_PREOCUPADO TEXT, FACIES_TRISTE TEXT, FACIES_DEPRIMIDO TEXT, FACIES_CARACTERISTICAS TEXT, FACIES_OTROS TEXT, SENAS_PRESENTES TEXT, SENAS_AUSENTES TEXT, LUNARES TEXT, FALTA_MIEMBRO TEXT, TATUAJES TEXT, LENTES TEXT, PELO_TENIDO TEXT, PELO_ALINEADO TEXT, PELO_RECOGIDO TEXT, CEJAS_DELINEADAS TEXT, ARETES TEXT, SENAS_OTRAS TEXT, VESIMENTA_BUEN_ESTADO TEXT, VESTIMENTA_MAL_ESTADO TEXT, HIGIENE_PRESENTE TEXT, HIGIENE_AUSENTE TEXT, DISCORDANCIA_SI TEXT, DISCORDANCIA_NO TEXT, TIPO_VESTIMENTA TEXT, MARCHA_RAPIDA TEXT, MARCHA_LENTA TEXT, MARCHA_SIN_ALTERACIONES TEXT, MARCHA_OTRA TEXT, INCOORDINACION_MOTORA TEXT, TICS TEXT, TEMBLORES TEXT, EVASIVO TEXT, INDIFERENTE TEXT, SEDUCTOR TEXT, IRRITABLE TEXT, RETADOR TEXT, TRANQUILO TEXT, TIMIDO TEXT, DESCONFIADO TEXT, COOPERADOR TEXT, AMABLE TEXT, SERENO TEXT, ESTABLE TEXT, QUEJUMBROSO TEXT, ACTITUD_OTROS TEXT)";
            sqlite3_exec(HistorialPacientesOCHO, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesOCHO);
            
            NSLog(@"TABLA CREADA 8");
        }
    }
}


// OCHOB
-(void)createOrOpenDBOCHOB{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringOCHOB = [docPath stringByAppendingPathComponent:@"examen_mental_parte_dos.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringOCHOB]) {
        const char *dbPath = [dbPathStringOCHOB UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesOCHOB)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS EXAMEN_MENTAL_PARTE_DOS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, ALUCINATORIAS_SI TEXT, ALUCINATORIAS_NO TEXT, UBICADO_TIEMPO_SI TEXT, UBICADO_TIEMPO_NO TEXT, UBICADO_LUGAR_SI TEXT, UBICADO_LUGAR_NO TEXT, RECONOCE_SI TEXT, RECONOCE_NO TEXT, JUICIOSO TEXT, SIN_ALTERACION TEXT, RAZONABLE TEXT, NO_RAZONABLE TEXT, DENTRO_REALIDAD TEXT, FUERA_REALIDAD TEXT, DISCURSO_ACELERADO TEXT, DISCURSO_LENTIFICADO TEXT, DISCURSO_NORMAL TEXT, DISCURSO_CONTENIDO TEXT, HUMOR TEXT, AFECTO_DISMINUIDO TEXT, AFECTO_AUMENTADO TEXT, AFECTO_NORMAL TEXT, INTELIGENCIA_ARRIBA TEXT, INTELIGENCIA_ABAJO TEXT, INTELIGENCIA_NORMAL TEXT, ACORDE_SOCIOCULTURAL_SI TEXT, ACORDE_SOCIOCULTURAL_NO TEXT, ACORDE_ESCOLARIDAD_SI TEXT, ACORDE_ESCOLARIDAD_NO TEXT)";
            sqlite3_exec(HistorialPacientesOCHOB, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesOCHOB);
            
            NSLog(@"TABLA CREADA 8B");
        }
    }
}


// NUEVE
-(void)createOrOpenDBNUEVE{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringNUEVE = [docPath stringByAppendingPathComponent:@"diagnostico_multiaxial_final.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringNUEVE]) {
        const char *dbPath = [dbPathStringNUEVE UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesNUEVE)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS DIAGNOSTICO_MULTIAXIAL (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, EJE_UNO_A TEXT, EJE_UNO_B TEXT, EJE_UNO_C TEXT, EJE_DOS_A TEXT, EJE_TRES_A TEXT, EJE_TRES_B TEXT, EJE_CUATRO_LEVE TEXT, EJE_CUATRO_MODERADO TEXT, EJE_CUATRO_GRAVE TEXT, EJE_CUATRO_SEVERO TEXT, EJE_V_BUENO TEXT, EJE_V_MEDIANO TEXT, EJE_V_MEDIOCRE TEXT, EJE_V_MALO TEXT, EJE_V_MOTIVO TEXT)";
            sqlite3_exec(HistorialPacientesNUEVE, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesNUEVE);
            
            NSLog(@"TABLA CREADA 9");
        }
    }
}


// DIEZ
-(void)createOrOpenDBDIEZ{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringDIEZ = [docPath stringByAppendingPathComponent:@"tratamiento.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringDIEZ]) {
        const char *dbPath = [dbPathStringDIEZ UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesDIEZ)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS TRATAMIENTO (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, MEDICAMENTOS TEXT, PSICOLOGICO_SI TEXT, PSICOLOGICO_NO TEXT, TIEMPO_ESTIMADO TEXT, REFERIRLO_SI TEXT, REFERIRLO_NO TEXT, ESPECIALIDAD TEXT)";
            sqlite3_exec(HistorialPacientesDIEZ, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesDIEZ);
            
            NSLog(@"TABLA CREADA 10");
        }
    }
}

// ONCE
-(void)createOrOpenDBDONCE{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringONCE = [docPath stringByAppendingPathComponent:@"pronostico.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringONCE]) {
        const char *dbPath = [dbPathStringONCE UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesONCE)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS PRONOSTICO (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, LIGADO_EVOLUCION TEXT, MALO TEXT, BUENO TEXT, REGULAR TEXT)";
            sqlite3_exec(HistorialPacientesONCE, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesONCE);
            
            NSLog(@"TABLA CREADA 11");
        }
    }
}

// DOCE
-(void)createOrOpenDBDDOCE{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    
    dbPathStringDOCE = [docPath stringByAppendingPathComponent:@"preguntas_adicionales.db"];
    
    char *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:dbPathStringDOCE]) {
        const char *dbPath = [dbPathStringDOCE UTF8String];
        
        if (sqlite3_open(dbPath, &HistorialPacientesDOCE)==SQLITE_OK) {
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS PREGUNTAS_ADICIONALES (ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT, DESCRIBE TEXT, HOBBY TEXT, DESCANSO TEXT)";
            sqlite3_exec(HistorialPacientesDOCE, sql_stmt, NULL, NULL, &error);
            sqlite3_close(HistorialPacientesDOCE);
            
            NSLog(@"TABLA CREADA 12");
        }
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////// AQUI EMPIEZA BOTONES DE BUSCAR //////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////// AQUI EMPIEZA BOTONES DE BUSCAR //////////////////////////////////////////////////////////

- (IBAction)buscar:(id)sender {
    
    
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathString UTF8String], &HistorialPacientes)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM FICHA_IDENTIFICACION_FINAL WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientes, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *edad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *estadoCivil = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *ocupacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *escolaridad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                NSString *originaria = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 6)];
                NSString *religion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 7)];
                NSString *radica = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 8)];
                NSString *fecha = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 9)];
                
                
                
                
                
                NSString *final = [NSString stringWithFormat:@" Edad: %@ \n Estado Civil: %@ \n Ocupacion: %@ \n Escolaridad: %@ \n Originaria: %@ \n Religion: %@ \n Radica: %@ \n Fecha: %@ \n", edad, estadoCivil, ocupacion, escolaridad, originaria, religion, radica, fecha];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
}

- (IBAction)uno:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = NO;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathString UTF8String], &HistorialPacientes)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM FICHA_IDENTIFICACION_FINAL WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientes, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *edad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *estadoCivil = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *ocupacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *escolaridad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                NSString *originaria = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 6)];
                NSString *religion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 7)];
                NSString *radica = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 8)];
                NSString *fecha = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 9)];
                
                
                
                
                
                NSString *final = [NSString stringWithFormat:@" Edad: %@ \n Estado Civil: %@ \n Ocupacion: %@ \n Escolaridad: %@ \n Originaria: %@ \n Religion: %@ \n Radica: %@ \n Fecha: %@ \n", edad, estadoCivil, ocupacion, escolaridad, originaria, religion, radica, fecha];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
    
}

- (IBAction)dosA:(id)sender {
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = NO;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringDOS UTF8String], &HistorialPacientesDOS)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO DOS");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM ANTECEDENTES_HEREDO_FAMILIARES WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesDOS, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *pb_conocido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *pb_desconocido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *pb_vivo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *pb_muerto = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                NSString *pb_matrimonio = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 6)];
                NSString *pb_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 7)];
                NSString *pb_relacion_buena = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 8)];
                NSString *pb_relacion_mala = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 9)];
                NSString *pb_relacion_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 10)];
                NSString *pb_relacion_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 11)];
                
                NSString *mb_conocido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 12)];
                NSString *mb_desconocido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 13)];
                NSString *mb_vivo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 14)];
                NSString *mb_muerto = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 15)];
                NSString *mb_matrimonio = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 16)];
                NSString *mb_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 17)];
                NSString *mb_relacion_buena = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 18)];
                NSString *mb_relacion_mala = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 19)];
                NSString *mb_relacion_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 20)];
                NSString *mb_relacion_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 21)];
                
                NSString *hermanos_numero = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 22)];
                NSString *hermanos_vivos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 23)];
                NSString *hermanos_muertos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 24)];
                NSString *hermanos_causa = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 25)];
                NSString *hermanos_relacion_buena = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 26)];
                NSString *hermanos_relacion_mala = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 27)];
                NSString *hermanos_relacion_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 28)];
                NSString *hermanos_relacion_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 29)];
                NSString *hermanos_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 30)];
                
                NSString *medios_hermanos_numero = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 31)];
                NSString *medios_hermanos_vivos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 32)];
                NSString *medios_hermanos_muertos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 33)];
                NSString *medios_hermanos_causa = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 34)];
                NSString *medios_hermanos_relacion_buena = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 35)];
                NSString *medios_hermanos_relacion_mala = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 36)];
                NSString *medios_hermanos_relacion_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 37)];
                NSString *medios_hermanos_relacion_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 38)];
                NSString *medios_hermanos_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 39)];
                
                
                
                
                
                NSString *final = [NSString stringWithFormat:@" Padre Biologico: \n Conocido: %@ \n Desconocido: %@ \n Vivo: %@ \n Muerto: %@ \n No. de Matrimonio: %@ \n Estado de salud: %@ \n Tipo de relacion: \n Buena: %@ \n Mala: %@ \n Normal: %@ \n Explique: %@ \n \n Madre Biologica: \n Conocido: %@ \n Desconocido: %@ \n Vivo: %@ \n Muerto: %@ \n No. de matrimonio: %@ \n Tipo de relacion: \n Buena: %@ \n Mala: %@ \n Normal: %@ \n Explique: %@ \n \n Hermanos: \n Numero: %@ \n Vivos: %@ \n Muertos: %@ \n Causa: %@ \n Tipo de relacion: \n Buena: %@ \n Mala: %@ \n Normal: %@ \n Explique: %@ \n Estado de salud: %@ \n \n Medios Hermanos: %@ \n Numero: %@ \n Vivos: %@ \n Muertos: %@ \n Causa: %@ \n Tipo de relacion: Buena: %@ \n Mala: %@ \n Normal: %@ \n Explique: %@ \n Estado de salud: %@ \n", pb_conocido, pb_desconocido, pb_vivo, pb_muerto, pb_matrimonio, pb_estado_salud, pb_relacion_buena, pb_relacion_mala, pb_relacion_normal, pb_relacion_explique, mb_conocido, mb_desconocido, mb_vivo, mb_muerto, mb_matrimonio,mb_estado_salud, mb_relacion_buena, mb_relacion_mala, mb_relacion_normal, mb_relacion_explique, hermanos_numero, hermanos_vivos, hermanos_muertos, hermanos_causa, hermanos_relacion_buena, hermanos_relacion_mala, hermanos_relacion_normal, hermanos_relacion_explique, hermanos_estado_salud, medios_hermanos_numero, medios_hermanos_vivos, medios_hermanos_muertos, medios_hermanos_causa, medios_hermanos_relacion_buena, medios_hermanos_relacion_mala, medios_hermanos_relacion_normal, medios_hermanos_relacion_explique, medios_hermanos_estado_salud];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
    
    
}

- (IBAction)dosB:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = NO;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringDOS UTF8String], &HistorialPacientesDOS)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO DOS");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM ANTECEDENTES_HEREDO_FAMILIARES WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesDOS, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                
                NSString *abuelo_materno_vivo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 40)];
                NSString *abuelo_materno_muerto = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 41)];
                NSString *abuelo_materno_causa = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 42)];
                NSString *abuelo_materno_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 43)];
                NSString *abuela_materna_vivo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 44)];
                NSString *abuela_materna_muerto = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 45)];
                NSString *abuela_materna_causa = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 46)];
                NSString *abuela_materna_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 47)];
                NSString *abuelo_paterno_vivo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 48)];
                NSString *abuelo_paterno_muerto = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 49)];
                NSString *abuelo_paterno_causa = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 50)];
                NSString *abuelo_paterno_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 51)];
                NSString *abuela_paterna_vivo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 52)];
                NSString *abuela_paterna_muerto = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 53)];
                NSString *abuela_paterna_causa = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 54)];
                NSString *abuela_paterna_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 55)];
                NSString *enfermedades_psiquiatricas = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 56)];
                NSString *cancer_familia = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 57)];
                NSString *enfermedades_importantes_familia = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 58)];
                
                
                
                
                
                
                NSString *final = [NSString stringWithFormat:@" Abuelo Materno: \n Vivo: %@ \n Muerto: %@ \n Causa: %@ \n Estado de salud: %@ \n \n Abuela Materna: \n Vivo: %@ \n Muerto: %@ \n Causa: %@ \n Estado de salud: %@ \n \n Abuelo Paterno: \n Vivo: %@ \n Muerto: %@ \n Causa: %@ \n Estado de salud: %@ \n \n Abuela Paterna: \n Vivo: %@ \n Muerto: %@ \n Causa: %@ \n Estado de salud: %@ \n \n Enfermedades Psiquiatricas o Neurologicas en la familia: %@ \n \n Cancer en la familia: %@ \n \n Enfermedades importantes en la familia: %@", abuelo_materno_vivo, abuelo_materno_muerto, abuelo_materno_causa, abuelo_materno_estado_salud, abuela_materna_vivo, abuela_materna_muerto, abuela_materna_causa, abuela_materna_estado_salud, abuelo_paterno_vivo, abuelo_paterno_muerto, abuelo_paterno_causa, abuelo_paterno_estado_salud, abuela_paterna_vivo, abuela_paterna_muerto, abuela_paterna_causa, abuela_paterna_estado_salud, enfermedades_psiquiatricas, cancer_familia, enfermedades_importantes_familia];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
    
    
}

- (IBAction)tres:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = NO;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringTRES UTF8String], &HistorialPacientesTRES)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO TRES");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM ANTECEDENTES_PERSONALES_PATOLOGICOS WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesTRES, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                
                NSString *sobrepeso_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *sobrepeso_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *sobrepeso_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *peso = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                NSString *estatura = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 6)];
                NSString *tipo_padecimiento = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 7)];
                NSString *antecedentes_quirurgicos_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 8)];
                NSString *antecedentes_quirurgicos_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 9)];
                NSString *antecedentes_quirurgicos_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 10)];
                NSString *hospitalizaciones_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 11)];
                NSString *hospitalizaciones_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 12)];
                NSString *hospitalizaciones_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 13)];
                NSString *tabaquismo_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 14)];
                NSString *tabaquismo_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 15)];
                NSString *tabaquismo_fecha = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 16)];
                NSString *alcoholismo_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 17)];
                NSString *alcoholismo_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 18)];
                NSString *alcoholismo_fecha = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 19)];
                NSString *alergias_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 20)];
                NSString *alergias_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 21)];
                NSString *alergias_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 22)];
                NSString *drogas_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 23)];
                NSString *drogas_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 24)];
                NSString *drogas_fecha = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 25)];
                NSString *cocaina = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 26)];
                NSString *marihuana = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 27)];
                NSString *heroina = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 28)];
                NSString *otra_droga = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 29)];
                
                
                
                NSString *final = [NSString stringWithFormat:@" Sobrepeso Si: %@ \n Sobrepeso No: %@ \n Sobrepeso explique: %@ \n Peso: %@ \n Estatura: %@ \n Tipo de padecimiento: %@ \n \n Antecedentes quirurgicos Si: %@ \n Antecedentes quirurgicos No: %@ \n Antecedentes quirurgicos Explique: %@ \n \n Hospitalizaciones Si: %@ \n Hospitalizaciones No: %@ \n Hospitalizaciones Explique: %@ \n \n Tabaquismo Si: %@ \n Tabaquismo No: %@ \n Tabaquismo Fecha: %@ \n \n Alcoholismo Si: %@ \n Alcoholismo No: %@ \n Alcoholismo Fecha: %@ \n \n Alergias Si: %@ \n Alergias No: %@ \n Alergias Explique: %@ \n \n Drogas Si: %@ \n Drogas No: %@ \n Drogas Fecha: %@ \n Cocaina: %@ \n Marihuana: %@ \n Heroina: %@ \n Otra Droga: %@", sobrepeso_si, sobrepeso_no, sobrepeso_explique, peso, estatura, tipo_padecimiento, antecedentes_quirurgicos_si, antecedentes_quirurgicos_no, antecedentes_quirurgicos_explique, hospitalizaciones_si, hospitalizaciones_no, hospitalizaciones_explique, tabaquismo_si, tabaquismo_no, tabaquismo_fecha, alcoholismo_si, alcoholismo_no, alcoholismo_fecha, alergias_si, alergias_no, alergias_explique, drogas_si, drogas_no, drogas_fecha, cocaina, marihuana, heroina, otra_droga];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
}

- (IBAction)cuatro:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = NO;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringCUATRO UTF8String], &HistorialPacientesCUATRO)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 4");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM ANTECEDENTES_PERSONALES_NO_PATOLOGICOS WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesCUATRO, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *grado_escolar = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *grado_reprobatorio_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *grado_reprobatorio_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *grado_reprobatorio_cuantos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                NSString *grado_reprobatorio_motivo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 6)];
                NSString *promedio_estudios = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 7)];
                NSString *quejas = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 8)];
                NSString *batalla_amigos_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 9)];
                NSString *batalla_amigos_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 10)];
                NSString *batalla_amigos_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 11)];
                NSString *casada = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 12)];
                NSString *soltera = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 13)];
                NSString *divorciada = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 14)];
                NSString *viuda = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 15)];
                NSString *numero_matrimonios = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 16)];
                NSString *hogar = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 17)];
                NSString *trabajo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 18)];
                NSString *desempleada = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 19)];
                NSString *estudiante = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 20)];
                NSString *tipo_trabajo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 21)];
                NSString *numero_hijos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 22)];
                NSString *hijo_uno_nombre = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 23)];
                NSString *hijo_uno_edad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 24)];
                NSString *hijo_uno_situacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 25)];
                NSString *hijo_uno_relacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 26)];
                NSString *hijo_dos_nombre = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 27)];
                NSString *hijo_dos_edad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 28)];
                NSString *hijo_dos_situacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 29)];
                NSString *hijo_dos_relacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 30)];
                NSString *hijo_tres_nombre = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 31)];
                NSString *hijo_tres_edad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 32)];
                NSString *hijo_tres_situacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 33)];
                NSString *hijo_tres_relacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 34)];
                NSString *hijo_cuatro_nombre = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 35)];
                NSString *hijo_cuatro_edad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 36)];
                NSString *hijo_cuatro_situacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 37)];
                NSString *hijo_cuatro_relacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 38)];
                NSString *hijo_cinco_nombre = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 39)];
                NSString *hijo_cinco_edad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 40)];
                NSString *hijo_cinco_situacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 41)];
                NSString *hijo_cinco_relacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 42)];
                NSString *hijo_seis_nombre = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 43)];
                NSString *hijo_seis_edad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 44)];
                NSString *hijo_seis_situacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 45)];
                NSString *hijo_seis_relacion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 46)];
                NSString *quienes_viven_usted = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 47)];
                NSString *como_se_lleva_hermanos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 48)];
                NSString *quien_se_lleva_mejor_familia = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 49)];
                NSString *como_se_llevan_papas = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 50)];
                NSString *relacion_pareja = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 51)];
                NSString *relacion_hijos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 52)];
                
                
                
                
                
                NSString *final = [NSString stringWithFormat:@" Grado escolar alcanzado: %@ \n Grado escolar reprobatorio: \n Si %@ \n No: %@ \n Cuantos: %@ \n Motivo: %@ \n \n Promedio de estudios: %@ \n Habia quejas contra usted: %@ \n \n Batalla para hacer amigos: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Al momento es: \n Casada: %@ \n Soltera: %@ \n Divorciada: %@ \n Viuda: %@ \n \n Numero de matrimonios: %@ \n A que se dedica: \n Hogar: %@ \n Trabajo: %@ \n Desempleada: %@ \n Estudiante: %@ \n Tipo de trabajo: %@ \n \n Numero de hijos: %@ \n \n Hijo Uno: \n Nombre: %@ \n Edad: %@ \n Situacion actual: %@ \n Tipo de relacion: %@ \n \n Hijo Dos: \n Nombre: %@ \n Edad: %@ \n Situacion actual: %@ \n Tipo de relacion: %@ \n \n Hijo Tres: \n Nombre: %@ \n Edad: %@ \n Situacion actual: %@ \n Tipo de relacion: %@ \n \n Hijo Cuatro: \n Nombre: %@ \n Edad: %@ \n Situacion actual: %@ \n Tipo de relacion: %@ \n \n Hijo Cinco: \n Nombre: %@ \n Edad: %@ \n Situacion actual: %@ \n Tipo de relacion: %@ \n \n Hijo Seis: \n Nombre: %@ \n Edad: %@ \n Situacion actual: %@ \n Tipo de relacion: %@ \n \n Quienes viven con usted en su casa: %@ \n Como se lleva con sus hermanos: %@ \n Con quien se lleva mejor de su familia: %@ \n Como se llevan sus papas: %@ \n Como es la relacion que lleva con su pareja: %@ \n Como es la relacion que lleva con sus hijos: %@ ", grado_escolar, grado_reprobatorio_si, grado_reprobatorio_no, grado_reprobatorio_cuantos, grado_reprobatorio_motivo, promedio_estudios, quejas, batalla_amigos_si, batalla_amigos_no, batalla_amigos_explique, casada, soltera, divorciada, viuda, numero_matrimonios, hogar, trabajo, desempleada, estudiante, tipo_trabajo, numero_hijos, hijo_uno_nombre, hijo_uno_edad, hijo_uno_situacion, hijo_uno_relacion, hijo_dos_nombre, hijo_dos_edad, hijo_dos_situacion, hijo_dos_relacion, hijo_tres_nombre, hijo_tres_edad, hijo_tres_situacion, hijo_tres_relacion, hijo_cuatro_nombre, hijo_cuatro_edad, hijo_cuatro_situacion, hijo_cuatro_relacion, hijo_cinco_nombre, hijo_cinco_edad, hijo_cinco_situacion, hijo_cinco_relacion, hijo_seis_nombre, hijo_seis_edad, hijo_seis_situacion, hijo_seis_relacion, quienes_viven_usted, como_se_lleva_hermanos, quien_se_lleva_mejor_familia, como_se_llevan_papas, relacion_pareja, relacion_hijos];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
    
}

- (IBAction)cinco:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = NO;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringCINCO UTF8String], &HistorialPacientesCINCO)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 5");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM INTERROGATORIO_APARATOS_Y_SISTEMAS WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesCINCO, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *alteraciones_sueno_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *alteraciones_sueno_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *alteraciones_sueno_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *fatiga_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                NSString *fatiga_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 6)];
                NSString *fatiga_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 7)];
                NSString *apetito_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 8)];
                NSString *apetito_aumentado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 9)];
                NSString *apetito_disminuido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 10)];
                NSString *alteraciones_peso_aumentado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 11)];
                NSString *alteraciones_peso_disminuido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 12)];
                NSString *alteraciones_peso_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 13)];
                NSString *alteraciones_disfrutar_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 14)];
                NSString *alteraciones_disfrutar_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 15)];
                NSString *alteraciones_disfrutar_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 16)];
                NSString *inquietud_actividades_presente = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 17)];
                NSString *inquietud_actividades_ausente = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 18)];
                NSString *problemas_digestivos_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 19)];
                NSString *problemas_digestivos_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 20)];
                NSString *problemas_digestivos_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 21)];
                NSString *problemas_articulares_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 22)];
                NSString *problemas_articulares_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 23)];
                NSString *problemas_articulares_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 24)];
                NSString *dolores_frecuentes_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 25)];
                NSString *dolores_frecuentes_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 26)];
                NSString *dolores_frecuentes_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 27)];
                NSString *problemas_rinones_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 28)];
                NSString *problemas_rinones_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 29)];
                NSString *problemas_rinones_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 30)];
                NSString *diabetes_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 31)];
                NSString *diabetes_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 32)];
                NSString *diabetes_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 33)];
                NSString *problemas_pulmon_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 34)];
                NSString *problemas_pulmon_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 35)];
                NSString *problemas_pulmon_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 36)];
                NSString *problemas_auditivos_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 37)];
                NSString *problemas_auditivos_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 38)];
                
                NSString *problemas_visuales_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 39)];
                NSString *problemas_visuales_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 40)];
                NSString *problemas_concentracion_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 41)];
                NSString *problemas_concentracion_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 42)];
                NSString *problemas_concentracion_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 43)];
                NSString *problemas_tiroides_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 44)];
                NSString *problemas_tiroides_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 45)];
                NSString *problemas_tiroides_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 46)];
                NSString *padecimiento_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 47)];
                NSString *desmayos_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 48)];
                NSString *desmayos_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 49)];
                NSString *desmayos_frecuencia = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 50)];
                NSString *desmayos_motivos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 51)];
                
                NSString *cancer_familia_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 52)];
                NSString *cancer_familia_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 53)];
                NSString *enfermedades_familia = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 54)];
                
                
                
                
                
                NSString *final = [NSString stringWithFormat:@" Alteraciones con el sueno: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Fatiga: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Apetito: \n Normal: %@ \n Aumentado: %@ \n Disminuido: %@ \n \n Alteraciones peso: \n Aumentado: %@ \n Disminuido: %@ \n Normal: %@ \n \n Alteracion capacidad disfrutar: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Inquietud/enlentecimiento actividades: \n Presente: %@ \n Ausente: %@ \n \n Problemas digestivos: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Problemas articulares: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Dolores frecuentes: \n Si %@ \n No: %@ \n Explique: %@ \n \n Problemas rinones: \n Si %@ \n No: %@ \n Explique: %@ \n \n Diabetes: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Problemas pulmon: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Problemas auditivos: \n Si: %@ \n No: %@ \n \n Problema visuales: \n Si: %@ \n No: %@ \n \n Problemas concentracion: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Problemas tiroides: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Padecimiento salud: %@ \n \n Desmayos: \n Si: %@ \n No: %@ \n Frecuencia: %@ \n Motivos: %@ \n \n Cancer en familia: \n Si: %@ \n No: %@ \n \n Enfermedades importantes familia: %@ \n  ", alteraciones_sueno_si, alteraciones_sueno_no, alteraciones_sueno_explique, fatiga_si, fatiga_no, fatiga_explique, apetito_normal, apetito_aumentado, apetito_disminuido, alteraciones_peso_aumentado, alteraciones_peso_disminuido, alteraciones_peso_normal, alteraciones_disfrutar_si, alteraciones_disfrutar_no, alteraciones_disfrutar_explique, inquietud_actividades_presente, inquietud_actividades_ausente, problemas_digestivos_si, problemas_digestivos_no, problemas_digestivos_explique, problemas_articulares_si, problemas_articulares_no, problemas_articulares_explique, dolores_frecuentes_si, dolores_frecuentes_no, dolores_frecuentes_explique, problemas_rinones_si, problemas_rinones_no, problemas_rinones_explique, diabetes_si, diabetes_no, diabetes_explique, problemas_pulmon_si, problemas_pulmon_no, problemas_pulmon_explique, problemas_auditivos_si, problemas_auditivos_no, problemas_visuales_si, problemas_visuales_no, problemas_concentracion_si, problemas_concentracion_no, problemas_concentracion_explique, problemas_tiroides_si, problemas_tiroides_no, problemas_tiroides_explique, padecimiento_salud, desmayos_si, desmayos_no, desmayos_frecuencia, desmayos_motivos, cancer_familia_si, cancer_familia_no, enfermedades_familia];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
}

- (IBAction)seis:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = NO;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringSEIS UTF8String], &HistorialPacientesSEIS)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 6");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM MOTIVO_CONSULTA WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesSEIS, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *motivo_consulta = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                
                
                
                
                
                
                NSString *final = [NSString stringWithFormat:@" Motivo consulta: \n \n%@ \n ", motivo_consulta];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
}

- (IBAction)siete:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = NO;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringSIETE UTF8String], &HistorialPacientesSIETE)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 7");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM PRINCIPIO_EVOLUCION_PADECIMIENTO WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesSIETE, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *iniciaron_sintomas = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *descripcion_sintomas = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *hospitalizada_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *hospitalizada_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                NSString *hospitalizada_frecuencia = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 6)];
                NSString *medicamento_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 7)];
                NSString *medicamento_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 8)];
                NSString *medicamento_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 9)];
                NSString *funciono_tratamiento_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 10)];
                NSString *funciono_tratamiento_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 11)];
                NSString *funciono_tratamiento_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 12)];
                NSString *presentando_sintoms_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 13)];
                NSString *presentando_sintoms_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 14)];
                NSString *presentando_sintoms_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 15)];
                NSString *acompane_sintomas = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 16)];
                
                
                
                
                
                NSString *final = [NSString stringWithFormat:@" Cuando iniciaron los sintomas: %@ \n Descripcion de los sintomas: %@ \n \n Ha sido hospitalizada: \n Si: %@ \n No: %@ \n Frecuencia: %@ \n \n Recibio medicamentos para los sintomas: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Le funciono el tratamiento: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Sigue presentando sintomas: \n Si: %@ \n No: %@ \n Explique: %@ \n \n Hay algo mas que acompane a los sintomas: %@ ", iniciaron_sintomas, descripcion_sintomas, hospitalizada_si, hospitalizada_no, hospitalizada_frecuencia, medicamento_si, medicamento_no, medicamento_explique, funciono_tratamiento_si, funciono_tratamiento_no, funciono_tratamiento_explique, presentando_sintoms_si, presentando_sintoms_no, presentando_sintoms_explique, acompane_sintomas];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
}

- (IBAction)ochoA:(id)sender {
    
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = NO;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringOCHO UTF8String], &HistorialPacientesOCHO)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 8");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM EXAMEN_MENTAL_PARTE_UNO WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesOCHO, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *femenina = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *masculina = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *comentario = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *edad_igual = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                NSString *edad_mayor = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 6)];
                NSString *edad_equivalente = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 7)];
                NSString *estatura_baja = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 8)];
                NSString *estatura_alta = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 9)];
                NSString *estatura_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 10)];
                NSString *complexion_delgada = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 11)];
                NSString *complexion_sobrepeso = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 12)];
                NSString *complexion_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 13)];
                NSString *facies_ancioso = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 14)];
                NSString *facies_preocupado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 15)];
                NSString *facies_triste = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 16)];
                NSString *facies_deprimido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 17)];
                NSString *facies_caracteristicas = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 18)];
                NSString *facies_otros = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 19)];
                NSString *senas_presentes = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 20)];
                NSString *senas_ausentes = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 21)];
                NSString *senas_lunares = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 22)];
                NSString *senas_miembro = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 23)];
                NSString *senas_tatuajes = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 24)];
                NSString *senas_lentes = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 25)];
                NSString *senas_pelo_tenido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 26)];
                NSString *senas_pelo_alineado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 27)];
                NSString *senas_pelo_recogido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 28)];
                NSString *senas_cejas_delineadas = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 29)];
                NSString *senas_aretes = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 30)];
                NSString *senas_otras = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 31)];
                NSString *vestimenta_buen_estado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 32)];
                NSString *vestimenta_mal_estado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 33)];
                NSString *higiene_presente = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 34)];
                NSString *higiene_ausente = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 35)];
                NSString *discordancia_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 36)];
                NSString *discordancia_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 37)];
                NSString *tipo_vestimenta = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 38)];
                NSString *marcha_rapida = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 39)];
                NSString *marcha_lenta = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 40)];
                NSString *marcha_alteraciones = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 41)];
                NSString *marcha_otra = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 42)];
                NSString *incoordinacion_motora = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 43)];
                NSString *tics = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 44)];
                NSString *temblores = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 45)];
                NSString *actitud_evasivo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 46)];
                NSString *actitud_indiferente = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 47)];
                NSString *actitud_seductor = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 48)];
                NSString *actitud_irritable = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 49)];
                NSString *actitud_retador = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 50)];
                NSString *actitud_tranquilo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 51)];
                NSString *actitud_timido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 52)];
                NSString *actitud_desconfiado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 53)];
                NSString *actitud_cooperador = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 54)];
                NSString *actitud_amable = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 55)];
                NSString *actitud_sereno = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 56)];
                NSString *actitud_estable = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 57)];
                NSString *actitud_quejumbroso = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 58)];
                NSString *actitud_otros = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 59)];
                
                
                
                
                
                NSString *final = [NSString stringWithFormat:@" Sexo: \n Femenina: %@ \n Masculina: %@ \n Comentario: %@ \n \n Edad Aparente: \n Igual a la cronologica: %@ \n Mayor a la cronologica: %@ \n Equivalente a la cronologica: %@ \n \n Estatura: \n Baja: %@ \n Alta: %@ \n Normal: %@ \n \n Complexion: \n Delgada: %@ \n Sobrepeso: %@ \n Normal: %@ \n \n Facies: \n Ancioso: %@ \n Preocupado: %@ \n Triste: %@ \n Deprimido: %@ \n Sin caracteristicas: %@ \n Otro: %@ \n \n Senas particulares: \n Presente: %@ \n Ausentes: %@ \n Lunares: %@ \n Falta algun miembro: %@ \n Tatuajes: %@ \n Utilizacion de lentes: %@ \n Pelo tenido: %@ \n Pelo alineado: %@ \n Pelo recogido: %@ \n Cejas delineadas: %@ \n Utilizacion de aretes: %@ \n Otras: %@ \n \n Higiene y alino: \n Vestimenta buen estado: %@ \n Vestimenta mal estado: %@ \n Higiene presente: %@ \n Higiene ausente: %@ \n Discordancia en vestir si: %@ \n Discordancia en vestir no: %@ \n Tipo de vestimenta: %@ \n \n Marcha: \n Rapida: %@ \n Lenta: %@ \n Sin alteraciones: %@ \n Otra: %@ \n \n Movimientos anormales: \n Incoordinacion motora: %@ \n Tics: %@ \n Temblores: %@ \n \n Actitud ante la entrevista: \n Evasivo: %@ \n Indiferente: %@ \n Seductor: %@ \n Irritable: %@ \n Retador: %@ \n Tranquilo: %@ \n Timido: %@ \n Desconfiado: %@ \n Cooperador: %@ \n Amable: %@ \n Sereno: %@ \n Estable: %@ \n Quejumbroso: %@ \n Otros: %@", femenina, masculina, comentario, edad_igual, edad_mayor, edad_equivalente, estatura_baja, estatura_alta, estatura_normal, complexion_delgada, complexion_sobrepeso, complexion_normal, facies_ancioso, facies_preocupado, facies_triste, facies_deprimido, facies_caracteristicas, facies_otros, senas_presentes, senas_ausentes, senas_lunares, senas_miembro, senas_tatuajes, senas_lentes, senas_pelo_tenido, senas_pelo_alineado, senas_pelo_recogido, senas_cejas_delineadas, senas_aretes, senas_otras, vestimenta_buen_estado, vestimenta_mal_estado, higiene_presente, higiene_ausente, discordancia_si, discordancia_no, tipo_vestimenta, marcha_rapida, marcha_lenta, marcha_alteraciones, marcha_otra, incoordinacion_motora, tics, temblores, actitud_evasivo, actitud_indiferente, actitud_seductor, actitud_irritable, actitud_retador, actitud_tranquilo, actitud_timido, actitud_desconfiado, actitud_cooperador, actitud_amable, actitud_sereno, actitud_estable, actitud_quejumbroso, actitud_otros];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
    
    
}

- (IBAction)ochoB:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = NO;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringOCHOB UTF8String], &HistorialPacientesOCHOB)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 8B");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM EXAMEN_MENTAL_PARTE_DOS WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesOCHOB, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *alucinatorias_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *alucinatorias_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *ubicado_tiempo_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *ubicado_tiempo_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                NSString *ubicado_lugar_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 6)];
                NSString *ubicado_lugar_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 7)];
                NSString *reconoce_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 8)];
                NSString *reconoce_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 9)];
                NSString *juicioso = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 10)];
                NSString *sin_alteracion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 11)];
                NSString *razonable = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 12)];
                NSString *no_razonable = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 13)];
                NSString *dentro_realidad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 14)];
                NSString *fuera_realidad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 15)];
                NSString *acelerado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 16)];
                NSString *lentificado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 17)];
                NSString *discurso_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 18)];
                NSString *contenido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 19)];
                NSString *humor = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 20)];
                NSString *afecto_disminuido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 21)];
                NSString *afecto_aumentado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 22)];
                NSString *afecto_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 23)];
                NSString *inteligencia_arriba = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 24)];
                NSString *inteligencia_debajo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 25)];
                NSString *inteligencia_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 26)];
                NSString *sociocultural_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 27)];
                NSString *sociocultural_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 28)];
                NSString *escolaridad_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 29)];
                NSString *escolaridad_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 30)];
                
                
                
                
                
                NSString *final = [NSString stringWithFormat:@" Orientacion en tiempo, lugar y persona \n \n Presenta conductas alucinatorias: \n Si: %@ \n No: %@ \n \n Ubicado en el tiempo:\n Si: %@ \n No: %@ \n \n Ubicado en el lugar: \n Si: %@ \n No: %@ \n \n Se reconoce a si misma: \n Si: %@ \n No: %@ \n \n Pensamiento \n \n Discurso (forma): \n Juicioso: %@ \n Sin alteracion: %@ \n Razonable: %@ \n No razonable: %@ \n Dentro de la realidad: %@ \n Fuera de la realidad: %@ \n \n Discurso (curso): \n Acelerado: %@ \n Lentificado: %@ \n Normal: %@ \n \n Discurso (contenido): %@ \n \n Humor: %@ \n \n Afecto: \n Disminuido: %@ \n Aumentado: %@ \n Normal: %@ \n \n Inteligencia: \n Arriba de lo normal: %@ \n Debajo de lo normal: %@ \n Normal: %@ \n \n Fondo de informacion general: \n \n Acorde a su nivel sociocultural: \n Si: %@ \n No: %@ \n \n Acorde a su nivel de escolaridad: \n Si: %@ \n No: %@ \n ", alucinatorias_si, alucinatorias_no, ubicado_tiempo_si, ubicado_tiempo_no, ubicado_lugar_si, ubicado_lugar_no, reconoce_si, reconoce_no, juicioso, sin_alteracion, razonable, no_razonable, dentro_realidad, fuera_realidad, acelerado, lentificado, discurso_normal, contenido, humor, afecto_disminuido, afecto_aumentado, afecto_normal, inteligencia_arriba, inteligencia_debajo, inteligencia_normal, sociocultural_si, sociocultural_no, escolaridad_si, escolaridad_no];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
    
    
    
}

- (IBAction)nueve:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = NO;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringNUEVE UTF8String], &HistorialPacientesNUEVE)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 9");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM DIAGNOSTICO_MULTIAXIAL WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesNUEVE, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *eje_uno_a = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *eje_uno_b = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *eje_uno_c = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *eje_dos_a = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                NSString *eje_tres_a = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 6)];
                NSString *eje_tres_b = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 7)];
                NSString *eje_cuatro_leve = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 8)];
                NSString *eje_cuatro_moderado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 9)];
                NSString *eje_cuatro_grave = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 10)];
                NSString *eje_cuatro_severo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 11)];
                NSString *eje_cinco_bueno = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 12)];
                NSString *eje_cinco_mediano = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 13)];
                NSString *eje_cinco_mediocre = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 14)];
                NSString *eje_cinco_malo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 15)];
                NSString *eje_cinco_motivo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 16)];
                
                NSString *final = [NSString stringWithFormat:@" EJE I (Sindromes diferentes al trastorno de personalidad y problemas de inteligencia) \n A): %@ \n B): %@ \n C): %@ \n \n EJE II (Trastornos o perfiles de la personalidad) \n A): %@ \n \n EJE III (Enfermedades medicas o quirurgicas) \n A): %@ \n B): %@ \n \n EJE IV (Estresor medio ambiental) \n Leve: %@ \n Moderado: %@ \n Grave: %@ \n Severo: %@ \n \n EJE V (Nivel de adaptacion o grado de funcionamiento global) \n Bueno: %@ \n Mediano: %@ \n Mediocre: %@ \n Malo: %@ \n \n Motivo principal de disfuncion global: %@ \n", eje_uno_a, eje_uno_b, eje_uno_c, eje_dos_a, eje_tres_a, eje_tres_b, eje_cuatro_leve, eje_cuatro_moderado, eje_cuatro_grave, eje_cuatro_severo, eje_cinco_bueno, eje_cinco_mediano, eje_cinco_mediocre, eje_cinco_malo, eje_cinco_motivo];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
    
    
    
}

- (IBAction)diez:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = NO;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = YES;
    
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringDIEZ UTF8String], &HistorialPacientesDIEZ)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 10");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM TRATAMIENTO WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesDIEZ, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *medicamentos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *psicologico_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *psicologico_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *tiempo_estimado = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                NSString *referirlo_si = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 6)];
                NSString *referirlo_no = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 7)];
                NSString *especialidad = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 8)];
                
                
                NSString *final = [NSString stringWithFormat:@" Medicamentos: %@ \n \n Tratamiento psicologico: \n Si: %@ \n No: %@ \n Tiempo estimado: %@ \n \n Referirlo a otro especialista: \n Si: %@ \n No: %@ \n Especialidad: %@ \n", medicamentos, psicologico_si, psicologico_no, tiempo_estimado, referirlo_si, referirlo_no, especialidad];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
    
    
}

- (IBAction)once:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = NO;
    _flechitaDoce.hidden = YES;
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringONCE UTF8String], &HistorialPacientesONCE)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 11");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM PRONOSTICO WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesONCE, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *ligado_evolucion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *malo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *bueno = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *regular = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                
                
                NSString *final = [NSString stringWithFormat:@" Ligado a evolucion: %@ \n \n Malo: %@ \n \n Bueno: %@ \n \n Regular: %@ \n", ligado_evolucion, malo, bueno, regular];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
}

- (IBAction)doce:(id)sender {
    
    // FLECHITAS
    
    _flechitaUno.hidden = YES;
    _flechitaDos.hidden = YES;
    _flechitaDosB.hidden = YES;
    _flechitaTres.hidden = YES;
    _flechitaCuatro.hidden = YES;
    _flechitaCinco.hidden = YES;
    _flechitaSeis.hidden = YES;
    _flechitaSiete.hidden = YES;
    _flechitaOcho.hidden = YES;
    _flechitaOchoB.hidden = YES;
    _flechitaNueve.hidden = YES;
    _flechitaDiez.hidden = YES;
    _flechitaOnce.hidden = YES;
    _flechitaDoce.hidden = NO;
    
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathStringDOCE UTF8String], &HistorialPacientesDOCE)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 12");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM PREGUNTAS_ADICIONALES WHERE NOMBRE=\"%@\"", self.nombreBuscar.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesDOCE, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *describe = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *hobby = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *descanso = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                
                
                NSString *final = [NSString stringWithFormat:@" Como se describe a si misma: \n %@ \n \n Hobby: \n %@ \n \n Descanso: \n %@ \n ", describe, hobby, descanso];
                
                [_textViewUNO setString:final];
                [_textViewUNO setEditable:false];
                [[_textViewUNO textStorage] setFont:[NSFont fontWithName:@"Menlo" size:24]];
                
                
            }
        }
    }
    
    
}


@end
