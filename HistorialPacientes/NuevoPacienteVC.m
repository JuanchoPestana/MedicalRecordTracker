//
//  NuevoPacienteVC.m
//  HistorialPacientes
//
//  Created by Juan Pestana on 6/15/15.
//  Copyright (c) 2015 Juan Pestana. All rights reserved.
//

#import "NuevoPacienteVC.h"

@interface NuevoPacienteVC (){
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
    
    // OCHOB
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

@implementation NuevoPacienteVC
@synthesize titulo;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // INICIALIZAR BASE DE DATOS Y CREAR TABLA
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
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = NO;
    
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


        // IMAGE VIEWS
    _imageUno.hidden = YES;
    _imageDos.hidden = YES;
    _imageTres.hidden = YES;
    _imageCuatro.hidden = YES;
    _imageCinco.hidden = YES;
    _imageSeis.hidden = YES;
    _imageSiete.hidden = YES;
    _imageOcho.hidden = YES;
    _imageNueve.hidden = YES;
    _imageDiez.hidden = YES;
    _imageOnce.hidden = YES;
    _imageDoce.hidden = YES;
    _imageTrece.hidden = YES;
    _imageCatorce.hidden = YES;
    _imageQuince.hidden = YES;
    _imageDieciseis.hidden = YES;
    _imageDiecisiete.hidden = YES;
    _imageDieciocho.hidden = YES;
    _imageDiecinueve.hidden = YES;
    _imageVeinte.hidden = YES;
    _imageVeintiuno.hidden = YES;
    _imageVeintidos.hidden = YES;
    _imageVeintitres.hidden = YES;

    
    
    
    
    titulo.stringValue = @"1. FICHA DE IDENTIFICACION";
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;
    

    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;

    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    
    
    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;

    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;

    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;

    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
    
    
}

- (IBAction)uno:(id)sender {
    
    titulo.stringValue = @"1. FICHA DE IDENTIFICACION";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = NO;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // FieldS
    _nombreLabel.hidden = NO;
    _edadLabel.hidden = NO;
    _estadoCivilLabel.hidden = NO;
    _ocupacionLabel.hidden = NO;
    _escolaridadLabel.hidden = NO;
    _originariaLabel.hidden = NO;
    _religionLabel.hidden = NO;
    _radicaLabel.hidden = NO;
    _fechaLabel.hidden = NO;
    
    // TEXTFIELDS
    
    _nombreField.hidden = NO;
    _edadField.hidden = NO;
    _estadoCivilField.hidden = NO;
    _ocupacionField.hidden = NO;
    _escolaridadField.hidden = NO;
    _originariaField.hidden = NO;
    _religionField.hidden = NO;
    _radicaField.hidden = NO;
    _fechaField.hidden = NO;
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;
    
    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    

    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
    
}

- (IBAction)dos:(id)sender {
    
    titulo.stringValue = @"2.A ANTECEDENTES HEREDO-FAMILIARES";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = NO;
    _padreConocidoLabel.hidden = NO;
    _padreDesconocidoLabel.hidden = NO;
    _padreVivoLabel.hidden = NO;
    _padreMuertoLabel.hidden = NO;
    _padreMatrimonioLabel.hidden = NO;
    _padreSaludoLabel.hidden = NO;
    _padreRelacionLabel.hidden = NO;
    _padreRelacionBuenaLabel.hidden = NO;
    _padreRelacionMalaLabel.hidden = NO;
    _padreRelacionNormalLabel.hidden = NO;
    _padreRelacionExpliqueLabel.hidden = NO;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = NO;
    _madreConocidoLabel.hidden = NO;
    _madreDesconocidoLabel.hidden = NO;
    _madreVivoLabel.hidden = NO;
    _madreMuertoLabel.hidden = NO;
    _madreMatrimonioLabel.hidden = NO;
    _madreSaludoLabel.hidden = NO;
    _madreRelacionLabel.hidden = NO;
    _madreRelacionBuenaLabel.hidden = NO;
    _madreRelacionMalaLabel.hidden = NO;
    _madreRelacionNormalLabel.hidden = NO;
    _madreRelacionExpliqueLabel.hidden = NO;
    // HERMANOS
    _hermanosLabel.hidden = NO;
    _heramnosNumeroLabel.hidden = NO;
    _hermanosVivosLabel.hidden = NO;
    _hermanosMuertosLabel.hidden = NO;
    _hermanosCausaLabel.hidden = NO;
    _hermanosRelacionLabel.hidden = NO;
    _hermanosRelacionBuenaLabel.hidden = NO;
    _hermanosRelacionMalaLabel.hidden = NO;
    _hermanosRelacionNormalLabel.hidden = NO;
    _hermanosRelacionExpliqueLabel.hidden = NO;
    _hermanosSaludLabel.hidden = NO;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = NO;
    _mediosHermanosNumeroLabel.hidden = NO;
    _mediosHermanosVivosLabel.hidden = NO;
    _mediosHermanosMuertosLabel.hidden = NO;
    _mediosHermanosCausaLabel.hidden = NO;
    _mediosHermanosRelacionLabel.hidden = NO;
    _mediosHermanosRelacionBuenaLabel.hidden = NO;
    _mediosHermanosRelacionMalaLabel.hidden = NO;
    _mediosHermanosRelacionNormalLabel.hidden = NO;
    _mediosHermanosRelacionExpliqueLabel.hidden = NO;
    _mediosHermanosSaludLabel.hidden = NO;
    
    
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = NO;
    _padreDesconocidoField.hidden = NO;
    _padreVivoField.hidden = NO;
    _padreMuertoField.hidden = NO;
    _padreMatrimonioFIeld.hidden = NO;
    _padreSaludField.hidden = NO;
    _padreRelacionBuenaFIeld.hidden = NO;
    _padreRelacionMalaField.hidden = NO;
    _padreRelacionNormalField.hidden = NO;
    _padreRelacionExpliqueField.hidden = NO;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = NO;
    _madreConocidoField.hidden = NO;
    _madreDesconocidoField.hidden = NO;
    _madreVivoField.hidden = NO;
    _madreMuertoField.hidden = NO;
    _madreMatrimonioFIeld.hidden = NO;
    _madreSaludField.hidden = NO;
    _madreRelacionBuenaFIeld.hidden = NO;
    _madreRelacionMalaField.hidden = NO;
    _madreRelacionNormalField.hidden = NO;
    _madreRelacionExpliqueField.hidden = NO;
    // HERMANOS
    _heramnosNumeroField.hidden = NO;
    _hermanosVivosField.hidden = NO;
    _hermanosMuertosField.hidden = NO;
    _hermanosCausaField.hidden = NO;
    _hermanosRelacionBuenaField.hidden = NO;
    _hermanosRelacionMalaField.hidden = NO;
    _hermanosRelacionNormalField.hidden = NO;
    _hermanosRelacionExpliqueField.hidden = NO;
    _hermanosSaludField.hidden = NO;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = NO;
    _mediosHermanosVivosField.hidden = NO;
    _mediosHermanosMuertosField.hidden = NO;
    _mediosHermanosCausaField.hidden = NO;
    _mediosHermanosRelacionBuenaField.hidden = NO;
    _mediosHermanosRelacionMalaField.hidden = NO;
    _mediosHermanosRelacionNormalField.hidden = NO;
    _mediosHermanosRelacionExpliqueField.hidden = NO;
    _mediosHermanosSaludField.hidden = NO;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;
    
    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    

    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
    
}

- (IBAction)dosB:(id)sender {
    titulo.stringValue = @"2.B ANTECEDENTES HEREDO-FAMILIARES";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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

    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;
    
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;

    
    
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = NO;
    _abueloMaternoVivoLabel.hidden = NO;
    _abueloMaternoMuertoLabel.hidden = NO;
    _abueloMaternoCausaLabel.hidden = NO;
    _abueloMaternoSaludLabel.hidden = NO;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = NO;
    _abuelaMaternaVivoLabel.hidden = NO;
    _abuelaMaternaMuertoLabel.hidden = NO;
    _abuelaMaternaCausaLabel.hidden = NO;
    _abuelaMaternaSaludLabel.hidden = NO;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = NO;
    _abueloPaternoVivoLabel.hidden = NO;
    _abueloPaternoMuertoLabel.hidden = NO;
    _abueloPaternoCausaLabel.hidden = NO;
    _abueloPaternoSaludLabel.hidden = NO;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = NO;
    _abuelaPaternaVivoLabel.hidden = NO;
    _abuelaPaternaMuertoLabel.hidden = NO;
    _abuelaPaternaCausaLabel.hidden = NO;
    _abuelaPaternaSaludLabel.hidden = NO;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = NO;
    _cancerFamiliaLabel.hidden = NO;
    _enfermedadesImportantesLabel.hidden = NO;
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;

    
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = NO;
    _abueloMaternoMuertoField.hidden = NO;
    _abueloMaternoCausaField.hidden = NO;
    _abueloMaternoSaludField.hidden = NO;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = NO;
    _abuelaMaternaMuertoField.hidden = NO;
    _abuelaMaternaCausaField.hidden = NO;
    _abuelaMaternaSaludField.hidden = NO;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = NO;
    _abueloPaternoMuertoField.hidden = NO;
    _abueloPaternoCausaField.hidden = NO;
    _abueloPaternoSaludField.hidden = NO;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = NO;
    _abuelaPaternaMuertoField.hidden = NO;
    _abuelaPaternaCausaField.hidden = NO;
    _abuelaPaternaSaludField.hidden = NO;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = NO;
    _cancerFamiliaField.hidden = NO;
    _enfermedadesImportantesFamiliaField.hidden = NO;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;

    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    

    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
}

- (IBAction)tres:(id)sender {
    
    titulo.stringValue = @"3. ANTECEDENTES PERSONALES-PATOLOGICOS";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = NO;
    _sobrepesoSiLabel.hidden = NO;
    _sobrepesoNoLabel.hidden = NO;
    _sobrepesoExpliqueLabel.hidden = NO;
    _pesoLabel.hidden = NO;
    _estaturaLabel.hidden = NO;
    _tipoPadecimientoLabel.hidden = NO;
    _antecedentesQuirurgicosLabel.hidden = NO;
    _antecedentesQuirurgicosSiLabel.hidden = NO;
    _antecedentesQuirurgicosNoLabel.hidden = NO;
    _antecedentesQuirurgicosExpliqueLabel.hidden = NO;
    _hospitalizacionesLabel.hidden = NO;
    _hospitalizacionesSiLabel.hidden = NO;
    _hospitalizacionesNoLabel.hidden = NO;
    _hospitalizacionesExpliqueLabel.hidden = NO;
    _antecedentesTabaquismoLabel.hidden = NO;
    _antecedentesTabaquismoSiLabel.hidden = NO;
    _antecedentesTabaquismoNoLabel.hidden = NO;
    _antecedentesTabaquismoFechaLabel.hidden = NO;
    _antecedentesAlcoholismoLabel.hidden = NO;
    _antecedentesAlcoholismoSiLabel.hidden = NO;
    _antecedentesAlcoholismoNoLabel.hidden = NO;
    _antecedentesAlcoholismoFechaLabel.hidden = NO;
    _antecedentesAlergicosLabel.hidden = NO;
    _antecedentesAlergicosSiLabel.hidden = NO;
    _antecedentesAlergicosNoLabel.hidden = NO;
    _antecedentesAlergicosExpliqueLabel.hidden = NO;
    _antecedentesDrogasLabel.hidden = NO;
    _antecedentesDrogasSiLabel.hidden = NO;
    _antecedentesDrogasNoLabel.hidden = NO;
    _antecedentesDrogasFechaLabel.hidden = NO;
    _drogaUtilizadaLabel.hidden = NO;
    _cocainaLabel.hidden = NO;
    _marihuanaLabel.hidden = NO;
    _heroinaLabel.hidden = NO;
    _drogaUtilizadaOtrasLabel.hidden = NO;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = NO;
    _sobrepesoNoField.hidden = NO;
    _sobrepesoExpliqueField.hidden = NO;
    _pesoField.hidden = NO;
    _estaturaField.hidden = NO;
    _tipoPadecimientoField.hidden = NO;
    _antecedentesQuirurgicosSiField.hidden = NO;
    _antecedentesQuirurgicosNoField.hidden = NO;
    _antecedentesQuirurgicosExpliqueField.hidden = NO;
    _hospitalizacionesSiField.hidden = NO;
    _hospitalizacionesNoField.hidden = NO;
    _hospitalizacionesExpliqueField.hidden = NO;
    _antecedentesTabaquismoSiField.hidden = NO;
    _antecedentesTabaquismoNoField.hidden = NO;
    _antecedentesTabaquismoFechaField.hidden = NO;
    _antecedentesAlcoholismoSiField.hidden = NO;
    _antecedentesAlcoholismoNoField.hidden = NO;
    _antecedentesAlcoholismoFechaField.hidden = NO;
    _antecedentesAlergicosSiField.hidden = NO;
    _antecedentesAlergicosNoField.hidden = NO;
    _antecedentesAlergicosExpliqueField.hidden = NO;
    _antecedentesDrogasSiField.hidden = NO;
    _antecedentesDrogasNoField.hidden = NO;
    _antecedentesDrogasFechaField.hidden = NO;
    _cocainaField.hidden = NO;
    _marihuanaField.hidden = NO;
    _heroinaField.hidden = NO;
    _drogaUitlizadaOtrasField.hidden = NO;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;
    
    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    

    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;

}

- (IBAction)cuatro:(id)sender {
    
    titulo.stringValue = @"4. ANTECEDENTES PERSONALES-NO PATOLOGICOS";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = NO;
    _gradoReprobatorioLabel.hidden = NO;
    _gradoReprobatorioSiLabel.hidden = NO;
    _gradoReprobatorioNoLabel.hidden = NO;
    _gradoReprobatorioCuantosLabel.hidden = NO;
    _gradoRepobratorioMotivoLabel.hidden = NO;
    _promedioEstudioLabel.hidden = NO;
    _quejasLabel.hidden = NO;
    _batallaAmigosLabel.hidden = NO;
    _batallaAmigosSiLabel.hidden = NO;
    _batallaAmigosNoLabel.hidden = NO;
    _batallaAmigosExpliqueLabel.hidden = NO;
    _alMomentoLabel.hidden = NO;
    _alMomentoCasadaLabel.hidden = NO;
    _alMomentoSolteraLabel.hidden = NO;
    _alMomentoDivorciadaLabel.hidden = NO;
    _alMomentoViudaLabel.hidden = NO;
    _alMomentoNumeroMatrimoniosLabel.hidden = NO;
    _seDedicaLabel.hidden = NO;
    _seDedicaHogarlabel.hidden = NO;
    _seDedicaTrabajoLabel.hidden = NO;
    _seDedicaDesempleadaLabel.hidden = NO;
    _seDedciaEstudianteLabel.hidden = NO;
    _seDedicaTipoTrabajoLabel.hidden = NO;
    _numeroHijosLabel.hidden = NO;
    _nombreHijosLabel.hidden = NO;
    _edadHijosLabel.hidden = NO;
    _situacionHijosLabel.hidden = NO;
    _relacionHijosLabel.hidden = NO;
    _quienViveUstedLabel.hidden = NO;
    _comoSeLlevaHermanosLabel.hidden = NO;
    _quienSeLlevaMejorLabel.hidden = NO;
    _comoSeLlevanPapasLabel.hidden = NO;
    _relacionConParejaLabel.hidden = NO;
    _relacionConHijosLabel.hidden = NO;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = NO;
    _gradoReprobatorioSiField.hidden = NO;
    _gradoReprobatorioNoField.hidden = NO;
    _gradoReprobatorioCuantosField.hidden = NO;
    _gradoRepobratorioMotivoField.hidden = NO;
    _promedioEstudioField.hidden = NO;
    _quejasField.hidden = NO;
    _batallaAmigosSiField.hidden = NO;
    _batallaAmigosNoField.hidden = NO;
    _batallaAmigosExpliqueField.hidden = NO;
    _alMomentoCasadaField.hidden = NO;
    _alMomentoSolteraField.hidden = NO;
    _alMomentoDivorciadaField.hidden = NO;
    _alMomentoViudaField.hidden = NO;
    _alMomentoNumeroMatrimoniosField.hidden = NO;
    _seDedicaHogarField.hidden = NO;
    _seDedicaTrabajoField.hidden = NO;
    _seDedicaDesempleadaField.hidden = NO;
    _seDedciaEstudianteField.hidden = NO;
    _seDedicaTipoTrabajoField.hidden = NO;
    _numeroHijosField.hidden = NO;
    
    _nombreHijoUnoField.hidden = NO;
    _nombreHijoDosField.hidden = NO;
    _nombreHijoTresField.hidden = NO;
    _nombreHijoCuatroField.hidden = NO;
    _nombreHijoCincoField.hidden = NO;
    _nombreHijoSeisField.hidden = NO;
    _edadHijoUnoField.hidden = NO;
    _edadHijoDosField.hidden = NO;
    _edadHijoTresField.hidden = NO;
    _edadHijoCuatroField.hidden = NO;
    _edadHijoCincoField.hidden = NO;
    _edadHijoSeisField.hidden = NO;
    _situacionHijoUnoFIeld.hidden = NO;
    _situacionHijoDosField.hidden = NO;
    _situacionHijoTresField.hidden = NO;
    _situacionHijoCuatroField.hidden = NO;
    _situacionHijoCincoField.hidden = NO;
    _situacionHijoSeisField.hidden = NO;
    _relacionHijoUnoField.hidden = NO;
    _relacionHijoDosField.hidden = NO;
    _relacionHijoTresField.hidden = NO;
    _relacionHijoCuatroField.hidden = NO;
    _relacionHijoCincoField.hidden = NO;
    _relacionHijoSeisField.hidden = NO;
    _quienViveUstedField.hidden = NO;
    _comoSeLlevaHermanosField.hidden = NO;
    _quienSeLlevaMejorField.hidden = NO;
    _comoSeLlevanPapasField.hidden = NO;
    _relacionConParejaField.hidden = NO;
    _relacionConHijosField.hidden = NO;
    
    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    


    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
    
}

- (IBAction)cinco:(id)sender {
    
    titulo.stringValue = @"5. INTERROGATORIO POR APARATOS Y SISTEMAS";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;

    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;
    
    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = NO;
    _alteracionesSuenoSiLabel.hidden = NO;
    _alteracionesSuenoNoLabel.hidden = NO;
    _alteracionesSuenoExpliqueLabel.hidden = NO;
    
    _fatigaLabel.hidden = NO;
    _fatigaSiLabel.hidden = NO;
    _fatigaNoLabel.hidden = NO;
    _fatigaExpliqueLabel.hidden = NO;
    
    _apetitoLabel.hidden = NO;
    _apetitoNormalLabel.hidden = NO;
    _apetitoAumentadoLabel.hidden = NO;
    _apetitoDisminuidoLabel.hidden = NO;
    
    _pesoDosLabel.hidden = NO;
    _pesoAumentadoLabel.hidden = NO;
    _pesoDisminuidoLabel.hidden = NO;
    _pesoNormalLabel.hidden = NO;
    
    _capacidadDisfrutarLabel.hidden = NO;
    _capacidadDisfrutarSiLabel.hidden = NO;
    _capacidadDisfrutarNoLabel.hidden = NO;
    _capacidadDisfrutarExpliqueLabel.hidden = NO;
    
    _inquietudLabel.hidden = NO;
    _inquietudPresenteLabel.hidden = NO;
    _inquietudAusenteLabel.hidden = NO;
    
    _problemasDigestivosLabel.hidden = NO;
    _problemasDigestivosSiLabel.hidden = NO;
    _problemasDigestivosNoLabel.hidden = NO;
    _problemasDIgestivosExpliqueLabel.hidden = NO;
    
    _problemasArticularesLabel.hidden = NO;
    _problemasArticularesSiLabel.hidden = NO;
    _problemasArticularesNoLabel.hidden = NO;
    _problemasArticularesExpliqueLabel.hidden = NO;
    
    _doloresFrecuentesLabel.hidden = NO;
    _doloresFrecuentesSiLabel.hidden = NO;
    _doloresFrecuentesNoLabel.hidden = NO;
    _doloresFrecuentesExpliqueLabel.hidden = NO;
    
    _problemasRinonesLabel.hidden = NO;
    _problemasRinonesSiLabel.hidden = NO;
    _problemasRinonesNoLabel.hidden = NO;
    _problemasRinonesExpliqueLabel.hidden = NO;
    
    _diabetesLabel.hidden = NO;
    _diabetesSiLabel.hidden = NO;
    _diabetesNoLabel.hidden = NO;
    _diabetesExpliqueLabel.hidden = NO;
    
    _problemasPulmonesLabel.hidden = NO;
    _problemasPulmonesSiLabel.hidden = NO;
    _problemasPulmonesNoLabel.hidden = NO;
    _problemasPulmonesExpliqueLabel.hidden = NO;
    
    _problemasAuditivosLabel.hidden = NO;
    _problemasAuditivosSiLabel.hidden = NO;
    _problemasAuditivosNoLabel.hidden = NO;
    
    _problemasVisualesLabel.hidden = NO;
    _problemasVisualesSiLabel.hidden = NO;
    _problemasVisualesNoLabel.hidden = NO;
    
    _problemasConcentracionLabel.hidden = NO;
    _problemasConcentracionSiLabel.hidden = NO;
    _problemasConcentracionNoLabel.hidden = NO;
    _problemasConcentracionExpliqueLabel.hidden = NO;
    
    _problemasTiroidesLabel.hidden = NO;
    _problemasTiroidesSiLabel.hidden = NO;
    _problemasTiroidesNoLabel.hidden = NO;
    _problemasTiroidesExpliqueLabel.hidden = NO;
    
    _padecimientosSaludFamiliaLabel.hidden = NO;
    
    _desmayosLabel.hidden = NO;
    _desmayosSiLabel.hidden = NO;
    _desmayosNoLabel.hidden = NO;
    _desmayosFrecuenciaLabel.hidden = NO;
    _desmayosExpliqueLabel.hidden = NO;
    
    _cancerFamiliaLabe.hidden = NO;
    _cancerFamiliaSiLabel.hidden = NO;
    _cancerFamiliaNoLabel.hidden = NO;
    
    _enfermedadesImportantesFamiliaLabel.hidden = NO;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = NO;
    _alteracionesSuenoNoField.hidden = NO;
    _alteracionesSuenoExpliqueField.hidden = NO;
    
    _fatigaSiField.hidden = NO;
    _fatigaNoField.hidden = NO;
    _fatigaExpliqueField.hidden = NO;
    
    _apetitoNormalField.hidden = NO;
    _apetitoAumentadoField.hidden = NO;
    _apetitoDisminuidoField.hidden = NO;
    
    _pesoAumentadoField.hidden = NO;
    _pesoDisminuidoField.hidden = NO;
    _pesoNormalField.hidden = NO;
    
    _capacidadDisfrutarSiField.hidden = NO;
    _capacidadDisfrutarNoField.hidden = NO;
    _capacidadDisfrutarExpliqueField.hidden = NO;
    
    _inquietudPresenteField.hidden = NO;
    _inquietudAusenteField.hidden = NO;
    
    _problemasDigestivosSiField.hidden = NO;
    _problemasDigestivosNoField.hidden = NO;
    _problemasDIgestivosExpliqueField.hidden = NO;
    
    _problemasArticularesSiField.hidden = NO;
    _problemasArticularesNoField.hidden = NO;
    _problemasArticularesExpliqueField.hidden = NO;
    
    _doloresFrecuentesSiField.hidden = NO;
    _doloresFrecuentesNoField.hidden = NO;
    _doloresFrecuentesExpliqueField.hidden = NO;
    
    _problemasRinonesSiField.hidden = NO;
    _problemasRinonesNoField.hidden = NO;
    _problemasRinonesExpliqueField.hidden = NO;
    
    _diabetesSiField.hidden = NO;
    _diabetesNoField.hidden = NO;
    _diabetesExpliqueField.hidden = NO;
    
    _problemasPulmonesSiField.hidden = NO;
    _problemasPulmonesNoField.hidden = NO;
    _problemasPulmonesExpliqueField.hidden = NO;
    
    _problemasAuditivosSiField.hidden = NO;
    _problemasAuditivosNoField.hidden = NO;
    
    _problemasVisualesSiField.hidden = NO;
    _problemasVisualesNoField.hidden = NO;
    
    _problemasConcentracionSiField.hidden = NO;
    _problemasConcentracionNoField.hidden = NO;
    _problemasConcentracionExpliqueField.hidden = NO;
    
    _problemasTiroidesSiField.hidden = NO;
    _problemasTiroidesNoField.hidden = NO;
    _problemasTiroidesExpliqueField.hidden = NO;
    
    _padecimientosSaludFamiliaField.hidden = NO;
    
    _desmayosSiField.hidden = NO;
    _desmayosNoField.hidden = NO;
    _desmayosFrecuenciaField.hidden = NO;
    _desmayosExpliqueField.hidden = NO;
    
    _cancerFamiliaSiField.hidden = NO;
    _cancerFamiliaNoField.hidden = NO;
    
    _enfermedadesImportantesFamiliaDosField.hidden = NO;
    
    
    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
    

}

- (IBAction)seis:(id)sender {
    
    titulo.stringValue = @"6. MOTIVOS DE CONSULTA";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;

    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    
    
    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = NO;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;

}

- (IBAction)siete:(id)sender {
    
    titulo.stringValue = @"7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;

    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    

    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = NO;
    _descripcionSintomasLabel.hidden = NO;
    _haSidoHospitalizadaLabel.hidden = NO;
    _haSidoHospitalizadaSiLabel.hidden = NO;
    _haSidoHospitalizadaNoLabel.hidden = NO;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = NO;
    _medicamentoSintomasLabel.hidden = NO;
    _medicamentosSintomasSiLabel.hidden = NO;
    _medicamentosSintomasNoLabel.hidden = NO;
    _medicamentosSintomasExpliqueLabel.hidden = NO;
    _funcionoTratamientoLabel.hidden = NO;
    _funcionoTratamientoSiLabel.hidden = NO;
    _funcionoTratamientoNoLabel.hidden = NO;
    _funcionoTratamientoExpliqueLabel.hidden = NO;
    _siguePresentandoSintomasLabel.hidden = NO;
    _siguePresentandoSintomasSiLabel.hidden = NO;
    _siguePresentandoSintomasNoLabel.hidden = NO;
    _siguePresentandoSintomasExpliqueLabel.hidden = NO;
    _acompaneSintomasLabel.hidden = NO;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = NO;
    _descripcionSintomasField.hidden = NO;
    _haSidoHospitalizadaSiField.hidden = NO;
    _haSidoHospitalizadaNoField.hidden = NO;
    _haSidoHospitalizadaFrecuenciaField.hidden = NO;
    _medicamentosSintomasSiField.hidden = NO;
    _medicamentosSintomasNoField.hidden = NO;
    _medicamentosSintomasExpliqueField.hidden = NO;
    _funcionoTratamientoSiField.hidden = NO;
    _funcionoTratamientoNoField.hidden = NO;
    _funcionoTratamientoExpliqueField.hidden = NO;
    _siguePresentandoSintomasSiField.hidden = NO;
    _siguePresentandoSintomasNoField.hidden = NO;
    _siguePresentandoSintomasExpliqueField.hidden = NO;
    _acompaneSintomasField.hidden = NO;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
}

- (IBAction)ocho:(id)sender {
    
    titulo.stringValue = @"8.A EXAMEN MENTAL (PRIMERA PARTE)";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;

    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    

    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = NO;
    _sexoExamenFemeninaLabel.hidden = NO;
    _sexoExamenMasculinaLabel.hidden = NO;
    _sexoExamenComentarioLabel.hidden = NO;
    
    _edadAparenteLabel.hidden = NO;
    _edadAparenteIgualLabel.hidden = NO;
    _edadAparenteMayorLabel.hidden = NO;
    _edadAparenteEquivalenteLabel.hidden = NO;
    
    _estaturaExamenLabel.hidden = NO;
    _estaturaExamenBajaLabel.hidden = NO;
    _estaturaExamenNormalLabel.hidden = NO;
    _estaturaExamenAltaLabel.hidden = NO;
    
    _complexionLabel.hidden = NO;
    _complexionDelgadaLabel.hidden = NO;
    _complexionNormalLabel.hidden = NO;
    _complexionSobrepesoLabel.hidden = NO;
    
    _faciesLabel.hidden = NO;
    _faciesAnciosoLabel.hidden = NO;
    _faciesPreocupadoLabel.hidden = NO;
    _faciesTristeLabel.hidden = NO;
    _faciesDeprimidoLabel.hidden = NO;
    _sinCaracteristicasLabel.hidden = NO;
    _faciesOtroLabel.hidden = NO;
    
    _senasLabel.hidden = NO;
    _senasPresentesLabel.hidden = NO;
    _senasAusentesLabel.hidden = NO;
    _senasLunaresLabel.hidden = NO;
    _senasFaltaMiembroLabel.hidden = NO;
    _senasTatuajesLabel.hidden = NO;
    _senasUtilizaLentesLabel.hidden = NO;
    _senasPeloTenidoLabel.hidden = NO;
    _senasPeloAlineadoLabel.hidden = NO;
    _senasPeloRecogidoLabel.hidden = NO;
    _senasCejasDelineadasLabel.hidden = NO;
    _senasUtilizacionAretesLabel.hidden = NO;
    _senasOtrasLabel.hidden = NO;
    
    _higieneAlinoLabel.hidden = NO;
    _vestimentaBuenEstadoLabel.hidden = NO;
    _vestimentaMalEstadoLabel.hidden = NO;
    _higieneLabel.hidden = NO;
    _higienePresenteLabel.hidden = NO;
    _higieneAusenteLabel.hidden = NO;
    _discordanciaVestirLabel.hidden = NO;
    _discordanciaVestirSiLabel.hidden = NO;
    _discordanciaVestirNoLabel.hidden = NO;
    _tipoVestimentaLabel.hidden = NO;
    
    _marchaLabel.hidden = NO;
    _marchaRapidaLabel.hidden = NO;
    _marchaLentaLabel.hidden = NO;
    _marchaSinAlteracionesLabel.hidden = NO;
    _marchaOtraLabel.hidden = NO;
    
    _movimientosAnormalesLabel.hidden = NO;
    _incoordinacionMotoraLabel.hidden = NO;
    _ticsLabel.hidden = NO;
    _tembloresLabel.hidden = NO;
    
    _actitudEntrevistaLabel.hidden = NO;
    _actitudEvasivoLabel.hidden = NO;
    _actitudIndiferenteLabel.hidden = NO;
    _actitudSeductorLabel.hidden = NO;
    _actitudIrritableLabel.hidden = NO;
    _actitudRetadorLabel.hidden = NO;
    _actitudTranquiloLabel.hidden = NO;
    _actitudTimidoLabel.hidden = NO;
    _actitudDesconfiadoLabel.hidden = NO;
    _actitudCooperadorLabel.hidden = NO;
    _actitudAmableLabel.hidden = NO;
    _actitudSerenoLabel.hidden = NO;
    _actitudEstableLabel.hidden = NO;
    _actitudQuejumbrosoLabel.hidden = NO;
    _actitudOtrosLabel.hidden = NO;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = NO;
    _sexoExamenMasculinaField.hidden = NO;
    _sexoExamenComentarioField.hidden = NO;
    
    _edadAparenteIgualField.hidden = NO;
    _edadAparenteMayorField.hidden = NO;
    _edadAparenteEquivalenteField.hidden = NO;
    
    _estaturaExamenBajaField.hidden = NO;
    _estaturaExamenNormalField.hidden = NO;
    _estaturaExamenAltaField.hidden = NO;
    
    _complexionDelgadaField.hidden = NO;
    _complexionNormalField.hidden = NO;
    _complexionSobrepesoField.hidden = NO;
    
    _faciesAnciosoField.hidden = NO;
    _faciesPreocupadoField.hidden = NO;
    _faciesTristeField.hidden = NO;
    _faciesDeprimidoField.hidden = NO;
    _sinCaracteristicasField.hidden = NO;
    _faciesOtroField.hidden = NO;
    
    _senasPresentesField.hidden = NO;
    _senasAusentesField.hidden = NO;
    _senasLunaresField.hidden = NO;
    _senasFaltaMiembroField.hidden = NO;
    _senasTatuajesField.hidden = NO;
    _senasUtilizaLentesField.hidden = NO;
    _senasPeloTenidoField.hidden = NO;
    _senasPeloAlineadoField.hidden = NO;
    _senasPeloRecogidoField.hidden = NO;
    _senasCejasDelineadasField.hidden = NO;
    _senasUtilizacionAretesField.hidden = NO;
    _senasOtrasField.hidden = NO;
    
    _vestimentaBuenEstadoField.hidden = NO;
    _vestimentaMalEstadoField.hidden = NO;
    
    _higienePresenteField.hidden = NO;
    _higieneAusenteField.hidden = NO;
    
    _discordanciaVestirSiField.hidden = NO;
    _discordanciaVestirNoField.hidden = NO;
    _tipoVestimentaField.hidden = NO;
    
    _marchaRapidaField.hidden = NO;
    _marchaLentaField.hidden = NO;
    _marchaSinAlteracionesField.hidden = NO;
    _marchaOtraField.hidden = NO;
    
    _incoordinacionMotoraField.hidden = NO;
    _ticsField.hidden = NO;
    _tembloresField.hidden = NO;
    
    _actitudEvasivoField.hidden = NO;
    _actitudIndiferenteField.hidden = NO;
    _actitudSeductorField.hidden = NO;
    _actitudIrritableField.hidden = NO;
    _actitudRetadorField.hidden = NO;
    _actitudTranquiloField.hidden = NO;
    _actitudTimidoField.hidden = NO;
    _actitudDesconfiadoField.hidden = NO;
    _actitudCooperadorField.hidden = NO;
    _actitudAmableField.hidden = NO;
    _actitudSerenoField.hidden = NO;
    _actitudEstableField.hidden = NO;
    _actitudQuejumbrosoField.hidden = NO;
    _actitudOtrosField.hidden = NO;
    
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
}

- (IBAction)ochoB:(id)sender {
    
    
    titulo.stringValue = @"8.B EXAMEN MENTAL (SEGUNDA PARTE)";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;
    
    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    
    
    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;

    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = NO;
    
    _conductasAlucinatoriasLabel.hidden = NO;
    _conductasAlucinatoriasSiLabel.hidden = NO;
    _conductasAlucinatoriasNoLabel.hidden = NO;
    
    _ubicadoTiempoLabel.hidden = NO;
    _ubicadoTiempoSiLabel.hidden = NO;
    _ubicadoTiempoNoLabel.hidden = NO;
    
    _ubicadoLugarLabel.hidden = NO;
    _ubicadoLugarSiLabel.hidden = NO;
    _ubicadoLugarNoLabel.hidden = NO;
    
    _seReconoceLabel.hidden = NO;
    _seReconoceSiLabel.hidden = NO;
    _seReconoceNoLabel.hidden = NO;
    
    _pensamientoLabel.hidden = NO;
    
    _discursoFormaLabel.hidden = NO;
    _discursoFormaJuiciosoLabel.hidden = NO;
    _discursoFormaSinAlteracionLabel.hidden = NO;
    _discursoFormaRazonableLabel.hidden = NO;
    _discursoFormaNoRazonableLabel.hidden = NO;
    _discursoFormaDentroRealidadLabel.hidden = NO;
    _discursoFormaFueraRealidadLabel.hidden = NO;
    
    _discursoCursoLabel.hidden = NO;
    _discursoCursoAceleradoLabel.hidden = NO;
    _discursoCursoLentificadoLabel.hidden = NO;
    _discursoCursoNormalLabel.hidden = NO;
    
    _discursoContenidoLabel.hidden = NO;
    
    _humorLabel.hidden = NO;
    
    _afectoLabel.hidden = NO;
    _afectoDisminuidoLabel.hidden = NO;
    _afectoAumentadoLabel.hidden = NO;
    _afectoNormalLabel.hidden = NO;
    
    _inteligenciaLabel.hidden = NO;
    _inteligenciaArribaLabel.hidden = NO;
    _inteligenciaDebajoLabel.hidden = NO;
    _inteligenciaNormalLabel.hidden = NO;
    
    _fondoInformacionLabel.hidden = NO;
    
    _acordeNivelSocioculturalLabel.hidden = NO;
    _acordeNivelSocioCulturalSiLabel.hidden = NO;
    _acordeNivelSocioCulturalNoLabel.hidden = NO;
    
    _acordeNivelEscolaridadLabel.hidden = NO;
    _acordeNivelEscolaridadSiLabel.hidden = NO;
    _acordeNivelEscolaridadNoLabel.hidden = NO;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = NO;
    _conductasAlucinatoriasNoField.hidden = NO;
    
    _ubicadoTiempoSiField.hidden = NO;
    _ubicadoTiempoNoField.hidden = NO;
    
    _ubicadoLugarSiField.hidden = NO;
    _ubicadoLugarNoField.hidden = NO;
    
    _seReconoceSiField.hidden = NO;
    _seReconoceNoField.hidden = NO;
    
    
    _discursoFormaJuiciosoField.hidden = NO;
    _discursoFormaSinAlteracionField.hidden = NO;
    _discursoFormaRazonableField.hidden = NO;
    _discursoFormaNoRazonableField.hidden = NO;
    _discursoFormaDentroRealidadField.hidden = NO;
    _discursoFormaFueraRealidadField.hidden = NO;
    
    _discursoCursoAceleradoField.hidden = NO;
    _discursoCursoLentificadoField.hidden = NO;
    _discursoCursoNormalField.hidden = NO;
    
    _discursoContenidoField.hidden = NO;
    
    _humorField.hidden = NO;
    
    _afectoDisminuidoField.hidden = NO;
    _afectoAumentadoField.hidden = NO;
    _afectoNormalField.hidden = NO;
    
    _inteligenciaArribaField.hidden = NO;
    _inteligenciaDebajoField.hidden = NO;
    _inteligenciaNormalField.hidden = NO;
    
    
    _acordeNivelSocioCulturalSiField.hidden = NO;
    _acordeNivelSocioCulturalNoField.hidden = NO;
    
    _acordeNivelEscolaridadSiField.hidden = NO;
    _acordeNivelEscolaridadNoField.hidden = NO;
    
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
}

- (IBAction)nueve:(id)sender {
    
    titulo.stringValue = @"9. DIAGNOSTICO O DIAGNOSTICO MULTIAXIAL";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;
    
    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    
    
    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;

    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = NO;
    _ejeIDosLabel.hidden = NO;
    _ejeIALabel.hidden = NO;
    _ejeIBLabel.hidden = NO;
    _ejeICLabel.hidden = NO;
    
    _ejeIILabel.hidden = NO;
    _ejeIIALabel.hidden = NO;
    
    _ejeIIILabel.hidden = NO;
    _ejeIIIALabel.hidden = NO;
    _ejeIIIBLabel.hidden = NO;
    
    _ejeIVLabel.hidden = NO;
    _ejeIVLeveLabel.hidden = NO;
    _ejeIVModeradoLabel.hidden = NO;
    _ejeIVGraveLabel.hidden = NO;
    _ejeIVSeveroLabel.hidden = NO;
    
    _ejeVLabel.hidden = NO;
    _ejeVBuenoLabel.hidden = NO;
    _ejeVMedianoLabel.hidden = NO;
    _ejeVMediocreLabel.hidden = NO;
    _ejeVMaloLabel.hidden = NO;
    _motivoDisfuncionLabel.hidden = NO;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = NO;
    _ejeIBField.hidden = NO;
    _ejeICField.hidden = NO;
    
    _ejeIIAField.hidden = NO;
    
    _ejeIIIAField.hidden = NO;
    _ejeIIIBField.hidden = NO;
    
    _ejeIVLeveField.hidden = NO;
    _ejeIVModeradoField.hidden = NO;
    _ejeIVGraveField.hidden = NO;
    _ejeIVSeveroField.hidden = NO;
    
    _ejeVBuenoField.hidden = NO;
    _ejeVMedianoField.hidden = NO;
    _ejeVMediocreField.hidden = NO;
    _ejeVMaloField.hidden = NO;
    _motivoDisfuncionField.hidden = NO;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
}

- (IBAction)diez:(id)sender {
    
    titulo.stringValue = @"10. TRATAMIENTO O PLAN DE TRABAJO";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;

    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    

    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = NO;
    
    _tratamientoPsicologicoLabel.hidden = NO;
    _tratamientoPsicologicoSiLabel.hidden = NO;
    _tratamientoPsicologicoNoLabel.hidden = NO;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = NO;
    
    _referirloLabel.hidden = NO;
    _referirloSiLabel.hidden = NO;
    _referirloNoLabel.hidden = NO;
    _referirloEspecialidadLabel.hidden = NO;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = NO;
    
    _tratamientoPsicologicoSiField.hidden = NO;
    _tratamientoPsicologicoNoField.hidden = NO;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = NO;
    
    _referirloSiField.hidden = NO;
    _referirloNoField.hidden = NO;
    _referirloEspecialidadField.hidden = NO;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
}

- (IBAction)once:(id)sender {
    
    titulo.stringValue = @"11. PRONOSTICO";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = YES;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;

    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;
    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    

    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = NO;
    _ligadoMaloLabel.hidden = NO;
    _ligadoBuenoLabel.hidden = NO;
    _ligadoRegularLabel.hidden = NO;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = NO;
    _ligadoMaloField.hidden = NO;
    _ligadoBuenoField.hidden = NO;
    _ligadoRegularField.hidden = NO;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = YES;
    _hobbyLabel.hidden = YES;
    _descansoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = YES;
    _hobbyField.hidden = YES;
    _descansoField.hidden = YES;
}

- (IBAction)doce:(id)sender {
    
    titulo.stringValue = @"12. PREGUNTAS ADICIONALES";
    
    // ESCONDER BOTON
    _botonDeAgregar.hidden = NO;
    
    // ESCONDER SUCCESS LABEL
    _successLabel.hidden = YES;
    
    // ESCONDER BOTON SEGUMIENTO
    _botonSeguimiento.hidden = YES;
    
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
    
    // 1. FICHA DE IDENTIFICACION
    
    // LABELS
    _nombreLabel.hidden = YES;
    _edadLabel.hidden = YES;
    _estadoCivilLabel.hidden = YES;
    _ocupacionLabel.hidden = YES;
    _escolaridadLabel.hidden = YES;
    _originariaLabel.hidden = YES;
    _religionLabel.hidden = YES;
    _radicaLabel.hidden = YES;
    _fechaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _nombreField.hidden = YES;
    _edadField.hidden = YES;
    _estadoCivilField.hidden = YES;
    _ocupacionField.hidden = YES;
    _escolaridadField.hidden = YES;
    _originariaField.hidden = YES;
    _religionField.hidden = YES;
    _radicaField.hidden = YES;
    _fechaField.hidden = YES;
    
    // 2. ANTECEDENTES HEREDO FAMILIARES
    
    // LABELS
    
    // PADRE BIOLOGICO
    _padreBiologicoLabel.hidden = YES;
    _padreConocidoLabel.hidden = YES;
    _padreDesconocidoLabel.hidden = YES;
    _padreVivoLabel.hidden = YES;
    _padreMuertoLabel.hidden = YES;
    _padreMatrimonioLabel.hidden = YES;
    _padreSaludoLabel.hidden = YES;
    _padreRelacionLabel.hidden = YES;
    _padreRelacionBuenaLabel.hidden = YES;
    _padreRelacionMalaLabel.hidden = YES;
    _padreRelacionNormalLabel.hidden = YES;
    _padreRelacionExpliqueLabel.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoLabel.hidden = YES;
    _madreDesconocidoLabel.hidden = YES;
    _madreVivoLabel.hidden = YES;
    _madreMuertoLabel.hidden = YES;
    _madreMatrimonioLabel.hidden = YES;
    _madreSaludoLabel.hidden = YES;
    _madreRelacionLabel.hidden = YES;
    _madreRelacionBuenaLabel.hidden = YES;
    _madreRelacionMalaLabel.hidden = YES;
    _madreRelacionNormalLabel.hidden = YES;
    _madreRelacionExpliqueLabel.hidden = YES;
    // HERMANOS
    _hermanosLabel.hidden = YES;
    _heramnosNumeroLabel.hidden = YES;
    _hermanosVivosLabel.hidden = YES;
    _hermanosMuertosLabel.hidden = YES;
    _hermanosCausaLabel.hidden = YES;
    _hermanosRelacionLabel.hidden = YES;
    _hermanosRelacionBuenaLabel.hidden = YES;
    _hermanosRelacionMalaLabel.hidden = YES;
    _hermanosRelacionNormalLabel.hidden = YES;
    _hermanosRelacionExpliqueLabel.hidden = YES;
    _hermanosSaludLabel.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosLabel.hidden = YES;
    _mediosHermanosNumeroLabel.hidden = YES;
    _mediosHermanosVivosLabel.hidden = YES;
    _mediosHermanosMuertosLabel.hidden = YES;
    _mediosHermanosCausaLabel.hidden = YES;
    _mediosHermanosRelacionLabel.hidden = YES;
    _mediosHermanosRelacionBuenaLabel.hidden = YES;
    _mediosHermanosRelacionMalaLabel.hidden = YES;
    _mediosHermanosRelacionNormalLabel.hidden = YES;
    _mediosHermanosRelacionExpliqueLabel.hidden = YES;
    _mediosHermanosSaludLabel.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoLabel.hidden = YES;
    _abueloMaternoVivoLabel.hidden = YES;
    _abueloMaternoMuertoLabel.hidden = YES;
    _abueloMaternoCausaLabel.hidden = YES;
    _abueloMaternoSaludLabel.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaLabel.hidden = YES;
    _abuelaMaternaVivoLabel.hidden = YES;
    _abuelaMaternaMuertoLabel.hidden = YES;
    _abuelaMaternaCausaLabel.hidden = YES;
    _abuelaMaternaSaludLabel.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoLabel.hidden = YES;
    _abueloPaternoVivoLabel.hidden = YES;
    _abueloPaternoMuertoLabel.hidden = YES;
    _abueloPaternoCausaLabel.hidden = YES;
    _abueloPaternoSaludLabel.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaLabel.hidden = YES;
    _abuelaPaternaVivoLabel.hidden = YES;
    _abuelaPaternaMuertoLabel.hidden = YES;
    _abuelaPaternaCausaLabel.hidden = YES;
    _abuelaPaternaSaludLabel.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasLabel.hidden = YES;
    _cancerFamiliaLabel.hidden = YES;
    _enfermedadesImportantesLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    
    // PADRE BIOLOGICO
    _padreConocidoField.hidden = YES;
    _padreDesconocidoField.hidden = YES;
    _padreVivoField.hidden = YES;
    _padreMuertoField.hidden = YES;
    _padreMatrimonioFIeld.hidden = YES;
    _padreSaludField.hidden = YES;
    _padreRelacionBuenaFIeld.hidden = YES;
    _padreRelacionMalaField.hidden = YES;
    _padreRelacionNormalField.hidden = YES;
    _padreRelacionExpliqueField.hidden = YES;
    // MADRE BIOLOGICA
    _madreBiologicaLabel.hidden = YES;
    _madreConocidoField.hidden = YES;
    _madreDesconocidoField.hidden = YES;
    _madreVivoField.hidden = YES;
    _madreMuertoField.hidden = YES;
    _madreMatrimonioFIeld.hidden = YES;
    _madreSaludField.hidden = YES;
    _madreRelacionBuenaFIeld.hidden = YES;
    _madreRelacionMalaField.hidden = YES;
    _madreRelacionNormalField.hidden = YES;
    _madreRelacionExpliqueField.hidden = YES;
    // HERMANOS
    _heramnosNumeroField.hidden = YES;
    _hermanosVivosField.hidden = YES;
    _hermanosMuertosField.hidden = YES;
    _hermanosCausaField.hidden = YES;
    _hermanosRelacionBuenaField.hidden = YES;
    _hermanosRelacionMalaField.hidden = YES;
    _hermanosRelacionNormalField.hidden = YES;
    _hermanosRelacionExpliqueField.hidden = YES;
    _hermanosSaludField.hidden = YES;
    // MEDIOS HERMANOS
    _mediosHermanosNumeroField.hidden = YES;
    _mediosHermanosVivosField.hidden = YES;
    _mediosHermanosMuertosField.hidden = YES;
    _mediosHermanosCausaField.hidden = YES;
    _mediosHermanosRelacionBuenaField.hidden = YES;
    _mediosHermanosRelacionMalaField.hidden = YES;
    _mediosHermanosRelacionNormalField.hidden = YES;
    _mediosHermanosRelacionExpliqueField.hidden = YES;
    _mediosHermanosSaludField.hidden = YES;
    // ABUELO MATERNO
    _abueloMaternoVivoField.hidden = YES;
    _abueloMaternoMuertoField.hidden = YES;
    _abueloMaternoCausaField.hidden = YES;
    _abueloMaternoSaludField.hidden = YES;
    // ABUELA MATERNA
    _abuelaMaternaVivoField.hidden = YES;
    _abuelaMaternaMuertoField.hidden = YES;
    _abuelaMaternaCausaField.hidden = YES;
    _abuelaMaternaSaludField.hidden = YES;
    // ABUELO PATERNO
    _abueloPaternoVivoField.hidden = YES;
    _abueloPaternoMuertoField.hidden = YES;
    _abueloPaternoCausaField.hidden = YES;
    _abueloPaternoSaludField.hidden = YES;
    // ABUELA PATERNA
    _abuelaPaternaVivoField.hidden = YES;
    _abuelaPaternaMuertoField.hidden = YES;
    _abuelaPaternaCausaField.hidden = YES;
    _abuelaPaternaSaludField.hidden = YES;
    // ENFERMEDADES
    _enfermedadesPsiquiatricasFamiliaField.hidden = YES;
    _cancerFamiliaField.hidden = YES;
    _enfermedadesImportantesFamiliaField.hidden = YES;
    
    // 3. ANTECEDENTES PERSONALES PATOLOGICOS
    
    // LABELS
    _sobrepesoLabel.hidden = YES;
    _sobrepesoSiLabel.hidden = YES;
    _sobrepesoNoLabel.hidden = YES;
    _sobrepesoExpliqueLabel.hidden = YES;
    _pesoLabel.hidden = YES;
    _estaturaLabel.hidden = YES;
    _tipoPadecimientoLabel.hidden = YES;
    _antecedentesQuirurgicosLabel.hidden = YES;
    _antecedentesQuirurgicosSiLabel.hidden = YES;
    _antecedentesQuirurgicosNoLabel.hidden = YES;
    _antecedentesQuirurgicosExpliqueLabel.hidden = YES;
    _hospitalizacionesLabel.hidden = YES;
    _hospitalizacionesSiLabel.hidden = YES;
    _hospitalizacionesNoLabel.hidden = YES;
    _hospitalizacionesExpliqueLabel.hidden = YES;
    _antecedentesTabaquismoLabel.hidden = YES;
    _antecedentesTabaquismoSiLabel.hidden = YES;
    _antecedentesTabaquismoNoLabel.hidden = YES;
    _antecedentesTabaquismoFechaLabel.hidden = YES;
    _antecedentesAlcoholismoLabel.hidden = YES;
    _antecedentesAlcoholismoSiLabel.hidden = YES;
    _antecedentesAlcoholismoNoLabel.hidden = YES;
    _antecedentesAlcoholismoFechaLabel.hidden = YES;
    _antecedentesAlergicosLabel.hidden = YES;
    _antecedentesAlergicosSiLabel.hidden = YES;
    _antecedentesAlergicosNoLabel.hidden = YES;
    _antecedentesAlergicosExpliqueLabel.hidden = YES;
    _antecedentesDrogasLabel.hidden = YES;
    _antecedentesDrogasSiLabel.hidden = YES;
    _antecedentesDrogasNoLabel.hidden = YES;
    _antecedentesDrogasFechaLabel.hidden = YES;
    _drogaUtilizadaLabel.hidden = YES;
    _cocainaLabel.hidden = YES;
    _marihuanaLabel.hidden = YES;
    _heroinaLabel.hidden = YES;
    _drogaUtilizadaOtrasLabel.hidden = YES;
    
    // TEXTFIELDS
    _sobrepesoSiField.hidden = YES;
    _sobrepesoNoField.hidden = YES;
    _sobrepesoExpliqueField.hidden = YES;
    _pesoField.hidden = YES;
    _estaturaField.hidden = YES;
    _tipoPadecimientoField.hidden = YES;
    _antecedentesQuirurgicosSiField.hidden = YES;
    _antecedentesQuirurgicosNoField.hidden = YES;
    _antecedentesQuirurgicosExpliqueField.hidden = YES;
    _hospitalizacionesSiField.hidden = YES;
    _hospitalizacionesNoField.hidden = YES;
    _hospitalizacionesExpliqueField.hidden = YES;
    _antecedentesTabaquismoSiField.hidden = YES;
    _antecedentesTabaquismoNoField.hidden = YES;
    _antecedentesTabaquismoFechaField.hidden = YES;
    _antecedentesAlcoholismoSiField.hidden = YES;
    _antecedentesAlcoholismoNoField.hidden = YES;
    _antecedentesAlcoholismoFechaField.hidden = YES;
    _antecedentesAlergicosSiField.hidden = YES;
    _antecedentesAlergicosNoField.hidden = YES;
    _antecedentesAlergicosExpliqueField.hidden = YES;
    _antecedentesDrogasSiField.hidden = YES;
    _antecedentesDrogasNoField.hidden = YES;
    _antecedentesDrogasFechaField.hidden = YES;
    _cocainaField.hidden = YES;
    _marihuanaField.hidden = YES;
    _heroinaField.hidden = YES;
    _drogaUitlizadaOtrasField.hidden = YES;
    
    // 4. ANTECEDENTES PERSONALES NO PATOLOGICOS
    
    // LABELS
    _gradoEscolarLabel.hidden = YES;
    _gradoReprobatorioLabel.hidden = YES;
    _gradoReprobatorioSiLabel.hidden = YES;
    _gradoReprobatorioNoLabel.hidden = YES;
    _gradoReprobatorioCuantosLabel.hidden = YES;
    _gradoRepobratorioMotivoLabel.hidden = YES;
    _promedioEstudioLabel.hidden = YES;
    _quejasLabel.hidden = YES;
    _batallaAmigosLabel.hidden = YES;
    _batallaAmigosSiLabel.hidden = YES;
    _batallaAmigosNoLabel.hidden = YES;
    _batallaAmigosExpliqueLabel.hidden = YES;
    _alMomentoLabel.hidden = YES;
    _alMomentoCasadaLabel.hidden = YES;
    _alMomentoSolteraLabel.hidden = YES;
    _alMomentoDivorciadaLabel.hidden = YES;
    _alMomentoViudaLabel.hidden = YES;
    _alMomentoNumeroMatrimoniosLabel.hidden = YES;
    _seDedicaLabel.hidden = YES;
    _seDedicaHogarlabel.hidden = YES;
    _seDedicaTrabajoLabel.hidden = YES;
    _seDedicaDesempleadaLabel.hidden = YES;
    _seDedciaEstudianteLabel.hidden = YES;
    _seDedicaTipoTrabajoLabel.hidden = YES;
    _numeroHijosLabel.hidden = YES;
    _nombreHijosLabel.hidden = YES;
    _edadHijosLabel.hidden = YES;
    _situacionHijosLabel.hidden = YES;
    _relacionHijosLabel.hidden = YES;
    _quienViveUstedLabel.hidden = YES;
    _comoSeLlevaHermanosLabel.hidden = YES;
    _quienSeLlevaMejorLabel.hidden = YES;
    _comoSeLlevanPapasLabel.hidden = YES;
    _relacionConParejaLabel.hidden = YES;
    _relacionConHijosLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _gradoEscolarField.hidden = YES;
    _gradoReprobatorioSiField.hidden = YES;
    _gradoReprobatorioNoField.hidden = YES;
    _gradoReprobatorioCuantosField.hidden = YES;
    _gradoRepobratorioMotivoField.hidden = YES;
    _promedioEstudioField.hidden = YES;
    _quejasField.hidden = YES;
    _batallaAmigosSiField.hidden = YES;
    _batallaAmigosNoField.hidden = YES;
    _batallaAmigosExpliqueField.hidden = YES;
    _alMomentoCasadaField.hidden = YES;
    _alMomentoSolteraField.hidden = YES;
    _alMomentoDivorciadaField.hidden = YES;
    _alMomentoViudaField.hidden = YES;
    _alMomentoNumeroMatrimoniosField.hidden = YES;
    _seDedicaHogarField.hidden = YES;
    _seDedicaTrabajoField.hidden = YES;
    _seDedicaDesempleadaField.hidden = YES;
    _seDedciaEstudianteField.hidden = YES;
    _seDedicaTipoTrabajoField.hidden = YES;
    _numeroHijosField.hidden = YES;
    
    _nombreHijoUnoField.hidden = YES;
    _nombreHijoDosField.hidden = YES;
    _nombreHijoTresField.hidden = YES;
    _nombreHijoCuatroField.hidden = YES;
    _nombreHijoCincoField.hidden = YES;
    _nombreHijoSeisField.hidden = YES;
    _edadHijoUnoField.hidden = YES;
    _edadHijoDosField.hidden = YES;
    _edadHijoTresField.hidden = YES;
    _edadHijoCuatroField.hidden = YES;
    _edadHijoCincoField.hidden = YES;
    _edadHijoSeisField.hidden = YES;
    _situacionHijoUnoFIeld.hidden = YES;
    _situacionHijoDosField.hidden = YES;
    _situacionHijoTresField.hidden = YES;
    _situacionHijoCuatroField.hidden = YES;
    _situacionHijoCincoField.hidden = YES;
    _situacionHijoSeisField.hidden = YES;
    _relacionHijoUnoField.hidden = YES;
    _relacionHijoDosField.hidden = YES;
    _relacionHijoTresField.hidden = YES;
    _relacionHijoCuatroField.hidden = YES;
    _relacionHijoCincoField.hidden = YES;
    _relacionHijoSeisField.hidden = YES;
    _quienViveUstedField.hidden = YES;
    _comoSeLlevaHermanosField.hidden = YES;
    _quienSeLlevaMejorField.hidden = YES;
    _comoSeLlevanPapasField.hidden = YES;
    _relacionConParejaField.hidden = YES;
    _relacionConHijosField.hidden = YES;
    
    // 5. INTERROGATORIO POR APARATOS Y SISTEMAS
    
    // LABELS
    _alteracionesSuenoLabel.hidden = YES;
    _alteracionesSuenoSiLabel.hidden = YES;
    _alteracionesSuenoNoLabel.hidden = YES;
    _alteracionesSuenoExpliqueLabel.hidden = YES;
    
    _fatigaLabel.hidden = YES;
    _fatigaSiLabel.hidden = YES;
    _fatigaNoLabel.hidden = YES;
    _fatigaExpliqueLabel.hidden = YES;
    
    _apetitoLabel.hidden = YES;
    _apetitoNormalLabel.hidden = YES;
    _apetitoAumentadoLabel.hidden = YES;
    _apetitoDisminuidoLabel.hidden = YES;
    
    _pesoDosLabel.hidden = YES;
    _pesoAumentadoLabel.hidden = YES;
    _pesoDisminuidoLabel.hidden = YES;
    _pesoNormalLabel.hidden = YES;
    
    _capacidadDisfrutarLabel.hidden = YES;
    _capacidadDisfrutarSiLabel.hidden = YES;
    _capacidadDisfrutarNoLabel.hidden = YES;
    _capacidadDisfrutarExpliqueLabel.hidden = YES;
    
    _inquietudLabel.hidden = YES;
    _inquietudPresenteLabel.hidden = YES;
    _inquietudAusenteLabel.hidden = YES;
    
    _problemasDigestivosLabel.hidden = YES;
    _problemasDigestivosSiLabel.hidden = YES;
    _problemasDigestivosNoLabel.hidden = YES;
    _problemasDIgestivosExpliqueLabel.hidden = YES;
    
    _problemasArticularesLabel.hidden = YES;
    _problemasArticularesSiLabel.hidden = YES;
    _problemasArticularesNoLabel.hidden = YES;
    _problemasArticularesExpliqueLabel.hidden = YES;
    
    _doloresFrecuentesLabel.hidden = YES;
    _doloresFrecuentesSiLabel.hidden = YES;
    _doloresFrecuentesNoLabel.hidden = YES;
    _doloresFrecuentesExpliqueLabel.hidden = YES;
    
    _problemasRinonesLabel.hidden = YES;
    _problemasRinonesSiLabel.hidden = YES;
    _problemasRinonesNoLabel.hidden = YES;
    _problemasRinonesExpliqueLabel.hidden = YES;
    
    _diabetesLabel.hidden = YES;
    _diabetesSiLabel.hidden = YES;
    _diabetesNoLabel.hidden = YES;
    _diabetesExpliqueLabel.hidden = YES;
    
    _problemasPulmonesLabel.hidden = YES;
    _problemasPulmonesSiLabel.hidden = YES;
    _problemasPulmonesNoLabel.hidden = YES;
    _problemasPulmonesExpliqueLabel.hidden = YES;
    
    _problemasAuditivosLabel.hidden = YES;
    _problemasAuditivosSiLabel.hidden = YES;
    _problemasAuditivosNoLabel.hidden = YES;
    
    _problemasVisualesLabel.hidden = YES;
    _problemasVisualesSiLabel.hidden = YES;
    _problemasVisualesNoLabel.hidden = YES;
    
    _problemasConcentracionLabel.hidden = YES;
    _problemasConcentracionSiLabel.hidden = YES;
    _problemasConcentracionNoLabel.hidden = YES;
    _problemasConcentracionExpliqueLabel.hidden = YES;
    
    _problemasTiroidesLabel.hidden = YES;
    _problemasTiroidesSiLabel.hidden = YES;
    _problemasTiroidesNoLabel.hidden = YES;
    _problemasTiroidesExpliqueLabel.hidden = YES;
    
    _padecimientosSaludFamiliaLabel.hidden = YES;
    
    _desmayosLabel.hidden = YES;
    _desmayosSiLabel.hidden = YES;
    _desmayosNoLabel.hidden = YES;
    _desmayosFrecuenciaLabel.hidden = YES;
    _desmayosExpliqueLabel.hidden = YES;
    
    _cancerFamiliaLabe.hidden = YES;
    _cancerFamiliaSiLabel.hidden = YES;
    _cancerFamiliaNoLabel.hidden = YES;
    
    _enfermedadesImportantesFamiliaLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _alteracionesSuenoSiField.hidden = YES;
    _alteracionesSuenoNoField.hidden = YES;
    _alteracionesSuenoExpliqueField.hidden = YES;
    
    _fatigaSiField.hidden = YES;
    _fatigaNoField.hidden = YES;
    _fatigaExpliqueField.hidden = YES;
    
    _apetitoNormalField.hidden = YES;
    _apetitoAumentadoField.hidden = YES;
    _apetitoDisminuidoField.hidden = YES;
    
    _pesoAumentadoField.hidden = YES;
    _pesoDisminuidoField.hidden = YES;
    _pesoNormalField.hidden = YES;
    
    _capacidadDisfrutarSiField.hidden = YES;
    _capacidadDisfrutarNoField.hidden = YES;
    _capacidadDisfrutarExpliqueField.hidden = YES;
    
    _inquietudPresenteField.hidden = YES;
    _inquietudAusenteField.hidden = YES;
    
    _problemasDigestivosSiField.hidden = YES;
    _problemasDigestivosNoField.hidden = YES;
    _problemasDIgestivosExpliqueField.hidden = YES;
    
    _problemasArticularesSiField.hidden = YES;
    _problemasArticularesNoField.hidden = YES;
    _problemasArticularesExpliqueField.hidden = YES;
    
    _doloresFrecuentesSiField.hidden = YES;
    _doloresFrecuentesNoField.hidden = YES;
    _doloresFrecuentesExpliqueField.hidden = YES;
    
    _problemasRinonesSiField.hidden = YES;
    _problemasRinonesNoField.hidden = YES;
    _problemasRinonesExpliqueField.hidden = YES;
    
    _diabetesSiField.hidden = YES;
    _diabetesNoField.hidden = YES;
    _diabetesExpliqueField.hidden = YES;
    
    _problemasPulmonesSiField.hidden = YES;
    _problemasPulmonesNoField.hidden = YES;
    _problemasPulmonesExpliqueField.hidden = YES;
    
    _problemasAuditivosSiField.hidden = YES;
    _problemasAuditivosNoField.hidden = YES;
    
    _problemasVisualesSiField.hidden = YES;
    _problemasVisualesNoField.hidden = YES;
    
    _problemasConcentracionSiField.hidden = YES;
    _problemasConcentracionNoField.hidden = YES;
    _problemasConcentracionExpliqueField.hidden = YES;
    
    _problemasTiroidesSiField.hidden = YES;
    _problemasTiroidesNoField.hidden = YES;
    _problemasTiroidesExpliqueField.hidden = YES;
    
    _padecimientosSaludFamiliaField.hidden = YES;
    
    _desmayosSiField.hidden = YES;
    _desmayosNoField.hidden = YES;
    _desmayosFrecuenciaField.hidden = YES;
    _desmayosExpliqueField.hidden = YES;
    
    _cancerFamiliaSiField.hidden = YES;
    _cancerFamiliaNoField.hidden = YES;
    
    _enfermedadesImportantesFamiliaDosField.hidden = YES;
    


    // 6. MOTIVO DE LA CONSULTA
    
    // TEXTFIELDS
    
    _motivoConsulta.hidden = YES;
    
    // 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO
    
    // LABELS
    
    _cuandoIniciaronSintomasLabel.hidden = YES;
    _descripcionSintomasLabel.hidden = YES;
    _haSidoHospitalizadaLabel.hidden = YES;
    _haSidoHospitalizadaSiLabel.hidden = YES;
    _haSidoHospitalizadaNoLabel.hidden = YES;
    _haSidoHospitalizadaFrecuenciaLabel.hidden = YES;
    _medicamentoSintomasLabel.hidden = YES;
    _medicamentosSintomasSiLabel.hidden = YES;
    _medicamentosSintomasNoLabel.hidden = YES;
    _medicamentosSintomasExpliqueLabel.hidden = YES;
    _funcionoTratamientoLabel.hidden = YES;
    _funcionoTratamientoSiLabel.hidden = YES;
    _funcionoTratamientoNoLabel.hidden = YES;
    _funcionoTratamientoExpliqueLabel.hidden = YES;
    _siguePresentandoSintomasLabel.hidden = YES;
    _siguePresentandoSintomasSiLabel.hidden = YES;
    _siguePresentandoSintomasNoLabel.hidden = YES;
    _siguePresentandoSintomasExpliqueLabel.hidden = YES;
    _acompaneSintomasLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _cuandoIniciaronSintomasField.hidden = YES;
    _descripcionSintomasField.hidden = YES;
    _haSidoHospitalizadaSiField.hidden = YES;
    _haSidoHospitalizadaNoField.hidden = YES;
    _haSidoHospitalizadaFrecuenciaField.hidden = YES;
    _medicamentosSintomasSiField.hidden = YES;
    _medicamentosSintomasNoField.hidden = YES;
    _medicamentosSintomasExpliqueField.hidden = YES;
    _funcionoTratamientoSiField.hidden = YES;
    _funcionoTratamientoNoField.hidden = YES;
    _funcionoTratamientoExpliqueField.hidden = YES;
    _siguePresentandoSintomasSiField.hidden = YES;
    _siguePresentandoSintomasNoField.hidden = YES;
    _siguePresentandoSintomasExpliqueField.hidden = YES;
    _acompaneSintomasField.hidden = YES;
    
    // 8. A EXAMEN MENTAL PARTE UNO
    
    // LABELS
    
    _sexoExamenLabel.hidden = YES;
    _sexoExamenFemeninaLabel.hidden = YES;
    _sexoExamenMasculinaLabel.hidden = YES;
    _sexoExamenComentarioLabel.hidden = YES;
    
    _edadAparenteLabel.hidden = YES;
    _edadAparenteIgualLabel.hidden = YES;
    _edadAparenteMayorLabel.hidden = YES;
    _edadAparenteEquivalenteLabel.hidden = YES;
    
    _estaturaExamenLabel.hidden = YES;
    _estaturaExamenBajaLabel.hidden = YES;
    _estaturaExamenNormalLabel.hidden = YES;
    _estaturaExamenAltaLabel.hidden = YES;
    
    _complexionLabel.hidden = YES;
    _complexionDelgadaLabel.hidden = YES;
    _complexionNormalLabel.hidden = YES;
    _complexionSobrepesoLabel.hidden = YES;
    
    _faciesLabel.hidden = YES;
    _faciesAnciosoLabel.hidden = YES;
    _faciesPreocupadoLabel.hidden = YES;
    _faciesTristeLabel.hidden = YES;
    _faciesDeprimidoLabel.hidden = YES;
    _sinCaracteristicasLabel.hidden = YES;
    _faciesOtroLabel.hidden = YES;
    
    _senasLabel.hidden = YES;
    _senasPresentesLabel.hidden = YES;
    _senasAusentesLabel.hidden = YES;
    _senasLunaresLabel.hidden = YES;
    _senasFaltaMiembroLabel.hidden = YES;
    _senasTatuajesLabel.hidden = YES;
    _senasUtilizaLentesLabel.hidden = YES;
    _senasPeloTenidoLabel.hidden = YES;
    _senasPeloAlineadoLabel.hidden = YES;
    _senasPeloRecogidoLabel.hidden = YES;
    _senasCejasDelineadasLabel.hidden = YES;
    _senasUtilizacionAretesLabel.hidden = YES;
    _senasOtrasLabel.hidden = YES;
    
    _higieneAlinoLabel.hidden = YES;
    _vestimentaBuenEstadoLabel.hidden = YES;
    _vestimentaMalEstadoLabel.hidden = YES;
    _higieneLabel.hidden = YES;
    _higienePresenteLabel.hidden = YES;
    _higieneAusenteLabel.hidden = YES;
    _discordanciaVestirLabel.hidden = YES;
    _discordanciaVestirSiLabel.hidden = YES;
    _discordanciaVestirNoLabel.hidden = YES;
    _tipoVestimentaLabel.hidden = YES;
    
    _marchaLabel.hidden = YES;
    _marchaRapidaLabel.hidden = YES;
    _marchaLentaLabel.hidden = YES;
    _marchaSinAlteracionesLabel.hidden = YES;
    _marchaOtraLabel.hidden = YES;
    
    _movimientosAnormalesLabel.hidden = YES;
    _incoordinacionMotoraLabel.hidden = YES;
    _ticsLabel.hidden = YES;
    _tembloresLabel.hidden = YES;
    
    _actitudEntrevistaLabel.hidden = YES;
    _actitudEvasivoLabel.hidden = YES;
    _actitudIndiferenteLabel.hidden = YES;
    _actitudSeductorLabel.hidden = YES;
    _actitudIrritableLabel.hidden = YES;
    _actitudRetadorLabel.hidden = YES;
    _actitudTranquiloLabel.hidden = YES;
    _actitudTimidoLabel.hidden = YES;
    _actitudDesconfiadoLabel.hidden = YES;
    _actitudCooperadorLabel.hidden = YES;
    _actitudAmableLabel.hidden = YES;
    _actitudSerenoLabel.hidden = YES;
    _actitudEstableLabel.hidden = YES;
    _actitudQuejumbrosoLabel.hidden = YES;
    _actitudOtrosLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _sexoExamenFemeninaField.hidden = YES;
    _sexoExamenMasculinaField.hidden = YES;
    _sexoExamenComentarioField.hidden = YES;
    
    _edadAparenteIgualField.hidden = YES;
    _edadAparenteMayorField.hidden = YES;
    _edadAparenteEquivalenteField.hidden = YES;
    
    _estaturaExamenBajaField.hidden = YES;
    _estaturaExamenNormalField.hidden = YES;
    _estaturaExamenAltaField.hidden = YES;
    
    _complexionDelgadaField.hidden = YES;
    _complexionNormalField.hidden = YES;
    _complexionSobrepesoField.hidden = YES;
    
    _faciesAnciosoField.hidden = YES;
    _faciesPreocupadoField.hidden = YES;
    _faciesTristeField.hidden = YES;
    _faciesDeprimidoField.hidden = YES;
    _sinCaracteristicasField.hidden = YES;
    _faciesOtroField.hidden = YES;
    
    _senasPresentesField.hidden = YES;
    _senasAusentesField.hidden = YES;
    _senasLunaresField.hidden = YES;
    _senasFaltaMiembroField.hidden = YES;
    _senasTatuajesField.hidden = YES;
    _senasUtilizaLentesField.hidden = YES;
    _senasPeloTenidoField.hidden = YES;
    _senasPeloAlineadoField.hidden = YES;
    _senasPeloRecogidoField.hidden = YES;
    _senasCejasDelineadasField.hidden = YES;
    _senasUtilizacionAretesField.hidden = YES;
    _senasOtrasField.hidden = YES;
    
    _vestimentaBuenEstadoField.hidden = YES;
    _vestimentaMalEstadoField.hidden = YES;
    
    _higienePresenteField.hidden = YES;
    _higieneAusenteField.hidden = YES;
    
    _discordanciaVestirSiField.hidden = YES;
    _discordanciaVestirNoField.hidden = YES;
    _tipoVestimentaField.hidden = YES;
    
    _marchaRapidaField.hidden = YES;
    _marchaLentaField.hidden = YES;
    _marchaSinAlteracionesField.hidden = YES;
    _marchaOtraField.hidden = YES;
    
    _incoordinacionMotoraField.hidden = YES;
    _ticsField.hidden = YES;
    _tembloresField.hidden = YES;
    
    _actitudEvasivoField.hidden = YES;
    _actitudIndiferenteField.hidden = YES;
    _actitudSeductorField.hidden = YES;
    _actitudIrritableField.hidden = YES;
    _actitudRetadorField.hidden = YES;
    _actitudTranquiloField.hidden = YES;
    _actitudTimidoField.hidden = YES;
    _actitudDesconfiadoField.hidden = YES;
    _actitudCooperadorField.hidden = YES;
    _actitudAmableField.hidden = YES;
    _actitudSerenoField.hidden = YES;
    _actitudEstableField.hidden = YES;
    _actitudQuejumbrosoField.hidden = YES;
    _actitudOtrosField.hidden = YES;
    
    // 8.B EXAMEN MENTAL (SEGUNDA PARTE)
    
    // LABELS
    _orientacionLabel.hidden = YES;
    
    _conductasAlucinatoriasLabel.hidden = YES;
    _conductasAlucinatoriasSiLabel.hidden = YES;
    _conductasAlucinatoriasNoLabel.hidden = YES;
    
    _ubicadoTiempoLabel.hidden = YES;
    _ubicadoTiempoSiLabel.hidden = YES;
    _ubicadoTiempoNoLabel.hidden = YES;
    
    _ubicadoLugarLabel.hidden = YES;
    _ubicadoLugarSiLabel.hidden = YES;
    _ubicadoLugarNoLabel.hidden = YES;
    
    _seReconoceLabel.hidden = YES;
    _seReconoceSiLabel.hidden = YES;
    _seReconoceNoLabel.hidden = YES;
    
    _pensamientoLabel.hidden = YES;
    
    _discursoFormaLabel.hidden = YES;
    _discursoFormaJuiciosoLabel.hidden = YES;
    _discursoFormaSinAlteracionLabel.hidden = YES;
    _discursoFormaRazonableLabel.hidden = YES;
    _discursoFormaNoRazonableLabel.hidden = YES;
    _discursoFormaDentroRealidadLabel.hidden = YES;
    _discursoFormaFueraRealidadLabel.hidden = YES;
    
    _discursoCursoLabel.hidden = YES;
    _discursoCursoAceleradoLabel.hidden = YES;
    _discursoCursoLentificadoLabel.hidden = YES;
    _discursoCursoNormalLabel.hidden = YES;
    
    _discursoContenidoLabel.hidden = YES;
    
    _humorLabel.hidden = YES;
    
    _afectoLabel.hidden = YES;
    _afectoDisminuidoLabel.hidden = YES;
    _afectoAumentadoLabel.hidden = YES;
    _afectoNormalLabel.hidden = YES;
    
    _inteligenciaLabel.hidden = YES;
    _inteligenciaArribaLabel.hidden = YES;
    _inteligenciaDebajoLabel.hidden = YES;
    _inteligenciaNormalLabel.hidden = YES;
    
    _fondoInformacionLabel.hidden = YES;
    
    _acordeNivelSocioculturalLabel.hidden = YES;
    _acordeNivelSocioCulturalSiLabel.hidden = YES;
    _acordeNivelSocioCulturalNoLabel.hidden = YES;
    
    _acordeNivelEscolaridadLabel.hidden = YES;
    _acordeNivelEscolaridadSiLabel.hidden = YES;
    _acordeNivelEscolaridadNoLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    
    _conductasAlucinatoriasSiField.hidden = YES;
    _conductasAlucinatoriasNoField.hidden = YES;
    
    _ubicadoTiempoSiField.hidden = YES;
    _ubicadoTiempoNoField.hidden = YES;
    
    _ubicadoLugarSiField.hidden = YES;
    _ubicadoLugarNoField.hidden = YES;
    
    _seReconoceSiField.hidden = YES;
    _seReconoceNoField.hidden = YES;
    
    
    _discursoFormaJuiciosoField.hidden = YES;
    _discursoFormaSinAlteracionField.hidden = YES;
    _discursoFormaRazonableField.hidden = YES;
    _discursoFormaNoRazonableField.hidden = YES;
    _discursoFormaDentroRealidadField.hidden = YES;
    _discursoFormaFueraRealidadField.hidden = YES;
    
    _discursoCursoAceleradoField.hidden = YES;
    _discursoCursoLentificadoField.hidden = YES;
    _discursoCursoNormalField.hidden = YES;
    
    _discursoContenidoField.hidden = YES;
    
    _humorField.hidden = YES;
    
    _afectoDisminuidoField.hidden = YES;
    _afectoAumentadoField.hidden = YES;
    _afectoNormalField.hidden = YES;
    
    _inteligenciaArribaField.hidden = YES;
    _inteligenciaDebajoField.hidden = YES;
    _inteligenciaNormalField.hidden = YES;
    
    
    _acordeNivelSocioCulturalSiField.hidden = YES;
    _acordeNivelSocioCulturalNoField.hidden = YES;
    
    _acordeNivelEscolaridadSiField.hidden = YES;
    _acordeNivelEscolaridadNoField.hidden = YES;
    
    // 9. EXAMEN MULTIAXIAL
    
    // LABELS
    
    _ejeIUnoLabel.hidden = YES;
    _ejeIDosLabel.hidden = YES;
    _ejeIALabel.hidden = YES;
    _ejeIBLabel.hidden = YES;
    _ejeICLabel.hidden = YES;
    
    _ejeIILabel.hidden = YES;
    _ejeIIALabel.hidden = YES;
    
    _ejeIIILabel.hidden = YES;
    _ejeIIIALabel.hidden = YES;
    _ejeIIIBLabel.hidden = YES;
    
    _ejeIVLabel.hidden = YES;
    _ejeIVLeveLabel.hidden = YES;
    _ejeIVModeradoLabel.hidden = YES;
    _ejeIVGraveLabel.hidden = YES;
    _ejeIVSeveroLabel.hidden = YES;
    
    _ejeVLabel.hidden = YES;
    _ejeVBuenoLabel.hidden = YES;
    _ejeVMedianoLabel.hidden = YES;
    _ejeVMediocreLabel.hidden = YES;
    _ejeVMaloLabel.hidden = YES;
    _motivoDisfuncionLabel.hidden = YES;
    
    
    
    // TEXTFIELDS
    _ejeIAField.hidden = YES;
    _ejeIBField.hidden = YES;
    _ejeICField.hidden = YES;
    
    _ejeIIAField.hidden = YES;
    
    _ejeIIIAField.hidden = YES;
    _ejeIIIBField.hidden = YES;
    
    _ejeIVLeveField.hidden = YES;
    _ejeIVModeradoField.hidden = YES;
    _ejeIVGraveField.hidden = YES;
    _ejeIVSeveroField.hidden = YES;
    
    _ejeVBuenoField.hidden = YES;
    _ejeVMedianoField.hidden = YES;
    _ejeVMediocreField.hidden = YES;
    _ejeVMaloField.hidden = YES;
    _motivoDisfuncionField.hidden = YES;
    
    // 10. TRATAMIENTO O PLAN DE TRABAJO
    
    // LABELS
    
    _medicamentosLabel.hidden = YES;
    
    _tratamientoPsicologicoLabel.hidden = YES;
    _tratamientoPsicologicoSiLabel.hidden = YES;
    _tratamientoPsicologicoNoLabel.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoLabel.hidden = YES;
    
    _referirloLabel.hidden = YES;
    _referirloSiLabel.hidden = YES;
    _referirloNoLabel.hidden = YES;
    _referirloEspecialidadLabel.hidden = YES;
    
    // TEXTFIELDS
    
    _medicamentosField.hidden = YES;
    
    _tratamientoPsicologicoSiField.hidden = YES;
    _tratamientoPsicologicoNoField.hidden = YES;
    _tratamientoPsicologicoTiempoEstimadoField.hidden = YES;
    
    _referirloSiField.hidden = YES;
    _referirloNoField.hidden = YES;
    _referirloEspecialidadField.hidden = YES;
    
    // 11. PRONOSTICO
    
    // LABELS
    _ligadoEvolucionLabel.hidden = YES;
    _ligadoMaloLabel.hidden = YES;
    _ligadoBuenoLabel.hidden = YES;
    _ligadoRegularLabel.hidden = YES;
    
    
    // TEXTFIELDS
    
    _ligadoEvolucionField.hidden = YES;
    _ligadoMaloField.hidden = YES;
    _ligadoBuenoField.hidden = YES;
    _ligadoRegularField.hidden = YES;
    
    
    // 12. PREGUNTAS ADICIONALES
    
    // LABELS
    _comoSeDescribeLabel.hidden = NO;
    _hobbyLabel.hidden = NO;
    _descansoLabel.hidden = NO;
    
    
    // TEXTFIELDS
    
    _comoSeDescribeField.hidden = NO;
    _hobbyField.hidden = NO;
    _descansoField.hidden = NO;
}




//////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////// AQUI EMPIEZA LA PARTE DE LA BASE DE DATOS /////////////////////////////////////////

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
            
            NSLog(@"TABLA CREADA 1");
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

///////////////////////////////////////////////// AQUI TERMINA CREATE OR OPEN DATABASE ////////////////////////////////////////////////////////////////////////////////


- (IBAction)agregarNuevoPaciente:(id)sender {
    
    
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    // UNO
    char *error;
    if (sqlite3_open([dbPathString UTF8String], &HistorialPacientes)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO FICHA_IDENTIFICACION_FINAL (NOMBRE,EDAD,ESTADO_CIVIL,OCUPACION,ESCOLARIDAD,ORIGINARIA,RELIGION,RADICA,FECHA) values ('%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@')", self.nombreField.stringValue, self.edadField.stringValue, self.estadoCivilField.stringValue, self.ocupacionField.stringValue, self.escolaridadField.stringValue, self.originariaField.stringValue, self.religionField.stringValue, self.radicaField.stringValue, self.fechaField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientes, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 1");
            
        }
        
    }
    
    
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    // DOS
    if (sqlite3_open([dbPathStringDOS UTF8String], &HistorialPacientesDOS)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO ANTECEDENTES_HEREDO_FAMILIARES (NOMBRE , PB_CONOCIDO , PB_DESCONOCIDO , PB_VIVO , PB_MUERTO , PB_NUM_MATRIMONIO , PB_ESTADO_SALUD , PB_RELACION_BUENA , PB_RELACION_MALA , PB_RELACION_NORMAL , PB_RELACION_EXPLIQUE , MB_CONOCIDO , MB_DESCONOCIDO , MB_VIVO , MB_MUERTO , MB_CAUSA , MB_NUM_MATRIMONIO , MB_ESTADO_SALUD , MB_RELACION_BUENA , MB_RELACION_MALA , MB_RELACION_NORMAL , MB_RELACION_EXPLIQUE , HERMANOS_NUMERO , HERMANOS_VIVOS , HERMANOS_MUERTOS , HERMANOS_CAUSA , HERMANOS_RELACION_BUENA , HERMANOS_RELACION_MALA , HERMANOS_RELACION_NORMAL , HERMANOS_RELACION_EXPLIQUE , HERMANOS_ESTADO_SALUD , MEDIOHERMANO_NUMERO ,MEDIOHERMANO_VIVOS , MEDIOHERMANO_MUERTOS , MEDIOHERMANO_CAUSA , MEDIOHERMANO_RELACION_BUENA , MEDIOHERMANO_RELACION_MALA , MEDIOHERMANO_RELACION_NORMAL , MEDIOHERMANO_RELACION_EXPLIQUE , MEDIOHERMANO_ESTADO_SALUD , ABUELOMATERNO_VIVO , ABUELOMATERNO_MUERTO , ABUELOMATERNO_CAUSA , ABUELOMATERNO_ESTADO_SALUD , ABUELAMATERNA_VIVO , ABUELAMATERNA_MUERTO , ABUELAMATERNA_CAUSA , ABUELAMATERNA_ESTADO_SALUD , ABUELOPATERNO_VIVO , ABUELOPATERNO_MUERTO , ABUELOPATERNO_CAUSA , ABUELOPATERNO_ESTADO_SALUD , ABUELAPATERNA_VIVO , ABUELAPATERNA_MUERTO , ABUELAPATERNA_CAUSA , ABUELAPATERNA_ESTADO_SALUD , ENFERMEDADES_PSIQUIATRICAS_FAMILIA , CANCER_FAMILIA , ENFERMEDADES_IMPORTANTES_FAMILIA) values ('%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@')", self.nombreField.stringValue, self.padreConocidoField.stringValue, self.padreDesconocidoField.stringValue, self.padreVivoField.stringValue, self.padreMuertoField.stringValue, self.padreMatrimonioFIeld.stringValue, self.padreSaludField.stringValue, self.padreRelacionBuenaFIeld.stringValue, self.padreRelacionMalaField.stringValue, self.padreRelacionNormalField.stringValue, self.padreRelacionExpliqueField.stringValue, self.madreConocidoField.stringValue, self.madreDesconocidoField.stringValue, self.madreVivoField.stringValue, self.madreMuertoField.stringValue, self.madreMuertoField.stringValue, self.madreMatrimonioFIeld.stringValue, self.madreRelacionBuenaFIeld.stringValue, self.madreRelacionMalaField.stringValue, self.madreRelacionNormalField.stringValue, self.madreRelacionExpliqueField.stringValue, self.madreSaludField.stringValue, self.hermanosVivosField.stringValue, self.heramnosNumeroField.stringValue, self.hermanosMuertosField.stringValue, self.hermanosCausaField.stringValue, self.hermanosRelacionBuenaField.stringValue, self.hermanosRelacionMalaField.stringValue, self.hermanosRelacionNormalField.stringValue, self.hermanosRelacionExpliqueField.stringValue, self.hermanosSaludField.stringValue, self.mediosHermanosNumeroField.stringValue, self.mediosHermanosVivosField.stringValue, self.mediosHermanosMuertosField.stringValue, self.mediosHermanosCausaField.stringValue, self.mediosHermanosRelacionBuenaField.stringValue, self.mediosHermanosRelacionMalaField.stringValue, self.mediosHermanosRelacionNormalField.stringValue, self.mediosHermanosRelacionExpliqueField.stringValue, self.mediosHermanosSaludField.stringValue, self.abueloMaternoVivoField.stringValue, self.abueloMaternoMuertoField.stringValue, self.abueloMaternoCausaField.stringValue, self.abueloMaternoSaludField.stringValue, self.abuelaMaternaVivoField.stringValue, self.abuelaMaternaMuertoField.stringValue, self.abuelaMaternaCausaField.stringValue, self.abuelaMaternaSaludField.stringValue, self.abueloPaternoVivoField.stringValue, self.abueloPaternoMuertoField.stringValue, self.abueloPaternoCausaField.stringValue, self.abueloPaternoSaludField.stringValue, self.abuelaPaternaVivoField.stringValue, self.abuelaPaternaMuertoField.stringValue, self.abuelaPaternaCausaField.stringValue, self.abuelaPaternaSaludField.stringValue, self.enfermedadesPsiquiatricasFamiliaField.stringValue, self.cancerFamiliaField.stringValue, self.enfermedadesImportantesFamiliaField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesDOS, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 2");
            
        }
        
    }
    
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    // TRES
    if (sqlite3_open([dbPathStringTRES UTF8String], &HistorialPacientesTRES)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO ANTECEDENTES_PERSONALES_PATOLOGICOS (NOMBRE, SOBREPESO_SI , SOBREPESO_NO , SOBREPESO_EXPLIQUE , PESO  , ESTATURA , TIPO_PADECIMIENTO , ANTECEDENTES_QUIRURGICOS_SI , ANTECEDENTES_QUIRURGICOS_NO , ANTECEDENTES_QUIRURGICOS_EXPLIQUE , HOSPITALIZACIONES_SI , HOSPITALIZACIONES_NO , HOSPITALIZACIONES_EXPLIQUE , TABAQUISMO_SI , TABAQUISMO_NO , TABAQUISMO_FECHA , ALCOHOLISMO_SI , ALCOHOLISMO_NO , ALCOHOLISMO_FECHA , ALERGICOS_SI , ALERGICOS_NO , ALERGIOS_EXPLIQUE , DROGAS_SI , DROGAS_NO , DROGAS_FECHA , COCAINA , MARIHUANA , HEROINA , OTRA_DROGA) values ('%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@')", self.nombreField.stringValue, self.sobrepesoSiField.stringValue, self.sobrepesoNoField.stringValue, self.sobrepesoExpliqueField.stringValue, self.pesoField.stringValue, self.estaturaField.stringValue, self.tipoPadecimientoField.stringValue, self.antecedentesQuirurgicosSiField.stringValue, self.antecedentesQuirurgicosNoField.stringValue, self.antecedentesQuirurgicosExpliqueField.stringValue, self.hospitalizacionesSiField.stringValue, self.hospitalizacionesNoField.stringValue, self.hospitalizacionesExpliqueField.stringValue, self.antecedentesTabaquismoSiField.stringValue, self.antecedentesTabaquismoNoField.stringValue, self.antecedentesTabaquismoFechaField.stringValue, self.antecedentesAlcoholismoSiField.stringValue, self.antecedentesAlcoholismoNoField.stringValue, self.antecedentesAlcoholismoFechaField.stringValue, self.antecedentesAlergicosSiField.stringValue, self.antecedentesAlergicosNoField.stringValue, self.antecedentesAlergicosExpliqueField.stringValue, self.antecedentesDrogasSiField.stringValue, self.antecedentesDrogasNoField.stringValue, self.antecedentesDrogasFechaField.stringValue, self.cocainaField.stringValue, self.marihuanaField.stringValue, self.heroinaField.stringValue, self.drogaUitlizadaOtrasField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesTRES, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 3");
            
        }
        
    }
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    // CUATRO
    if (sqlite3_open([dbPathStringCUATRO UTF8String], &HistorialPacientesCUATRO)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO ANTECEDENTES_PERSONALES_NO_PATOLOGICOS (NOMBRE , GRADO_ESCOLAR , REPROBATORIO_SI , REPROBATORIO_NO , REPROBATORIO_CUANTOS , MOTIVO_REPROBATORIO , PROMEDIO_ESTUDIOS , QUEJAS_ESTUDIOS , BATALLA_AMIGOS_SI , BATALLA_AMIGOS_NO , BATALLA_AMIGOS_EXPLIQUE , CASADA , SOLTERA , DIVORCIADA , VIUDA , NUMERO_MATRIMONIO , DEDICA_HOGAR , DEDICA_TRABAJO , DEDICA_DESEMPLEADA , DEDICA_ESTUDIANTE , TIPO_TRABAJO , NUMERO_HIJOS , HIJOUNO_NOMBRE , HIJOUNO_EDAD , HIJOUNO_SITUACION , HIJOUNO_RELACION , HIJODOS_NOMBRE , HIJODOS_EDAD , HIJODOS_SITUACION , HIJODOS_RELACION , HIJOTRES_NOMBRE , HIJOTRES_EDAD , HIJOTRES_SITUACION , HIJOTRES_RELACION , HIJOCUATRO_NOMBRE , HIJOCUATRO_EDAD , HIJOCUATRO_SITUACION , HIJOCUATRO_RELACION , HIJOCINCO_NOMBRE , HIJOCINCO_EDAD , HIJOCINCO_RELACION , HIJOCINCO_SITUACION , HIJOSEIS_NOMBRE , HIJOSEIS_EDAD , HIJOSEIS_SITUACION , HIJOSEIS_RELACION , VIVEN_USTED , SE_LLEVA_HERMANOS , LLEVA_MEJOR_FAMILIA , LLEVAN_PAPAS , RELACION_LLEVA_PAREJA , RELACION_LLEVA_HIJOS ) values ('%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@')", self.nombreField.stringValue, self.gradoEscolarField.stringValue, self.gradoReprobatorioSiField.stringValue, self.gradoReprobatorioNoField.stringValue, self.gradoReprobatorioCuantosField.stringValue, self.gradoRepobratorioMotivoField.stringValue, self.promedioEstudioField.stringValue, self.quejasField.stringValue, self.batallaAmigosSiField.stringValue, self.batallaAmigosNoField.stringValue, self.batallaAmigosExpliqueField.stringValue, self.alMomentoCasadaField.stringValue, self.alMomentoSolteraField.stringValue, self.alMomentoDivorciadaField.stringValue, self.alMomentoViudaField.stringValue, self.alMomentoNumeroMatrimoniosField.stringValue, self.seDedicaHogarField.stringValue, self.seDedicaTrabajoField.stringValue, self.seDedicaDesempleadaField.stringValue, self.seDedciaEstudianteField.stringValue, self.seDedicaTipoTrabajoField.stringValue, self.numeroHijosField.stringValue, self.nombreHijoUnoField.stringValue, self.edadHijoUnoField.stringValue, self.situacionHijoUnoFIeld.stringValue, self.relacionHijoUnoField.stringValue, self.nombreHijoDosField.stringValue, self.edadHijoDosField.stringValue, self.situacionHijoDosField.stringValue, self.relacionHijoDosField.stringValue, self.nombreHijoTresField.stringValue, self.edadHijoTresField.stringValue, self.situacionHijoTresField.stringValue, self.relacionHijoTresField.stringValue, self.nombreHijoCuatroField.stringValue, self.edadHijoCuatroField.stringValue, self.situacionHijoCuatroField.stringValue, self.relacionHijoCuatroField.stringValue, self.nombreHijoCincoField.stringValue, self.edadHijoCincoField.stringValue, self.situacionHijoCincoField.stringValue, self.relacionHijoCincoField.stringValue, self.nombreHijoSeisField.stringValue, self.edadHijoSeisField.stringValue, self.situacionHijoSeisField.stringValue, self.relacionHijoSeisField.stringValue, self.quienViveUstedField.stringValue, self.comoSeLlevaHermanosField.stringValue, self.quienSeLlevaMejorField.stringValue, self.comoSeLlevanPapasField.stringValue, self.relacionConParejaField.stringValue, self.relacionConHijosField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesCUATRO, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 4");
            
        }
        
    }
    
    
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    // CINCO
    if (sqlite3_open([dbPathStringCINCO UTF8String], &HistorialPacientesCINCO)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO INTERROGATORIO_APARATOS_Y_SISTEMAS (NOMBRE , ALTERACIONES_SUENO_SI , ALTERACIONES_SUENO_NO , ALTERACIONES_SUENO_EXPLIQUE , FATIGA_SI , FATIGA_NO , FATIGA_EXPLIQUE , APETITO_NORMAL , APETITO_AUMENTADO , APETITO_DISMINUIDO, ALTERACION_PESO_AUMENTADO , ALTERACION_PESO_DISMINUIDO , ALTERACION_PESO_NORMAL , ALTERACION_DISFRUTAR_SI , ALTERACION_DISFRUTAR_NO , ALTERACION_DISFRUTAR_EXPLIQUE , LENTO_ACTIVIDADES_PRESENTE , LENTO_ACTIVIDADES_AUSENTE , PROBLEMAS_DIGESTIVOS_SI , PROBLEMAS_DIGESTIVOS_NO , PROBLEMAS_DIGESTIVOS_EXPLIQUE , PROBLEMAS_ARTICULARES_SI , PROBLEMAS_ARTICULARES_NO , PROBLEMAS_ARTICULARES_EXPLIQUE , DOLORES_FRECUENTES_SI , DOLORES_FRECUENTES_NO , DOLORES_FRECUENTES_EXPLIQUE , PROBLEMAS_RINONES_SI , PROBLEMAS_RINONES_NO , PROBLEMAS_RINONES_EXPLIQUE , DIABETES_SI , DIABETES_NO , DIABETES_EXPLIQUE , PROBLEMAS_PULMON_SI , PROBLEMAS_PULMON_NO , PROBLEMAS_PULMON_EXPLIQUE , PROBLEMAS_AUDITIVOS_SI , PROBLEMAS_AUDITIVOS_NO , PROBLEMAS_VISUALES_SI , PROBLEMAS_VISUALES_NO , PROBLEMAS_CONCENTRACION_SI , PROBLEMAS_CONCENTRACION_NO , PROBLEMAS_CONCENTRACION_EXPLIQUE , PROBLEMAS_TIROIDES_SI , PROBLEMAS_TIROIDES_NO , PROBLEMA_TIROIDES_EXPLIQUE , PADECIMIENTO_SALUD , DESMAYOS_SI , DESMAYOS_NO , DESMAYOS_FRECUENCIA , DESMAYOS_MOTIVOS , CANCER_SI , CANCER_NO , ENFERMEDADES_FAMILIA) values ('%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@')", self.nombreField.stringValue, self.alteracionesSuenoSiField.stringValue, self.alteracionesSuenoNoField.stringValue, self.alteracionesSuenoExpliqueField.stringValue, self.fatigaSiField.stringValue, self.fatigaNoField.stringValue, self.fatigaExpliqueField.stringValue, self.apetitoNormalField.stringValue, self.apetitoAumentadoField.stringValue, self.apetitoDisminuidoField.stringValue, self.pesoAumentadoField.stringValue, self.pesoDisminuidoField.stringValue, self.pesoNormalField.stringValue, self.capacidadDisfrutarSiField.stringValue, self.capacidadDisfrutarNoField.stringValue, self.capacidadDisfrutarExpliqueField.stringValue, self.inquietudPresenteField.stringValue, self.inquietudAusenteField.stringValue, self.problemasDigestivosSiField.stringValue, self.problemasDigestivosNoField.stringValue, self.problemasDIgestivosExpliqueField.stringValue, self.problemasArticularesSiField.stringValue, self.problemasArticularesNoField.stringValue, self.problemasArticularesExpliqueField.stringValue, self.doloresFrecuentesSiField.stringValue, self.doloresFrecuentesNoField.stringValue, self.doloresFrecuentesExpliqueField.stringValue, self.problemasRinonesSiField.stringValue, self.problemasRinonesNoField.stringValue, self.problemasRinonesExpliqueField.stringValue, self.diabetesSiField.stringValue, self.diabetesNoField.stringValue, self.diabetesExpliqueField.stringValue, self.problemasPulmonesSiField.stringValue, self.problemasPulmonesNoField.stringValue, self.problemasPulmonesExpliqueField.stringValue, self.problemasAuditivosSiField.stringValue, self.problemasAuditivosNoField.stringValue, self.problemasVisualesSiField.stringValue, self.problemasVisualesNoField.stringValue, self.problemasConcentracionSiField.stringValue, self.problemasConcentracionNoField.stringValue, self.problemasConcentracionExpliqueField.stringValue, self.problemasTiroidesSiField.stringValue, self.problemasTiroidesNoField.stringValue, self.problemasTiroidesExpliqueField.stringValue, self.padecimientosSaludFamiliaField.stringValue, self.desmayosSiField.stringValue, self.desmayosNoField.stringValue, self.desmayosFrecuenciaField.stringValue, self.desmayosExpliqueField.stringValue, self.cancerFamiliaSiField.stringValue, self.cancerFamiliaNoField.stringValue, self.enfermedadesImportantesFamiliaDosField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesCINCO, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 5");
            
        }
        
    }
    
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    // SEIS
    if (sqlite3_open([dbPathStringSEIS UTF8String], &HistorialPacientesSEIS)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO MOTIVO_CONSULTA (NOMBRE , MOTIVO_CONSULTA) values ('%@', '%@')", self.nombreField.stringValue, self.motivoConsulta.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesSEIS, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 6");
            
        }
        
    }
    
    
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    // SIETE
    if (sqlite3_open([dbPathStringSIETE UTF8String], &HistorialPacientesSIETE)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO PRINCIPIO_EVOLUCION_PADECIMIENTO (NOMBRE , CUANDO_INCIARON , DESCRIPCION_SINTOMAS , HOSPITALIZADA_SI , HOSPITALIZADA_NO , HOSPITALIZADA_FRECUENCIA , MEDICAMENTO_SI , MEDICAMENTO_NO , MEDICAMENTO_EXPLIQUE , FUNCIONO_TRATAMIENTO_SI , FUNCIONO_TRATAMIENTO_NO , FUNCIONO_TRATAMIENTO_EXPLIQUE , SIGUE_SINTOMAS_SI , SIGUE_SINTOMAS_NO , SIGUE_SINTOMAS_EXPLIQUE , ACOMPANE_SINTOMAS ) values ('%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@')", self.nombreField.stringValue, self.cuandoIniciaronSintomasField.stringValue, self.descripcionSintomasField.stringValue, self.haSidoHospitalizadaSiField.stringValue, self.haSidoHospitalizadaNoField.stringValue, self.haSidoHospitalizadaFrecuenciaField.stringValue, self.medicamentosSintomasSiField.stringValue, self.medicamentosSintomasNoField.stringValue, self.medicamentosSintomasExpliqueField.stringValue, self.funcionoTratamientoSiField.stringValue, self.funcionoTratamientoNoField.stringValue, self.funcionoTratamientoExpliqueField.stringValue, self.siguePresentandoSintomasSiField.stringValue, self.siguePresentandoSintomasNoField.stringValue, self.siguePresentandoSintomasExpliqueField.stringValue, self.acompaneSintomasField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesSIETE, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 7");
            
        }
        
    }
    
    
    
    // OCHO
    if (sqlite3_open([dbPathStringOCHO UTF8String], &HistorialPacientesOCHO)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO EXAMEN_MENTAL_PARTE_UNO (NOMBRE , FEMENINA , MASCULINA , COMENTARIO , EDAD_IGUAL , EDAD_MAYOR , EDAD_EQUIVALENTE , ESTATURA_BAJA , ESTATURA_ALTA , ESTATURA_NORMAL , COMPLEXION_DELGADA , COMPLEXION_SOBREPESO , COMPLEXION_NORMAL , FACIES_ANCIOSO , FACIES_PREOCUPADO , FACIES_TRISTE , FACIES_DEPRIMIDO , FACIES_CARACTERISTICAS , FACIES_OTROS , SENAS_PRESENTES , SENAS_AUSENTES , LUNARES , FALTA_MIEMBRO , TATUAJES , LENTES , PELO_TENIDO , PELO_ALINEADO , PELO_RECOGIDO , CEJAS_DELINEADAS , ARETES , SENAS_OTRAS , VESIMENTA_BUEN_ESTADO , VESTIMENTA_MAL_ESTADO , HIGIENE_PRESENTE , HIGIENE_AUSENTE , DISCORDANCIA_SI , DISCORDANCIA_NO , TIPO_VESTIMENTA , MARCHA_RAPIDA , MARCHA_LENTA , MARCHA_SIN_ALTERACIONES , MARCHA_OTRA , INCOORDINACION_MOTORA , TICS , TEMBLORES , EVASIVO , INDIFERENTE , SEDUCTOR , IRRITABLE , RETADOR , TRANQUILO , TIMIDO , DESCONFIADO , COOPERADOR , AMABLE , SERENO , ESTABLE , QUEJUMBROSO , ACTITUD_OTROS) values ('%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@', '%@')", self.nombreField.stringValue, self.sexoExamenFemeninaField.stringValue, self.sexoExamenMasculinaField.stringValue, self.sexoExamenComentarioField.stringValue, self.edadAparenteIgualField.stringValue, self.edadAparenteMayorField.stringValue, self.edadAparenteEquivalenteField.stringValue, self.estaturaExamenBajaField.stringValue, self.estaturaExamenAltaField.stringValue, self.estaturaExamenNormalField.stringValue, self.complexionDelgadaField.stringValue, self.complexionSobrepesoField.stringValue, self.complexionNormalField.stringValue, self.faciesAnciosoField.stringValue, self.faciesPreocupadoField.stringValue, self.faciesTristeField.stringValue, self.faciesDeprimidoField.stringValue, self.sinCaracteristicasField.stringValue, self.faciesOtroField.stringValue, self.senasPresentesField.stringValue, self.senasAusentesField.stringValue, self.senasLunaresField.stringValue, self.senasFaltaMiembroField.stringValue, self.senasTatuajesField.stringValue, self.senasUtilizaLentesField.stringValue, self.senasPeloTenidoField.stringValue, self.senasPeloAlineadoField.stringValue, self.senasPeloRecogidoField.stringValue, self.senasCejasDelineadasField.stringValue, self.senasUtilizacionAretesField.stringValue, self.senasOtrasField.stringValue, self.vestimentaBuenEstadoField.stringValue, self.vestimentaMalEstadoField.stringValue, self.higienePresenteField.stringValue, self.higieneAusenteField.stringValue, self.discordanciaVestirSiField.stringValue, self.discordanciaVestirNoField.stringValue, self.tipoVestimentaField.stringValue, self.marchaRapidaField.stringValue, self.marchaLentaField.stringValue, self.marchaSinAlteracionesField.stringValue, self.marchaOtraField.stringValue, self.incoordinacionMotoraField.stringValue, self.ticsField.stringValue, self.tembloresField.stringValue, self.actitudEvasivoField.stringValue, self.actitudIndiferenteField.stringValue, self.actitudSeductorField.stringValue, self.actitudIrritableField.stringValue, self.actitudRetadorField.stringValue, self.actitudTranquiloField.stringValue, self.actitudTimidoField.stringValue, self.actitudDesconfiadoField.stringValue, self.actitudCooperadorField.stringValue, self.actitudAmableField.stringValue, self.actitudSerenoField.stringValue, self.actitudEstableField.stringValue, self.actitudQuejumbrosoField.stringValue, self.actitudOtrosField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesOCHO, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 8");
            
        }
        
    }
    
    
    
    // OCHOB
    if (sqlite3_open([dbPathStringOCHOB UTF8String], &HistorialPacientesOCHOB)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO EXAMEN_MENTAL_PARTE_DOS (NOMBRE , ALUCINATORIAS_SI , ALUCINATORIAS_NO , UBICADO_TIEMPO_SI , UBICADO_TIEMPO_NO , UBICADO_LUGAR_SI , UBICADO_LUGAR_NO , RECONOCE_SI , RECONOCE_NO , JUICIOSO , SIN_ALTERACION , RAZONABLE , NO_RAZONABLE , DENTRO_REALIDAD , FUERA_REALIDAD , DISCURSO_ACELERADO , DISCURSO_LENTIFICADO , DISCURSO_NORMAL , DISCURSO_CONTENIDO , HUMOR , AFECTO_DISMINUIDO , AFECTO_AUMENTADO , AFECTO_NORMAL , INTELIGENCIA_ARRIBA , INTELIGENCIA_ABAJO , INTELIGENCIA_NORMAL , ACORDE_SOCIOCULTURAL_SI , ACORDE_SOCIOCULTURAL_NO , ACORDE_ESCOLARIDAD_SI , ACORDE_ESCOLARIDAD_NO) values ('%@', '%@', '%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@')", self.nombreField.stringValue, self.conductasAlucinatoriasSiField.stringValue, self.conductasAlucinatoriasNoField.stringValue, self.ubicadoTiempoSiField.stringValue, self.ubicadoTiempoNoField.stringValue, self.ubicadoLugarSiField.stringValue, self.ubicadoLugarNoField.stringValue, self.seReconoceSiField.stringValue, self.seReconoceNoField.stringValue, self.discursoFormaJuiciosoField.stringValue, self.discursoFormaSinAlteracionField.stringValue, self.discursoFormaRazonableField.stringValue, self.discursoFormaNoRazonableField.stringValue, self.discursoFormaDentroRealidadField.stringValue, self.discursoFormaFueraRealidadField.stringValue, self.discursoCursoAceleradoField.stringValue, self.discursoCursoLentificadoField.stringValue, self.discursoCursoNormalField.stringValue, self.discursoContenidoField.stringValue, self.humorField.stringValue, self.afectoDisminuidoField.stringValue, self.afectoAumentadoField.stringValue, self.afectoNormalField.stringValue, self.inteligenciaArribaField.stringValue, self.inteligenciaDebajoField.stringValue, self.inteligenciaNormalField.stringValue, self.acordeNivelSocioCulturalSiField.stringValue, self.acordeNivelSocioCulturalNoField.stringValue, self.acordeNivelEscolaridadSiField.stringValue, self.acordeNivelEscolaridadNoField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesOCHOB, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 8B");
            
        }
        
    }
    
    
    // NUEVE
    if (sqlite3_open([dbPathStringNUEVE UTF8String], &HistorialPacientesNUEVE)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO DIAGNOSTICO_MULTIAXIAL (NOMBRE , EJE_UNO_A , EJE_UNO_B , EJE_UNO_C , EJE_DOS_A , EJE_TRES_A , EJE_TRES_B , EJE_CUATRO_LEVE , EJE_CUATRO_MODERADO , EJE_CUATRO_GRAVE , EJE_CUATRO_SEVERO , EJE_V_BUENO , EJE_V_MEDIANO , EJE_V_MEDIOCRE , EJE_V_MALO , EJE_V_MOTIVO) values ('%@', '%@', '%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@','%@', '%@')", self.nombreField.stringValue, self.ejeIAField.stringValue, self.ejeIBField.stringValue, self.ejeICField.stringValue, self.ejeIIAField.stringValue, self.ejeIIIAField.stringValue, self.ejeIIIBField.stringValue, self.ejeIVLeveField.stringValue, self.ejeIVModeradoField.stringValue, self.ejeIVGraveField.stringValue, self.ejeIVSeveroField.stringValue, self.ejeVBuenoField.stringValue, self.ejeVMedianoField.stringValue, self.ejeVMediocreField.stringValue, self.ejeVMaloField.stringValue, self.motivoDisfuncionField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesNUEVE, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 9");
            
        }
        
    }
    
    // DIEZ
    if (sqlite3_open([dbPathStringDIEZ UTF8String], &HistorialPacientesDIEZ)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO TRATAMIENTO (NOMBRE , MEDICAMENTOS , PSICOLOGICO_SI , PSICOLOGICO_NO , TIEMPO_ESTIMADO , REFERIRLO_SI , REFERIRLO_NO , ESPECIALIDAD) values ('%@', '%@', '%@', '%@','%@', '%@','%@', '%@')", self.nombreField.stringValue, self.medicamentosField.stringValue, self.tratamientoPsicologicoSiField.stringValue, self.tratamientoPsicologicoNoField.stringValue, self.tratamientoPsicologicoTiempoEstimadoField.stringValue, self.referirloSiField.stringValue, self.referirloNoField.stringValue, self.referirloEspecialidadField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesDIEZ, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 10");
            
        }
        
    }
    
    
    // ONCE
    if (sqlite3_open([dbPathStringONCE UTF8String], &HistorialPacientesONCE)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO PRONOSTICO (NOMBRE , LIGADO_EVOLUCION, MALO, BUENO, REGULAR) values ('%@', '%@', '%@', '%@','%@')", self.nombreField.stringValue, self.ligadoEvolucionField.stringValue, self.ligadoMaloField.stringValue, self.ligadoBuenoField.stringValue, self.ligadoRegularField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesONCE, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 11");
            
        }
        
    }
    
    
    
    
    // DOCE
    if (sqlite3_open([dbPathStringDOCE UTF8String], &HistorialPacientesDOCE)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"INSERT INTO PREGUNTAS_ADICIONALES (NOMBRE , DESCRIBE, HOBBY, DESCANSO) values ('%@', '%@', '%@', '%@')", self.nombreField.stringValue, self.comoSeDescribeField.stringValue, self.hobbyField.stringValue, self.descansoField.stringValue];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesDOCE, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"PARTE AGREGADA 12");
            _successLabel.hidden = NO;
            
        }
        
    }
    
    
}

/////////////////////////////////////////////////////////////////////////////
// EMPIEZA DELETE





- (IBAction)seguimiento:(id)sender {
    
    
    
    
    // UNO
    sqlite3_stmt *statement;
    
    if (sqlite3_open([dbPathString UTF8String], &HistorialPacientes)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM FICHA_IDENTIFICACION_FINAL WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
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
                
                
                // PONER EN TEXTFIELDS
                _edadField.stringValue = edad;
                _estadoCivilField.stringValue = estadoCivil;
                _ocupacionField.stringValue = ocupacion;
                _escolaridadField.stringValue = escolaridad;
                _originariaField.stringValue = originaria;
                _religionField.stringValue = religion;
                _radicaField.stringValue = radica;
                _fechaField.stringValue = fecha;
                
            }
        }
    }
    
    // DOS
    
    sqlite3_stmt *statementDOS;
    
    if (sqlite3_open([dbPathStringDOS UTF8String], &HistorialPacientesDOS)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO DOS");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM ANTECEDENTES_HEREDO_FAMILIARES WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesDOS, query_sql, -1, &statementDOS, NULL)==SQLITE_OK) {
            while (sqlite3_step(statementDOS)==SQLITE_ROW) {
                
                
                NSString *pb_conocido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 2)];
                NSString *pb_desconocido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 3)];
                NSString *pb_vivo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 4)];
                NSString *pb_muerto = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 5)];
                NSString *pb_matrimonio = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 6)];
                NSString *pb_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 7)];
                NSString *pb_relacion_buena = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 8)];
                NSString *pb_relacion_mala = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 9)];
                NSString *pb_relacion_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 10)];
                NSString *pb_relacion_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 11)];
                
                NSString *mb_conocido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 12)];
                NSString *mb_desconocido = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 13)];
                NSString *mb_vivo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 14)];
                NSString *mb_muerto = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 15)];
                NSString *mb_matrimonio = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 16)];
                NSString *mb_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 17)];
                NSString *mb_relacion_buena = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 18)];
                NSString *mb_relacion_mala = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 19)];
                NSString *mb_relacion_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 20)];
                NSString *mb_relacion_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 21)];
                
                NSString *hermanos_numero = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 22)];
                NSString *hermanos_vivos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 23)];
                NSString *hermanos_muertos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 24)];
                NSString *hermanos_causa = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 25)];
                NSString *hermanos_relacion_buena = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 26)];
                NSString *hermanos_relacion_mala = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 27)];
                NSString *hermanos_relacion_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 28)];
                NSString *hermanos_relacion_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 29)];
                NSString *hermanos_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 30)];
                
                NSString *medios_hermanos_numero = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 31)];
                NSString *medios_hermanos_vivos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 32)];
                NSString *medios_hermanos_muertos = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 33)];
                NSString *medios_hermanos_causa = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 34)];
                NSString *medios_hermanos_relacion_buena = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 35)];
                NSString *medios_hermanos_relacion_mala = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 36)];
                NSString *medios_hermanos_relacion_normal = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 37)];
                NSString *medios_hermanos_relacion_explique = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 38)];
                NSString *medios_hermanos_estado_salud = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statementDOS, 39)];
                
                
                // PONER EN TEXTFIELDS
                _padreConocidoField.stringValue = pb_conocido;
                _padreDesconocidoField.stringValue = pb_desconocido;
                _padreVivoField.stringValue = pb_vivo;
                _padreMuertoField.stringValue = pb_muerto;
                _padreMatrimonioFIeld.stringValue = pb_matrimonio;
                _padreSaludField.stringValue = pb_estado_salud;
                _padreRelacionBuenaFIeld.stringValue = pb_relacion_buena;
                _padreRelacionMalaField.stringValue = pb_relacion_mala;
                _padreRelacionNormalField.stringValue = pb_relacion_normal;
                _padreRelacionExpliqueField.stringValue = pb_relacion_explique;
                
                _madreConocidoField.stringValue = mb_conocido;
                _madreDesconocidoField.stringValue = mb_desconocido;
                _madreVivoField.stringValue = mb_vivo;
                _madreMuertoField.stringValue = mb_muerto;
                _madreMatrimonioFIeld.stringValue = mb_matrimonio;
                _madreSaludField.stringValue = mb_estado_salud;
                _madreRelacionBuenaFIeld.stringValue = mb_relacion_buena;
                _madreRelacionMalaField.stringValue = mb_relacion_mala;
                _madreRelacionNormalField.stringValue = mb_relacion_normal;
                _madreRelacionExpliqueField.stringValue = mb_relacion_explique;
                
                _heramnosNumeroField.stringValue = hermanos_numero;
                _hermanosVivosField.stringValue = hermanos_vivos;
                _hermanosMuertosField.stringValue = hermanos_muertos;
                _hermanosCausaField.stringValue = hermanos_causa;
                _hermanosRelacionBuenaField.stringValue = hermanos_relacion_buena;
                _hermanosRelacionMalaField.stringValue = hermanos_relacion_mala;
                _hermanosRelacionNormalField.stringValue = hermanos_relacion_normal;
                _hermanosRelacionExpliqueField.stringValue = hermanos_relacion_explique;
                _hermanosSaludField.stringValue = hermanos_estado_salud;
                
                _mediosHermanosNumeroField.stringValue = medios_hermanos_numero;
                _mediosHermanosVivosField.stringValue = medios_hermanos_vivos;
                _mediosHermanosMuertosField.stringValue = medios_hermanos_muertos;
                _mediosHermanosCausaField.stringValue = medios_hermanos_causa;
                
                _mediosHermanosRelacionBuenaField.stringValue = medios_hermanos_relacion_buena;
                _mediosHermanosRelacionMalaField.stringValue = medios_hermanos_relacion_mala;
                _mediosHermanosRelacionNormalField.stringValue = medios_hermanos_relacion_normal;
                _mediosHermanosRelacionExpliqueField.stringValue = medios_hermanos_relacion_explique;
                _mediosHermanosSaludField.stringValue = medios_hermanos_estado_salud;
               
                
                

            
                
            }
        }
    }
    
    
// DOS B
    
    
    if (sqlite3_open([dbPathStringDOS UTF8String], &HistorialPacientesDOS)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO DOS");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM ANTECEDENTES_HEREDO_FAMILIARES WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
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
                
                                // ABUELO MATERNO
                                _abueloMaternoVivoField.stringValue = abuelo_materno_vivo;
                                _abueloMaternoMuertoField.stringValue = abuelo_materno_muerto;
                                _abueloMaternoCausaField.stringValue = abuelo_materno_causa;
                                _abueloMaternoSaludField.stringValue = abuelo_materno_estado_salud;
                                // ABUELA MATERNA
                                _abuelaMaternaVivoField.stringValue = abuela_materna_vivo;
                                _abuelaMaternaMuertoField.stringValue = abuela_materna_muerto;
                                _abuelaMaternaCausaField.stringValue = abuela_materna_causa;
                                _abuelaMaternaSaludField.stringValue = abuela_materna_estado_salud;
                                // ABUELO PATERNO
                                _abueloPaternoVivoField.stringValue = abuelo_paterno_vivo;
                                _abueloPaternoMuertoField.stringValue = abuelo_paterno_muerto;
                                _abueloPaternoCausaField.stringValue = abuelo_paterno_causa;
                                _abueloPaternoSaludField.stringValue = abuelo_paterno_estado_salud;
                                // ABUELA PATERNA
                                _abuelaPaternaVivoField.stringValue = abuela_paterna_vivo;
                                _abuelaPaternaMuertoField.stringValue = abuela_paterna_muerto;
                                _abuelaPaternaCausaField.stringValue = abuela_paterna_causa;
                                _abuelaPaternaSaludField.stringValue = abuela_paterna_estado_salud;
                                // ENFERMEDADES
                                _enfermedadesPsiquiatricasFamiliaField.stringValue = enfermedades_psiquiatricas;
                                _cancerFamiliaField.stringValue = cancer_familia;
                                _enfermedadesImportantesFamiliaField.stringValue = enfermedades_importantes_familia;
                
                
            }
        }
    }

    
    // TRES
    
    if (sqlite3_open([dbPathStringTRES UTF8String], &HistorialPacientesTRES)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO TRES");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM ANTECEDENTES_PERSONALES_PATOLOGICOS WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
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
                
                
                _sobrepesoSiField.stringValue = sobrepeso_si;
                _sobrepesoNoField.stringValue = sobrepeso_no;
                _sobrepesoExpliqueField.stringValue = sobrepeso_explique;
                _pesoField.stringValue = peso;
                _estaturaField.stringValue = estatura;
                _tipoPadecimientoField.stringValue = tipo_padecimiento;
                _antecedentesQuirurgicosSiField.stringValue = antecedentes_quirurgicos_si;
                _antecedentesQuirurgicosNoField.stringValue = antecedentes_quirurgicos_no;
                _antecedentesQuirurgicosExpliqueField.stringValue = antecedentes_quirurgicos_explique;
                _hospitalizacionesSiField.stringValue = hospitalizaciones_si;
                _hospitalizacionesNoField.stringValue = hospitalizaciones_no;
                _hospitalizacionesExpliqueField.stringValue = hospitalizaciones_explique;
                _antecedentesTabaquismoSiField.stringValue = tabaquismo_si;
                _antecedentesTabaquismoNoField.stringValue = tabaquismo_no;
                _antecedentesTabaquismoFechaField.stringValue = tabaquismo_fecha;
                _antecedentesAlcoholismoSiField.stringValue = alcoholismo_si;
                _antecedentesAlcoholismoNoField.stringValue = alcoholismo_no;
                _antecedentesAlcoholismoFechaField.stringValue = alcoholismo_fecha;
                _antecedentesAlergicosSiField.stringValue = alergias_si;
                _antecedentesAlergicosNoField.stringValue = alergias_no;
                _antecedentesAlergicosExpliqueField.stringValue = alergias_explique;
                _antecedentesDrogasSiField.stringValue = drogas_si;
                _antecedentesDrogasNoField.stringValue = drogas_no;
                _antecedentesDrogasFechaField.stringValue = drogas_fecha;
                _cocainaField.stringValue = cocaina;
                _marihuanaField.stringValue = marihuana;
                _heroinaField.stringValue = heroina;
                _drogaUitlizadaOtrasField.stringValue = otra_droga;
                
                
                
                
                
                
            }
        }
    }

    // CUATRO
    
    if (sqlite3_open([dbPathStringCUATRO UTF8String], &HistorialPacientesCUATRO)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 4");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM ANTECEDENTES_PERSONALES_NO_PATOLOGICOS WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
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
                
                
                
                
                _gradoEscolarField.stringValue = grado_escolar;
                _gradoReprobatorioSiField.stringValue = grado_reprobatorio_si;
                _gradoReprobatorioNoField.stringValue = grado_reprobatorio_no;
                _gradoReprobatorioCuantosField.stringValue = grado_reprobatorio_cuantos;
                _gradoRepobratorioMotivoField.stringValue = grado_reprobatorio_motivo;
                _promedioEstudioField.stringValue = promedio_estudios;
                _quejasField.stringValue = quejas;
                _batallaAmigosSiField.stringValue = batalla_amigos_si;
                _batallaAmigosNoField.stringValue = batalla_amigos_no;
                _batallaAmigosExpliqueField.stringValue = batalla_amigos_explique;
                _alMomentoCasadaField.stringValue = casada;
                _alMomentoSolteraField.stringValue = soltera;
                _alMomentoDivorciadaField.stringValue = divorciada;
                _alMomentoViudaField.stringValue = viuda;
                _alMomentoNumeroMatrimoniosField.stringValue = numero_matrimonios;
                _seDedicaHogarField.stringValue = hogar;
                _seDedicaTrabajoField.stringValue = trabajo;
                _seDedicaDesempleadaField.stringValue = desempleada;
                _seDedciaEstudianteField.stringValue = estudiante;
                _seDedicaTipoTrabajoField.stringValue = tipo_trabajo;
                _numeroHijosField.stringValue = numero_hijos;
                
                _nombreHijoUnoField.stringValue = hijo_uno_nombre;
                _nombreHijoDosField.stringValue = hijo_dos_nombre;
                _nombreHijoTresField.stringValue = hijo_tres_nombre;
                _nombreHijoCuatroField.stringValue = hijo_cuatro_nombre;
                _nombreHijoCincoField.stringValue = hijo_cinco_nombre;
                _nombreHijoSeisField.stringValue = hijo_seis_nombre;
                _edadHijoUnoField.stringValue = hijo_uno_edad;
                _edadHijoDosField.stringValue = hijo_dos_edad;
                _edadHijoTresField.stringValue = hijo_tres_edad;
                _edadHijoCuatroField.stringValue = hijo_cuatro_edad;
                _edadHijoCincoField.stringValue = hijo_cinco_edad;
                _edadHijoSeisField.stringValue = hijo_seis_edad;
                _situacionHijoUnoFIeld.stringValue = hijo_uno_situacion;
                _situacionHijoDosField.stringValue = hijo_dos_situacion;
                _situacionHijoTresField.stringValue = hijo_tres_situacion;
                _situacionHijoCuatroField.stringValue = hijo_cuatro_situacion;
                _situacionHijoCincoField.stringValue = hijo_cinco_situacion;
                _situacionHijoSeisField.stringValue = hijo_seis_situacion;
                _relacionHijoUnoField.stringValue = hijo_uno_relacion;
                _relacionHijoDosField.stringValue = hijo_dos_relacion;
                _relacionHijoTresField.stringValue = hijo_tres_relacion;
                _relacionHijoCuatroField.stringValue = hijo_cuatro_relacion;
                _relacionHijoCincoField.stringValue = hijo_cinco_relacion;
                _relacionHijoSeisField.stringValue = hijo_seis_relacion;
                _quienViveUstedField.stringValue = quienes_viven_usted;
                _comoSeLlevaHermanosField.stringValue = como_se_lleva_hermanos;
                _quienSeLlevaMejorField.stringValue = quien_se_lleva_mejor_familia;
                _comoSeLlevanPapasField.stringValue = como_se_llevan_papas;
                _relacionConParejaField.stringValue = relacion_pareja;
                _relacionConHijosField.stringValue = relacion_hijos;
                
                
                
            }
        }
    }

    
    // CINCO
    
    if (sqlite3_open([dbPathStringCINCO UTF8String], &HistorialPacientesCINCO)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 5");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM INTERROGATORIO_APARATOS_Y_SISTEMAS WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
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
                
                
                
                
                _alteracionesSuenoSiField.stringValue = alteraciones_sueno_si;
                _alteracionesSuenoNoField.stringValue = alteraciones_sueno_no;
                _alteracionesSuenoExpliqueField.stringValue = alteraciones_sueno_explique;
                
                _fatigaSiField.stringValue = fatiga_si;
                _fatigaNoField.stringValue = fatiga_no;
                _fatigaExpliqueField.stringValue = fatiga_explique;
                
                _apetitoNormalField.stringValue = apetito_normal;
                _apetitoAumentadoField.stringValue = apetito_aumentado;
                _apetitoDisminuidoField.stringValue = apetito_disminuido;
                
                _pesoAumentadoField.stringValue = alteraciones_peso_aumentado;
                _pesoDisminuidoField.stringValue = alteraciones_peso_disminuido;
                _pesoNormalField.stringValue = alteraciones_peso_normal;
                
                _capacidadDisfrutarSiField.stringValue = alteraciones_disfrutar_si;
                _capacidadDisfrutarNoField.stringValue = alteraciones_disfrutar_no;
                _capacidadDisfrutarExpliqueField.stringValue = alteraciones_disfrutar_explique;
                
                _inquietudPresenteField.stringValue = inquietud_actividades_presente;
                _inquietudAusenteField.stringValue = inquietud_actividades_ausente;
                
                _problemasDigestivosSiField.stringValue = problemas_digestivos_si;
                _problemasDigestivosNoField.stringValue = problemas_digestivos_no;
                _problemasDIgestivosExpliqueField.stringValue = problemas_digestivos_explique;
                
                _problemasArticularesSiField.stringValue = problemas_articulares_si;
                _problemasArticularesNoField.stringValue = problemas_articulares_no;
                _problemasArticularesExpliqueField.stringValue = problemas_articulares_explique;
                
                _doloresFrecuentesSiField.stringValue = dolores_frecuentes_si;
                _doloresFrecuentesNoField.stringValue = dolores_frecuentes_no;
                _doloresFrecuentesExpliqueField.stringValue = dolores_frecuentes_explique;
                
                _problemasRinonesSiField.stringValue = problemas_rinones_si;
                _problemasRinonesNoField.stringValue = problemas_rinones_no;
                _problemasRinonesExpliqueField.stringValue = problemas_rinones_explique;
                
                _diabetesSiField.stringValue = diabetes_si;
                _diabetesNoField.stringValue = diabetes_no;
                _diabetesExpliqueField.stringValue = diabetes_explique;
                
                _problemasPulmonesSiField.stringValue = problemas_pulmon_si;
                _problemasPulmonesNoField.stringValue = problemas_pulmon_no;
                _problemasPulmonesExpliqueField.stringValue = problemas_pulmon_explique;
                
                _problemasAuditivosSiField.stringValue = problemas_auditivos_si;
                _problemasAuditivosNoField.stringValue = problemas_auditivos_no;
                
                _problemasVisualesSiField.stringValue = problemas_visuales_si;
                _problemasVisualesNoField.stringValue = problemas_visuales_no;
                
                _problemasConcentracionSiField.stringValue = problemas_concentracion_si;
                _problemasConcentracionNoField.stringValue = problemas_concentracion_no;
                _problemasConcentracionExpliqueField.stringValue = problemas_concentracion_explique;
                
                _problemasTiroidesSiField.stringValue = problemas_tiroides_si;
                _problemasTiroidesNoField.stringValue = problemas_tiroides_no;
                _problemasTiroidesExpliqueField.stringValue = problemas_tiroides_explique;
                
                _padecimientosSaludFamiliaField.stringValue = padecimiento_salud;
                
                _desmayosSiField.stringValue = desmayos_si;
                _desmayosNoField.stringValue = desmayos_no;
                _desmayosFrecuenciaField.stringValue = desmayos_frecuencia;
                _desmayosExpliqueField.stringValue = desmayos_motivos;
                
                _cancerFamiliaSiField.stringValue = cancer_familia_si;
                _cancerFamiliaNoField.stringValue = cancer_familia_no;
                
                _enfermedadesImportantesFamiliaDosField.stringValue = enfermedades_familia;
                
                
                
                
            }
        }
    }
    
    // SEIS

    if (sqlite3_open([dbPathStringSEIS UTF8String], &HistorialPacientesSEIS)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 6");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM MOTIVO_CONSULTA WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesSEIS, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *motivo_consulta = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                
                
                _motivoConsulta.stringValue = motivo_consulta;
                
                
                
            }
        }
    }

    
    // SIETE
    if (sqlite3_open([dbPathStringSIETE UTF8String], &HistorialPacientesSIETE)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 7");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM PRINCIPIO_EVOLUCION_PADECIMIENTO WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
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
                
                
                _cuandoIniciaronSintomasField.stringValue = iniciaron_sintomas;
                _descripcionSintomasField.stringValue = descripcion_sintomas;
                _hospitalizacionesSiField.stringValue = hospitalizada_si;
                _hospitalizacionesNoField.stringValue = hospitalizada_no;
                _hospitalizacionesExpliqueField.stringValue = hospitalizada_frecuencia;
                _medicamentosSintomasSiField.stringValue = medicamento_si;
                _medicamentosSintomasNoField.stringValue = medicamento_no;
                _medicamentosSintomasExpliqueField.stringValue = medicamento_explique;
                _funcionoTratamientoSiField.stringValue = funciono_tratamiento_si;
                _funcionoTratamientoNoField.stringValue = funciono_tratamiento_no;
                _funcionoTratamientoExpliqueField.stringValue = funciono_tratamiento_explique;
                _siguePresentandoSintomasSiField.stringValue = presentando_sintoms_si;
                _siguePresentandoSintomasNoField.stringValue = presentando_sintoms_no;
                _siguePresentandoSintomasExpliqueField.stringValue = presentando_sintoms_explique;
                _acompaneSintomasField.stringValue = acompane_sintomas;
                
                
                
                
            }
        }
    }

    // OCHO A
    if (sqlite3_open([dbPathStringOCHO UTF8String], &HistorialPacientesOCHO)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 8");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM EXAMEN_MENTAL_PARTE_UNO WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
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
                
                
                
                _sexoExamenFemeninaField.stringValue = femenina;
                _sexoExamenMasculinaField.stringValue = masculina;
                _sexoExamenComentarioField.stringValue = comentario;
                
                _edadAparenteIgualField.stringValue = edad_igual;
                _edadAparenteMayorField.stringValue = edad_mayor;
                _edadAparenteEquivalenteField.stringValue = edad_equivalente;
                
                _estaturaExamenBajaField.stringValue = estatura_baja;
                _estaturaExamenNormalField.stringValue = estatura_normal;
                _estaturaExamenAltaField.stringValue = estatura_alta;
                
                _complexionDelgadaField.stringValue = complexion_delgada;
                _complexionNormalField.stringValue = complexion_normal;
                _complexionSobrepesoField.stringValue = complexion_sobrepeso;
                
                _faciesAnciosoField.stringValue = facies_ancioso;
                _faciesPreocupadoField.stringValue = facies_preocupado;
                _faciesTristeField.stringValue = facies_triste;
                _faciesDeprimidoField.stringValue = facies_deprimido;
                _sinCaracteristicasField.stringValue = facies_caracteristicas;
                _faciesOtroField.stringValue = facies_otros;
                
                _senasPresentesField.stringValue = senas_presentes;
                _senasAusentesField.stringValue = senas_ausentes;
                _senasLunaresField.stringValue = senas_lunares;
                _senasFaltaMiembroField.stringValue = senas_miembro;
                _senasTatuajesField.stringValue = senas_tatuajes;
                _senasUtilizaLentesField.stringValue = senas_lentes;
                _senasPeloTenidoField.stringValue = senas_pelo_tenido;
                _senasPeloAlineadoField.stringValue = senas_pelo_alineado;
                _senasPeloRecogidoField.stringValue = senas_pelo_recogido;
                _senasCejasDelineadasField.stringValue = senas_cejas_delineadas;
                _senasUtilizacionAretesField.stringValue = senas_aretes;
                _senasOtrasField.stringValue = senas_otras;
                
                _vestimentaBuenEstadoField.stringValue = vestimenta_buen_estado;
                _vestimentaMalEstadoField.stringValue = vestimenta_mal_estado;
                
                _higienePresenteField.stringValue = higiene_presente;
                _higieneAusenteField.stringValue = higiene_ausente;
                
                _discordanciaVestirSiField.stringValue = discordancia_si;
                _discordanciaVestirNoField.stringValue = discordancia_no;
                _tipoVestimentaField.stringValue = tipo_vestimenta;
                
                _marchaRapidaField.stringValue = marcha_rapida;
                _marchaLentaField.stringValue = marcha_lenta;
                _marchaSinAlteracionesField.stringValue = marcha_alteraciones;
                _marchaOtraField.stringValue = marcha_otra;
                
                _incoordinacionMotoraField.stringValue = incoordinacion_motora;
                _ticsField.stringValue = tics;
                _tembloresField.stringValue = temblores;
                
                _actitudEvasivoField.stringValue = actitud_evasivo;
                _actitudIndiferenteField.stringValue = actitud_indiferente;
                _actitudSeductorField.stringValue = actitud_seductor;
                _actitudIrritableField.stringValue = actitud_irritable;
                _actitudRetadorField.stringValue = actitud_retador;
                _actitudTranquiloField.stringValue = actitud_tranquilo;
                _actitudTimidoField.stringValue = actitud_timido;
                _actitudDesconfiadoField.stringValue = actitud_desconfiado;
                _actitudCooperadorField.stringValue = actitud_cooperador;
                _actitudAmableField.stringValue = actitud_amable;
                _actitudSerenoField.stringValue = actitud_sereno;
                _actitudEstableField.stringValue = actitud_estable;
                _actitudQuejumbrosoField.stringValue = actitud_quejumbroso;
                _actitudOtrosField.stringValue = actitud_otros;
                
                
                
            }
        }
    }

    
    // OCHO B
    
    
    if (sqlite3_open([dbPathStringOCHOB UTF8String], &HistorialPacientesOCHOB)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 8B");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM EXAMEN_MENTAL_PARTE_DOS WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
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
                
                
                
                _conductasAlucinatoriasSiField.stringValue = alucinatorias_si;
                _conductasAlucinatoriasNoField.stringValue = alucinatorias_no;
                
                _ubicadoTiempoSiField.stringValue = ubicado_tiempo_si;
                _ubicadoTiempoNoField.stringValue = ubicado_tiempo_no;
                
                _ubicadoLugarSiField.stringValue = ubicado_lugar_si;
                _ubicadoLugarNoField.stringValue = ubicado_lugar_no;
                
                _seReconoceSiField.stringValue = reconoce_si;
                _seReconoceNoField.stringValue = reconoce_no;
                
                
                _discursoFormaJuiciosoField.stringValue = juicioso;
                _discursoFormaSinAlteracionField.stringValue = sin_alteracion;
                _discursoFormaRazonableField.stringValue = razonable;
                _discursoFormaNoRazonableField.stringValue = no_razonable;
                _discursoFormaDentroRealidadField.stringValue = dentro_realidad;
                _discursoFormaFueraRealidadField.stringValue = fuera_realidad;
                
                _discursoCursoAceleradoField.stringValue = acelerado;
                _discursoCursoLentificadoField.stringValue = lentificado;
                _discursoCursoNormalField.stringValue = discurso_normal;
                
                _discursoContenidoField.stringValue = contenido;
                
                _humorField.stringValue = humor;
                
                _afectoDisminuidoField.stringValue = afecto_disminuido;
                _afectoAumentadoField.stringValue = afecto_aumentado;
                _afectoNormalField.stringValue = afecto_normal;
                
                _inteligenciaArribaField.stringValue = inteligencia_arriba;
                _inteligenciaDebajoField.stringValue = inteligencia_debajo;
                _inteligenciaNormalField.stringValue = inteligencia_normal;
                
                
                _acordeNivelSocioCulturalSiField.stringValue = sociocultural_si;
                _acordeNivelSocioCulturalNoField.stringValue = sociocultural_no;
                
                _acordeNivelEscolaridadSiField.stringValue = escolaridad_si;
                _acordeNivelEscolaridadNoField.stringValue = escolaridad_no;
                
                
            }
        }
    }
    
    // NUEVE
    
    if (sqlite3_open([dbPathStringNUEVE UTF8String], &HistorialPacientesNUEVE)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 9");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM DIAGNOSTICO_MULTIAXIAL WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
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
                
                
                _ejeIAField.stringValue = eje_uno_a;
                _ejeIBField.stringValue = eje_uno_b;
                _ejeICField.stringValue = eje_uno_c;
                
                _ejeIIAField.stringValue = eje_dos_a;
                
                _ejeIIIAField.stringValue = eje_tres_a;
                _ejeIIIBField.stringValue = eje_tres_b;
                
                _ejeIVLeveField.stringValue = eje_cuatro_leve;
                _ejeIVModeradoField.stringValue = eje_cuatro_moderado;
                _ejeIVGraveField.stringValue = eje_cuatro_grave;
                _ejeIVSeveroField.stringValue = eje_cuatro_severo;
                
                _ejeVBuenoField.stringValue = eje_cinco_bueno;
                _ejeVMedianoField.stringValue = eje_cinco_mediano;
                _ejeVMediocreField.stringValue = eje_cinco_mediocre;
                _ejeVMaloField.stringValue = eje_cinco_malo;
                _motivoDisfuncionField.stringValue = eje_cinco_motivo;
                
            }
        }
    }
    
    
    // DIEZ
    
    if (sqlite3_open([dbPathStringDIEZ UTF8String], &HistorialPacientesDIEZ)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 10");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM TRATAMIENTO WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
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
                
                
                _medicamentosField.stringValue = medicamentos;
                _tratamientoPsicologicoSiField.stringValue = psicologico_si;
                _tratamientoPsicologicoNoField.stringValue = psicologico_no;
                _tratamientoPsicologicoTiempoEstimadoField.stringValue = tiempo_estimado;
                _referirloSiField.stringValue = referirlo_si;
                _referirloNoField.stringValue = referirlo_no;
                _referirloEspecialidadField.stringValue = especialidad;
                
            }
        }
    }

    // ONCE
    
    if (sqlite3_open([dbPathStringONCE UTF8String], &HistorialPacientesONCE)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 11");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM PRONOSTICO WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesONCE, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *ligado_evolucion = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *malo = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *bueno = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                NSString *regular = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 5)];
                
                _ligadoEvolucionField.stringValue = ligado_evolucion;
                _ligadoMaloField.stringValue = malo;
                _ligadoBuenoField.stringValue = bueno;
                _ligadoRegularField.stringValue = regular;
                
                
            }
        }
    }
    

    // DOCE
    
    if (sqlite3_open([dbPathStringDOCE UTF8String], &HistorialPacientesDOCE)==SQLITE_OK) {
        
        NSLog(@"SE CONCETO 12");
        
        NSString *querySql = [NSString stringWithFormat:@"SELECT * FROM PREGUNTAS_ADICIONALES WHERE NOMBRE=\"%@\"", self.nombreField.stringValue];
        const char* query_sql = [querySql UTF8String];
        
        if (sqlite3_prepare(HistorialPacientesDOCE, query_sql, -1, &statement, NULL)==SQLITE_OK) {
            while (sqlite3_step(statement)==SQLITE_ROW) {
                
                
                NSString *describe = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 2)];
                NSString *hobby = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 3)];
                NSString *descanso = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 4)];
                
                
                _comoSeDescribeField.stringValue = describe;
                _hobbyField.stringValue = hobby;
                _descansoField.stringValue = descanso;
                
            }
        }
    }

    


    /////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////// AQUI EMPIEZA EL DELETE //////////////////////////////////////////
    
    
    NSString *nombre = self.nombreField.stringValue;
    
    char *error;
    
    // UNO
    if (sqlite3_open([dbPathString UTF8String], &HistorialPacientes)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM FICHA_IDENTIFICACION_FINAL WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientes, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 1");
            
        }
        
    }
    
    // DOS A
    if (sqlite3_open([dbPathStringDOS UTF8String], &HistorialPacientesDOS)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM ANTECEDENTES_HEREDO_FAMILIARES WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesDOS, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 2");
            
        }
        
    }
    
    
    // DOS B
    if (sqlite3_open([dbPathStringDOS UTF8String], &HistorialPacientesDOS)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM ANTECEDENTES_HEREDO_FAMILIARES WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesDOS, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 2");
            
        }
        
    }

    
    // TRES
    if (sqlite3_open([dbPathStringTRES UTF8String], &HistorialPacientesTRES)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM ANTECEDENTES_PERSONALES_PATOLOGICOS WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesTRES, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 3");
            
        }
        
    }
    
    
    // CUATRO
    if (sqlite3_open([dbPathStringCUATRO UTF8String], &HistorialPacientesCUATRO)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM ANTECEDENTES_PERSONALES_NO_PATOLOGICOS WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesCUATRO, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 4");
            
        }
        
    }
    
    
    // CINCO
    if (sqlite3_open([dbPathStringCINCO UTF8String], &HistorialPacientesCINCO)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM INTERROGATORIO_APARATOS_Y_SISTEMAS WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesCINCO, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 4");
            
        }
        
    }
    
    
    // SEIS
    if (sqlite3_open([dbPathStringSEIS UTF8String], &HistorialPacientesSEIS)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM MOTIVO_CONSULTA WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesSEIS, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 6");
            
        }
        
    }
    
    // SIETE
    if (sqlite3_open([dbPathStringSIETE UTF8String], &HistorialPacientesSIETE)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM PRINCIPIO_EVOLUCION_PADECIMIENTO WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesSIETE, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 7");
            
        }
        
    }
    
    // OCHO A
    if (sqlite3_open([dbPathStringOCHO UTF8String], &HistorialPacientesOCHO)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM EXAMEN_MENTAL_PARTE_UNO WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesOCHO, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 8A");
            
        }
        
    }
    
    // OCHO B
    if (sqlite3_open([dbPathStringOCHOB UTF8String], &HistorialPacientesOCHOB)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM EXAMEN_MENTAL_PARTE_DOS WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesOCHOB, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 8B");
            
        }
        
    }
    
    
    // NUEVE
    if (sqlite3_open([dbPathStringNUEVE UTF8String], &HistorialPacientesNUEVE)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM DIAGNOSTICO_MULTIAXIAL WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesNUEVE, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 9");
            
        }
        
    }
    
    // DIEZ
    if (sqlite3_open([dbPathStringDIEZ UTF8String], &HistorialPacientesDIEZ)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM TRATAMIENTO WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesDIEZ, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 10");
            
        }
        
    }
    
    
    // ONCE
    if (sqlite3_open([dbPathStringONCE UTF8String], &HistorialPacientesONCE)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM PRONOSTICO WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesONCE, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 11");
            
        }
        
    }
    
    // DOCE
    if (sqlite3_open([dbPathStringDOCE UTF8String], &HistorialPacientesDOCE)==SQLITE_OK) {
        NSString *insertStmt = [NSString stringWithFormat:@"DELETE FROM PREGUNTAS_ADICIONALES WHERE NOMBRE IS '%@'", nombre];
        
        const char *insert_stmt = [insertStmt UTF8String];
        
        if (sqlite3_exec(HistorialPacientesDOCE, insert_stmt, NULL, NULL, &error)==SQLITE_OK){
            
            NSLog(@"borrada 12");
            
        }
        
    }
    
    
// end }
}
@end
