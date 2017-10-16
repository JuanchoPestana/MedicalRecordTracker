//
//  NuevoPacienteVC.h
//  HistorialPacientes
//
//  Created by Juan Pestana on 6/15/15.
//  Copyright (c) 2015 Juan Pestana. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "sqlite3.h"

@interface NuevoPacienteVC : NSViewController

// IMAGE VIEWS
@property (weak) IBOutlet NSImageView *imageUno;
@property (weak) IBOutlet NSImageView *imageDos;
@property (weak) IBOutlet NSImageView *imageTres;
@property (weak) IBOutlet NSImageView *imageCuatro;
@property (weak) IBOutlet NSImageView *imageCinco;
@property (weak) IBOutlet NSImageView *imageSeis;
@property (weak) IBOutlet NSImageView *imageSiete;
@property (weak) IBOutlet NSImageView *imageOcho;
@property (weak) IBOutlet NSImageView *imageNueve;
@property (weak) IBOutlet NSImageView *imageDiez;
@property (weak) IBOutlet NSImageView *imageOnce;
@property (weak) IBOutlet NSImageView *imageDoce;
@property (weak) IBOutlet NSImageView *imageTrece;
@property (weak) IBOutlet NSImageView *imageCatorce;
@property (weak) IBOutlet NSImageView *imageQuince;
@property (weak) IBOutlet NSImageView *imageDieciseis;
@property (weak) IBOutlet NSImageView *imageDiecisiete;
@property (weak) IBOutlet NSImageView *imageDieciocho;
@property (weak) IBOutlet NSImageView *imageDiecinueve;
@property (weak) IBOutlet NSImageView *imageVeinte;
@property (weak) IBOutlet NSImageView *imageVeintiuno;
@property (weak) IBOutlet NSImageView *imageVeintidos;
@property (weak) IBOutlet NSImageView *imageVeintitres;


// FLECHITAS
@property (weak) IBOutlet NSImageView *flechitaUno;
@property (weak) IBOutlet NSImageView *flechitaDos;
@property (weak) IBOutlet NSImageView *flechitaDosB;
@property (weak) IBOutlet NSImageView *flechitaTres;
@property (weak) IBOutlet NSImageView *flechitaCuatro;
@property (weak) IBOutlet NSImageView *flechitaCinco;
@property (weak) IBOutlet NSImageView *flechitaSeis;
@property (weak) IBOutlet NSImageView *flechitaSiete;
@property (weak) IBOutlet NSImageView *flechitaOcho;
@property (weak) IBOutlet NSImageView *flechitaOchoB;
@property (weak) IBOutlet NSImageView *flechitaNueve;
@property (weak) IBOutlet NSImageView *flechitaDiez;
@property (weak) IBOutlet NSImageView *flechitaOnce;
@property (weak) IBOutlet NSImageView *flechitaDoce;


// BOTON AGREGAR
@property (weak) IBOutlet NSButton *botonDeAgregar;
- (IBAction)agregarNuevoPaciente:(id)sender;

// BOTON SEGUIMIENTO
@property (weak) IBOutlet NSButton *botonSeguimiento;
- (IBAction)seguimiento:(id)sender;

// LABEL SUCCESS
@property (weak) IBOutlet NSTextField *successLabel;


// TITULO
@property (weak) IBOutlet NSTextField *titulo;

// BOTONES
- (IBAction)uno:(id)sender;
- (IBAction)dos:(id)sender;
- (IBAction)dosB:(id)sender;
- (IBAction)tres:(id)sender;
- (IBAction)cuatro:(id)sender;
- (IBAction)cinco:(id)sender;
- (IBAction)seis:(id)sender;
- (IBAction)siete:(id)sender;
- (IBAction)ocho:(id)sender;
- (IBAction)ochoB:(id)sender;
- (IBAction)nueve:(id)sender;
- (IBAction)diez:(id)sender;
- (IBAction)once:(id)sender;
- (IBAction)doce:(id)sender;

///////////////////////////////////////////////////
// 1. FICHA IDENTIFICACION

// LABELS
@property (weak) IBOutlet NSTextField *nombreLabel;
@property (weak) IBOutlet NSTextField *edadLabel;
@property (weak) IBOutlet NSTextField *estadoCivilLabel;
@property (weak) IBOutlet NSTextField *ocupacionLabel;
@property (weak) IBOutlet NSTextField *escolaridadLabel;
@property (weak) IBOutlet NSTextField *originariaLabel;
@property (weak) IBOutlet NSTextField *religionLabel;
@property (weak) IBOutlet NSTextField *radicaLabel;
@property (weak) IBOutlet NSTextField *fechaLabel;


// TEXTFIELDS
@property (weak) IBOutlet NSTextField *nombreField;
@property (weak) IBOutlet NSTextField *edadField;
@property (weak) IBOutlet NSTextField *estadoCivilField;
@property (weak) IBOutlet NSTextField *ocupacionField;
@property (weak) IBOutlet NSTextField *escolaridadField;
@property (weak) IBOutlet NSTextField *originariaField;
@property (weak) IBOutlet NSTextField *religionField;
@property (weak) IBOutlet NSTextField *radicaField;
@property (weak) IBOutlet NSTextField *fechaField;





///////////////////////////////////////////////////
// 2. ANTECEDENTES HEREDO FAMILIARES

// LABELS

// PADRE BIOLOGICO
@property (weak) IBOutlet NSTextField *padreBiologicoLabel;

@property (weak) IBOutlet NSTextField *padreConocidoLabel;
@property (weak) IBOutlet NSTextField *padreDesconocidoLabel;
@property (weak) IBOutlet NSTextField *padreVivoLabel;
@property (weak) IBOutlet NSTextField *padreMuertoLabel;
@property (weak) IBOutlet NSTextField *padreMatrimonioLabel;
@property (weak) IBOutlet NSTextField *padreSaludoLabel;
@property (weak) IBOutlet NSTextField *padreRelacionLabel;
@property (weak) IBOutlet NSTextField *padreRelacionBuenaLabel;
@property (weak) IBOutlet NSTextField *padreRelacionMalaLabel;
@property (weak) IBOutlet NSTextField *padreRelacionNormalLabel;
@property (weak) IBOutlet NSTextField *padreRelacionExpliqueLabel;

// MADRE BIOLOGICA
@property (weak) IBOutlet NSTextField *madreBiologicaLabel;

@property (weak) IBOutlet NSTextField *madreConocidoLabel;
@property (weak) IBOutlet NSTextField *madreDesconocidoLabel;
@property (weak) IBOutlet NSTextField *madreVivoLabel;
@property (weak) IBOutlet NSTextField *madreMuertoLabel;
@property (weak) IBOutlet NSTextField *madreMatrimonioLabel;
@property (weak) IBOutlet NSTextField *madreSaludoLabel;
@property (weak) IBOutlet NSTextField *madreRelacionLabel;
@property (weak) IBOutlet NSTextField *madreRelacionBuenaLabel;
@property (weak) IBOutlet NSTextField *madreRelacionMalaLabel;
@property (weak) IBOutlet NSTextField *madreRelacionNormalLabel;
@property (weak) IBOutlet NSTextField *madreRelacionExpliqueLabel;

// HERMANOS
@property (weak) IBOutlet NSTextField *hermanosLabel;
@property (weak) IBOutlet NSTextField *heramnosNumeroLabel;
@property (weak) IBOutlet NSTextField *hermanosVivosLabel;
@property (weak) IBOutlet NSTextField *hermanosMuertosLabel;
@property (weak) IBOutlet NSTextField *hermanosCausaLabel;
@property (weak) IBOutlet NSTextField *hermanosSaludLabel;
@property (weak) IBOutlet NSTextField *hermanosRelacionLabel;
@property (weak) IBOutlet NSTextField *hermanosRelacionBuenaLabel;
@property (weak) IBOutlet NSTextField *hermanosRelacionMalaLabel;
@property (weak) IBOutlet NSTextField *hermanosRelacionNormalLabel;
@property (weak) IBOutlet NSTextField *hermanosRelacionExpliqueLabel;

// MEDIOS HERMANOS
@property (weak) IBOutlet NSTextField *mediosHermanosLabel;
@property (weak) IBOutlet NSTextField *mediosHermanosNumeroLabel;
@property (weak) IBOutlet NSTextField *mediosHermanosVivosLabel;
@property (weak) IBOutlet NSTextField *mediosHermanosMuertosLabel;
@property (weak) IBOutlet NSTextField *mediosHermanosCausaLabel;
@property (weak) IBOutlet NSTextField *mediosHermanosSaludLabel;
@property (weak) IBOutlet NSTextField *mediosHermanosRelacionLabel;
@property (weak) IBOutlet NSTextField *mediosHermanosRelacionBuenaLabel;
@property (weak) IBOutlet NSTextField *mediosHermanosRelacionMalaLabel;
@property (weak) IBOutlet NSTextField *mediosHermanosRelacionNormalLabel;
@property (weak) IBOutlet NSTextField *mediosHermanosRelacionExpliqueLabel;

// ABUELO MATERNO
@property (weak) IBOutlet NSTextField *abueloMaternoLabel;
@property (weak) IBOutlet NSTextField *abueloMaternoVivoLabel;
@property (weak) IBOutlet NSTextField *abueloMaternoMuertoLabel;
@property (weak) IBOutlet NSTextField *abueloMaternoCausaLabel;
@property (weak) IBOutlet NSTextField *abueloMaternoSaludLabel;

// ABUELA MATERNA
@property (weak) IBOutlet NSTextField *abuelaMaternaLabel;
@property (weak) IBOutlet NSTextField *abuelaMaternaVivoLabel;
@property (weak) IBOutlet NSTextField *abuelaMaternaMuertoLabel;
@property (weak) IBOutlet NSTextField *abuelaMaternaCausaLabel;
@property (weak) IBOutlet NSTextField *abuelaMaternaSaludLabel;

// ABUELO PATERNO
@property (weak) IBOutlet NSTextField *abueloPaternoLabel;
@property (weak) IBOutlet NSTextField *abueloPaternoVivoLabel;
@property (weak) IBOutlet NSTextField *abueloPaternoMuertoLabel;
@property (weak) IBOutlet NSTextField *abueloPaternoCausaLabel;
@property (weak) IBOutlet NSTextField *abueloPaternoSaludLabel;

// ABUELA PATERNA
@property (weak) IBOutlet NSTextField *abuelaPaternaLabel;
@property (weak) IBOutlet NSTextField *abuelaPaternaVivoLabel;
@property (weak) IBOutlet NSTextField *abuelaPaternaMuertoLabel;
@property (weak) IBOutlet NSTextField *abuelaPaternaCausaLabel;
@property (weak) IBOutlet NSTextField *abuelaPaternaSaludLabel;

// ENFERMEDADES
@property (weak) IBOutlet NSTextField *enfermedadesPsiquiatricasLabel;
@property (weak) IBOutlet NSTextField *cancerFamiliaLabel;
@property (weak) IBOutlet NSTextField *enfermedadesImportantesLabel;




// TEXTFIELDS

// PADRE BIOLOGICO
@property (weak) IBOutlet NSTextField *padreConocidoField;
@property (weak) IBOutlet NSTextField *padreDesconocidoField;
@property (weak) IBOutlet NSTextField *padreVivoField;
@property (weak) IBOutlet NSTextField *padreMuertoField;
@property (weak) IBOutlet NSTextField *padreMatrimonioFIeld;
@property (weak) IBOutlet NSTextField *padreSaludField;
@property (weak) IBOutlet NSTextField *padreRelacionBuenaFIeld;
@property (weak) IBOutlet NSTextField *padreRelacionMalaField;
@property (weak) IBOutlet NSTextField *padreRelacionNormalField;
@property (weak) IBOutlet NSTextField *padreRelacionExpliqueField;


// MADRE BIOLOGICA
@property (weak) IBOutlet NSTextField *madreConocidoField;
@property (weak) IBOutlet NSTextField *madreDesconocidoField;
@property (weak) IBOutlet NSTextField *madreVivoField;
@property (weak) IBOutlet NSTextField *madreMuertoField;
@property (weak) IBOutlet NSTextField *madreMatrimonioFIeld;
@property (weak) IBOutlet NSTextField *madreSaludField;
@property (weak) IBOutlet NSTextField *madreRelacionBuenaFIeld;
@property (weak) IBOutlet NSTextField *madreRelacionMalaField;
@property (weak) IBOutlet NSTextField *madreRelacionNormalField;
@property (weak) IBOutlet NSTextField *madreRelacionExpliqueField;

// HERMANOS
@property (weak) IBOutlet NSTextField *heramnosNumeroField;
@property (weak) IBOutlet NSTextField *hermanosVivosField;
@property (weak) IBOutlet NSTextField *hermanosMuertosField;
@property (weak) IBOutlet NSTextField *hermanosCausaField;
@property (weak) IBOutlet NSTextField *hermanosSaludField;
@property (weak) IBOutlet NSTextField *hermanosRelacionBuenaField;
@property (weak) IBOutlet NSTextField *hermanosRelacionMalaField;
@property (weak) IBOutlet NSTextField *hermanosRelacionNormalField;
@property (weak) IBOutlet NSTextField *hermanosRelacionExpliqueField;

// MEDIOS HERMANOS
@property (weak) IBOutlet NSTextField *mediosHermanosNumeroField;
@property (weak) IBOutlet NSTextField *mediosHermanosVivosField;
@property (weak) IBOutlet NSTextField *mediosHermanosMuertosField;
@property (weak) IBOutlet NSTextField *mediosHermanosCausaField;
@property (weak) IBOutlet NSTextField *mediosHermanosSaludField;
@property (weak) IBOutlet NSTextField *mediosHermanosRelacionBuenaField;
@property (weak) IBOutlet NSTextField *mediosHermanosRelacionMalaField;
@property (weak) IBOutlet NSTextField *mediosHermanosRelacionNormalField;
@property (weak) IBOutlet NSTextField *mediosHermanosRelacionExpliqueField;

// ABUELO MATERNO
@property (weak) IBOutlet NSTextField *abueloMaternoVivoField;
@property (weak) IBOutlet NSTextField *abueloMaternoMuertoField;
@property (weak) IBOutlet NSTextField *abueloMaternoCausaField;
@property (weak) IBOutlet NSTextField *abueloMaternoSaludField;

// ABUELA MATERNA
@property (weak) IBOutlet NSTextField *abuelaMaternaVivoField;
@property (weak) IBOutlet NSTextField *abuelaMaternaMuertoField;
@property (weak) IBOutlet NSTextField *abuelaMaternaCausaField;
@property (weak) IBOutlet NSTextField *abuelaMaternaSaludField;

// ABUELO PATERNO
@property (weak) IBOutlet NSTextField *abueloPaternoVivoField;
@property (weak) IBOutlet NSTextField *abueloPaternoMuertoField;
@property (weak) IBOutlet NSTextField *abueloPaternoCausaField;
@property (weak) IBOutlet NSTextField *abueloPaternoSaludField;

// ABUELA PATERNA
@property (weak) IBOutlet NSTextField *abuelaPaternaVivoField;
@property (weak) IBOutlet NSTextField *abuelaPaternaMuertoField;
@property (weak) IBOutlet NSTextField *abuelaPaternaCausaField;
@property (weak) IBOutlet NSTextField *abuelaPaternaSaludField;

// ENFERMEDADES EN LA FAMILIA
@property (weak) IBOutlet NSTextField *enfermedadesPsiquiatricasFamiliaField;
@property (weak) IBOutlet NSTextField *cancerFamiliaField;
@property (weak) IBOutlet NSTextField *enfermedadesImportantesFamiliaField;


///////////////////////////////////////////////////
// 3. ANTECEDENTES PERSONALES PATOLOGICOS

// LABELS
@property (weak) IBOutlet NSTextField *sobrepesoLabel;
@property (weak) IBOutlet NSTextField *sobrepesoSiLabel;
@property (weak) IBOutlet NSTextField *sobrepesoNoLabel;
@property (weak) IBOutlet NSTextField *sobrepesoExpliqueLabel;
@property (weak) IBOutlet NSTextField *pesoLabel;
@property (weak) IBOutlet NSTextField *estaturaLabel;
@property (weak) IBOutlet NSTextField *tipoPadecimientoLabel;
@property (weak) IBOutlet NSTextField *antecedentesQuirurgicosLabel;
@property (weak) IBOutlet NSTextField *antecedentesQuirurgicosSiLabel;
@property (weak) IBOutlet NSTextField *antecedentesQuirurgicosNoLabel;
@property (weak) IBOutlet NSTextField *antecedentesQuirurgicosExpliqueLabel;
@property (weak) IBOutlet NSTextField *hospitalizacionesLabel;
@property (weak) IBOutlet NSTextField *hospitalizacionesSiLabel;
@property (weak) IBOutlet NSTextField *hospitalizacionesNoLabel;
@property (weak) IBOutlet NSTextField *hospitalizacionesExpliqueLabel;
@property (weak) IBOutlet NSTextField *antecedentesTabaquismoLabel;
@property (weak) IBOutlet NSTextField *antecedentesTabaquismoSiLabel;
@property (weak) IBOutlet NSTextField *antecedentesTabaquismoNoLabel;
@property (weak) IBOutlet NSTextField *antecedentesTabaquismoFechaLabel;
@property (weak) IBOutlet NSTextField *antecedentesAlcoholismoLabel;
@property (weak) IBOutlet NSTextField *antecedentesAlcoholismoSiLabel;
@property (weak) IBOutlet NSTextField *antecedentesAlcoholismoNoLabel;
@property (weak) IBOutlet NSTextField *antecedentesAlcoholismoFechaLabel;
@property (weak) IBOutlet NSTextField *antecedentesAlergicosLabel;
@property (weak) IBOutlet NSTextField *antecedentesAlergicosSiLabel;
@property (weak) IBOutlet NSTextField *antecedentesAlergicosNoLabel;
@property (weak) IBOutlet NSTextField *antecedentesAlergicosExpliqueLabel;
@property (weak) IBOutlet NSTextField *antecedentesDrogasLabel;
@property (weak) IBOutlet NSTextField *antecedentesDrogasSiLabel;
@property (weak) IBOutlet NSTextField *antecedentesDrogasNoLabel;
@property (weak) IBOutlet NSTextField *antecedentesDrogasFechaLabel;
@property (weak) IBOutlet NSTextField *drogaUtilizadaLabel;
@property (weak) IBOutlet NSTextField *cocainaLabel;
@property (weak) IBOutlet NSTextField *marihuanaLabel;
@property (weak) IBOutlet NSTextField *heroinaLabel;
@property (weak) IBOutlet NSTextField *drogaUtilizadaOtrasLabel;


// TEXTFIELDS
@property (weak) IBOutlet NSTextField *sobrepesoSiField;
@property (weak) IBOutlet NSTextField *sobrepesoNoField;
@property (weak) IBOutlet NSTextField *sobrepesoExpliqueField;
@property (weak) IBOutlet NSTextField *pesoField;
@property (weak) IBOutlet NSTextField *estaturaField;
@property (weak) IBOutlet NSTextField *tipoPadecimientoField;
@property (weak) IBOutlet NSTextField *antecedentesQuirurgicosSiField;
@property (weak) IBOutlet NSTextField *antecedentesQuirurgicosNoField;
@property (weak) IBOutlet NSTextField *antecedentesQuirurgicosExpliqueField;
@property (weak) IBOutlet NSTextField *hospitalizacionesSiField;
@property (weak) IBOutlet NSTextField *hospitalizacionesNoField;
@property (weak) IBOutlet NSTextField *hospitalizacionesExpliqueField;
@property (weak) IBOutlet NSTextField *antecedentesTabaquismoSiField;
@property (weak) IBOutlet NSTextField *antecedentesTabaquismoNoField;
@property (weak) IBOutlet NSTextField *antecedentesTabaquismoFechaField;
@property (weak) IBOutlet NSTextField *antecedentesAlcoholismoSiField;
@property (weak) IBOutlet NSTextField *antecedentesAlcoholismoNoField;
@property (weak) IBOutlet NSTextField *antecedentesAlcoholismoFechaField;
@property (weak) IBOutlet NSTextField *antecedentesAlergicosSiField;
@property (weak) IBOutlet NSTextField *antecedentesAlergicosNoField;
@property (weak) IBOutlet NSTextField *antecedentesAlergicosExpliqueField;
@property (weak) IBOutlet NSTextField *antecedentesDrogasSiField;
@property (weak) IBOutlet NSTextField *antecedentesDrogasNoField;
@property (weak) IBOutlet NSTextField *antecedentesDrogasFechaField;
@property (weak) IBOutlet NSTextField *cocainaField;
@property (weak) IBOutlet NSTextField *marihuanaField;
@property (weak) IBOutlet NSTextField *heroinaField;
@property (weak) IBOutlet NSTextField *drogaUitlizadaOtrasField;





///////////////////////////////////////////////////

// 4. ANTECEDENTES PERSONALES NO PATOLOGICOS

// LABELS
@property (weak) IBOutlet NSTextField *gradoEscolarLabel;
@property (weak) IBOutlet NSTextField *gradoReprobatorioLabel;
@property (weak) IBOutlet NSTextField *gradoReprobatorioSiLabel;
@property (weak) IBOutlet NSTextField *gradoReprobatorioNoLabel;
@property (weak) IBOutlet NSTextField *gradoReprobatorioCuantosLabel;
@property (weak) IBOutlet NSTextField *gradoRepobratorioMotivoLabel;
@property (weak) IBOutlet NSTextField *promedioEstudioLabel;
@property (weak) IBOutlet NSTextField *quejasLabel;
@property (weak) IBOutlet NSTextField *batallaAmigosLabel;
@property (weak) IBOutlet NSTextField *batallaAmigosSiLabel;
@property (weak) IBOutlet NSTextField *batallaAmigosNoLabel;
@property (weak) IBOutlet NSTextField *batallaAmigosExpliqueLabel;
@property (weak) IBOutlet NSTextField *alMomentoLabel;
@property (weak) IBOutlet NSTextField *alMomentoCasadaLabel;
@property (weak) IBOutlet NSTextField *alMomentoSolteraLabel;
@property (weak) IBOutlet NSTextField *alMomentoDivorciadaLabel;
@property (weak) IBOutlet NSTextField *alMomentoViudaLabel;
@property (weak) IBOutlet NSTextField *alMomentoNumeroMatrimoniosLabel;
@property (weak) IBOutlet NSTextField *seDedicaLabel;
@property (weak) IBOutlet NSTextField *seDedicaHogarlabel;
@property (weak) IBOutlet NSTextField *seDedicaTrabajoLabel;
@property (weak) IBOutlet NSTextField *seDedicaDesempleadaLabel;
@property (weak) IBOutlet NSTextField *seDedciaEstudianteLabel;
@property (weak) IBOutlet NSTextField *seDedicaTipoTrabajoLabel;
@property (weak) IBOutlet NSTextField *numeroHijosLabel;
@property (weak) IBOutlet NSTextField *nombreHijosLabel;
@property (weak) IBOutlet NSTextField *edadHijosLabel;
@property (weak) IBOutlet NSTextField *situacionHijosLabel;
@property (weak) IBOutlet NSTextField *relacionHijosLabel;
@property (weak) IBOutlet NSTextField *quienViveUstedLabel;
@property (weak) IBOutlet NSTextField *comoSeLlevaHermanosLabel;
@property (weak) IBOutlet NSTextField *quienSeLlevaMejorLabel;
@property (weak) IBOutlet NSTextField *comoSeLlevanPapasLabel;
@property (weak) IBOutlet NSTextField *relacionConParejaLabel;
@property (weak) IBOutlet NSTextField *relacionConHijosLabel;






// TEXTFIELDS

@property (weak) IBOutlet NSTextField *gradoEscolarField;
@property (weak) IBOutlet NSTextField *gradoReprobatorioSiField;
@property (weak) IBOutlet NSTextField *gradoReprobatorioNoField;
@property (weak) IBOutlet NSTextField *gradoReprobatorioCuantosField;
@property (weak) IBOutlet NSTextField *gradoRepobratorioMotivoField;
@property (weak) IBOutlet NSTextField *promedioEstudioField;
@property (weak) IBOutlet NSTextField *quejasField;
@property (weak) IBOutlet NSTextField *batallaAmigosSiField;
@property (weak) IBOutlet NSTextField *batallaAmigosNoField;
@property (weak) IBOutlet NSTextField *batallaAmigosExpliqueField;
@property (weak) IBOutlet NSTextField *alMomentoCasadaField;
@property (weak) IBOutlet NSTextField *alMomentoSolteraField;
@property (weak) IBOutlet NSTextField *alMomentoDivorciadaField;
@property (weak) IBOutlet NSTextField *alMomentoViudaField;
@property (weak) IBOutlet NSTextField *alMomentoNumeroMatrimoniosField;
@property (weak) IBOutlet NSTextField *seDedicaHogarField;
@property (weak) IBOutlet NSTextField *seDedicaTrabajoField;
@property (weak) IBOutlet NSTextField *seDedicaDesempleadaField;
@property (weak) IBOutlet NSTextField *seDedciaEstudianteField;
@property (weak) IBOutlet NSTextField *seDedicaTipoTrabajoField;
@property (weak) IBOutlet NSTextField *numeroHijosField;
@property (weak) IBOutlet NSTextField *nombreHijoUnoField;
@property (weak) IBOutlet NSTextField *nombreHijoDosField;
@property (weak) IBOutlet NSTextField *nombreHijoTresField;
@property (weak) IBOutlet NSTextField *nombreHijoCuatroField;
@property (weak) IBOutlet NSTextField *nombreHijoCincoField;
@property (weak) IBOutlet NSTextField *nombreHijoSeisField;
@property (weak) IBOutlet NSTextField *edadHijoUnoField;
@property (weak) IBOutlet NSTextField *edadHijoDosField;
@property (weak) IBOutlet NSTextField *edadHijoTresField;
@property (weak) IBOutlet NSTextField *edadHijoCuatroField;
@property (weak) IBOutlet NSTextField *edadHijoCincoField;
@property (weak) IBOutlet NSTextField *edadHijoSeisField;
@property (weak) IBOutlet NSTextField *situacionHijoUnoFIeld;
@property (weak) IBOutlet NSTextField *situacionHijoDosField;
@property (weak) IBOutlet NSTextField *situacionHijoTresField;
@property (weak) IBOutlet NSTextField *situacionHijoCuatroField;
@property (weak) IBOutlet NSTextField *situacionHijoCincoField;
@property (weak) IBOutlet NSTextField *situacionHijoSeisField;
@property (weak) IBOutlet NSTextField *relacionHijoUnoField;
@property (weak) IBOutlet NSTextField *relacionHijoDosField;
@property (weak) IBOutlet NSTextField *relacionHijoTresField;
@property (weak) IBOutlet NSTextField *relacionHijoCuatroField;
@property (weak) IBOutlet NSTextField *relacionHijoCincoField;
@property (weak) IBOutlet NSTextField *relacionHijoSeisField;
@property (weak) IBOutlet NSTextField *quienViveUstedField;
@property (weak) IBOutlet NSTextField *comoSeLlevaHermanosField;
@property (weak) IBOutlet NSTextField *quienSeLlevaMejorField;
@property (weak) IBOutlet NSTextField *comoSeLlevanPapasField;
@property (weak) IBOutlet NSTextField *relacionConParejaField;
@property (weak) IBOutlet NSTextField *relacionConHijosField;

///////////////////////////////////////////////////

// 5. INTERROGATORIO POR APARTOS Y SISTEMAS

// LABELS
@property (weak) IBOutlet NSTextField *alteracionesSuenoLabel;
@property (weak) IBOutlet NSTextField *alteracionesSuenoSiLabel;
@property (weak) IBOutlet NSTextField *alteracionesSuenoNoLabel;
@property (weak) IBOutlet NSTextField *alteracionesSuenoExpliqueLabel;
@property (weak) IBOutlet NSTextField *fatigaLabel;
@property (weak) IBOutlet NSTextField *fatigaSiLabel;
@property (weak) IBOutlet NSTextField *fatigaNoLabel;
@property (weak) IBOutlet NSTextField *fatigaExpliqueLabel;
@property (weak) IBOutlet NSTextField *apetitoLabel;
@property (weak) IBOutlet NSTextField *apetitoNormalLabel;
@property (weak) IBOutlet NSTextField *apetitoAumentadoLabel;
@property (weak) IBOutlet NSTextField *apetitoDisminuidoLabel;
@property (weak) IBOutlet NSTextField *pesoNormalLabel;
@property (weak) IBOutlet NSTextField *pesoDosLabel;
@property (weak) IBOutlet NSTextField *pesoAumentadoLabel;
@property (weak) IBOutlet NSTextField *pesoDisminuidoLabel;
@property (weak) IBOutlet NSTextField *capacidadDisfrutarLabel;
@property (weak) IBOutlet NSTextField *capacidadDisfrutarSiLabel;
@property (weak) IBOutlet NSTextField *capacidadDisfrutarNoLabel;
@property (weak) IBOutlet NSTextField *capacidadDisfrutarExpliqueLabel;
@property (weak) IBOutlet NSTextField *inquietudLabel;
@property (weak) IBOutlet NSTextField *inquietudPresenteLabel;
@property (weak) IBOutlet NSTextField *inquietudAusenteLabel;
@property (weak) IBOutlet NSTextField *problemasDigestivosLabel;
@property (weak) IBOutlet NSTextField *problemasDigestivosSiLabel;
@property (weak) IBOutlet NSTextField *problemasDigestivosNoLabel;
@property (weak) IBOutlet NSTextField *problemasDIgestivosExpliqueLabel;
@property (weak) IBOutlet NSTextField *problemasArticularesLabel;
@property (weak) IBOutlet NSTextField *problemasArticularesSiLabel;
@property (weak) IBOutlet NSTextField *problemasArticularesNoLabel;
@property (weak) IBOutlet NSTextField *problemasArticularesExpliqueLabel;
@property (weak) IBOutlet NSTextField *doloresFrecuentesLabel;
@property (weak) IBOutlet NSTextField *doloresFrecuentesSiLabel;
@property (weak) IBOutlet NSTextField *doloresFrecuentesNoLabel;
@property (weak) IBOutlet NSTextField *doloresFrecuentesExpliqueLabel;
@property (weak) IBOutlet NSTextField *problemasRinonesLabel;
@property (weak) IBOutlet NSTextField *problemasRinonesSiLabel;
@property (weak) IBOutlet NSTextField *problemasRinonesNoLabel;
@property (weak) IBOutlet NSTextField *problemasRinonesExpliqueLabel;
@property (weak) IBOutlet NSTextField *diabetesLabel;
@property (weak) IBOutlet NSTextField *diabetesSiLabel;
@property (weak) IBOutlet NSTextField *diabetesNoLabel;
@property (weak) IBOutlet NSTextField *diabetesExpliqueLabel;
@property (weak) IBOutlet NSTextField *problemasPulmonesLabel;
@property (weak) IBOutlet NSTextField *problemasPulmonesSiLabel;
@property (weak) IBOutlet NSTextField *problemasPulmonesNoLabel;
@property (weak) IBOutlet NSTextField *problemasPulmonesExpliqueLabel;
@property (weak) IBOutlet NSTextField *problemasAuditivosLabel;
@property (weak) IBOutlet NSTextField *problemasAuditivosSiLabel;
@property (weak) IBOutlet NSTextField *problemasAuditivosNoLabel;
@property (weak) IBOutlet NSTextField *problemasVisualesLabel;
@property (weak) IBOutlet NSTextField *problemasVisualesSiLabel;
@property (weak) IBOutlet NSTextField *problemasVisualesNoLabel;
@property (weak) IBOutlet NSTextField *problemasConcentracionLabel;
@property (weak) IBOutlet NSTextField *problemasConcentracionSiLabel;
@property (weak) IBOutlet NSTextField *problemasConcentracionNoLabel;
@property (weak) IBOutlet NSTextField *problemasConcentracionExpliqueLabel;
@property (weak) IBOutlet NSTextField *problemasTiroidesLabel;
@property (weak) IBOutlet NSTextField *problemasTiroidesSiLabel;
@property (weak) IBOutlet NSTextField *problemasTiroidesNoLabel;
@property (weak) IBOutlet NSTextField *problemasTiroidesExpliqueLabel;
@property (weak) IBOutlet NSTextField *desmayosLabel;
@property (weak) IBOutlet NSTextField *desmayosSiLabel;
@property (weak) IBOutlet NSTextField *desmayosNoLabel;
@property (weak) IBOutlet NSTextField *desmayosFrecuenciaLabel;
@property (weak) IBOutlet NSTextField *desmayosExpliqueLabel;
@property (weak) IBOutlet NSTextField *cancerFamiliaLabe;
@property (weak) IBOutlet NSTextField *cancerFamiliaSiLabel;
@property (weak) IBOutlet NSTextField *cancerFamiliaNoLabel;
@property (weak) IBOutlet NSTextField *padecimientosSaludFamiliaLabel;
@property (weak) IBOutlet NSTextField *enfermedadesImportantesFamiliaLabel;


// TEXTFIELDS

@property (weak) IBOutlet NSTextField *alteracionesSuenoSiField;
@property (weak) IBOutlet NSTextField *alteracionesSuenoNoField;
@property (weak) IBOutlet NSTextField *alteracionesSuenoExpliqueField;
@property (weak) IBOutlet NSTextField *fatigaSiField;
@property (weak) IBOutlet NSTextField *fatigaNoField;
@property (weak) IBOutlet NSTextField *fatigaExpliqueField;
@property (weak) IBOutlet NSTextField *apetitoNormalField;
@property (weak) IBOutlet NSTextField *apetitoAumentadoField;
@property (weak) IBOutlet NSTextField *apetitoDisminuidoField;
@property (weak) IBOutlet NSTextField *pesoNormalField;
@property (weak) IBOutlet NSTextField *pesoAumentadoField;
@property (weak) IBOutlet NSTextField *pesoDisminuidoField;
@property (weak) IBOutlet NSTextField *capacidadDisfrutarSiField;
@property (weak) IBOutlet NSTextField *capacidadDisfrutarNoField;
@property (weak) IBOutlet NSTextField *capacidadDisfrutarExpliqueField;
@property (weak) IBOutlet NSTextField *inquietudPresenteField;
@property (weak) IBOutlet NSTextField *inquietudAusenteField;
@property (weak) IBOutlet NSTextField *problemasDigestivosSiField;
@property (weak) IBOutlet NSTextField *problemasDigestivosNoField;
@property (weak) IBOutlet NSTextField *problemasDIgestivosExpliqueField;
@property (weak) IBOutlet NSTextField *problemasArticularesSiField;
@property (weak) IBOutlet NSTextField *problemasArticularesNoField;
@property (weak) IBOutlet NSTextField *problemasArticularesExpliqueField;
@property (weak) IBOutlet NSTextField *doloresFrecuentesSiField;
@property (weak) IBOutlet NSTextField *doloresFrecuentesNoField;
@property (weak) IBOutlet NSTextField *doloresFrecuentesExpliqueField;
@property (weak) IBOutlet NSTextField *problemasRinonesSiField;
@property (weak) IBOutlet NSTextField *problemasRinonesNoField;
@property (weak) IBOutlet NSTextField *problemasRinonesExpliqueField;
@property (weak) IBOutlet NSTextField *diabetesSiField;
@property (weak) IBOutlet NSTextField *diabetesNoField;
@property (weak) IBOutlet NSTextField *diabetesExpliqueField;
@property (weak) IBOutlet NSTextField *problemasPulmonesSiField;
@property (weak) IBOutlet NSTextField *problemasPulmonesNoField;
@property (weak) IBOutlet NSTextField *problemasPulmonesExpliqueField;
@property (weak) IBOutlet NSTextField *problemasAuditivosSiField;
@property (weak) IBOutlet NSTextField *problemasAuditivosNoField;
@property (weak) IBOutlet NSTextField *problemasVisualesSiField;
@property (weak) IBOutlet NSTextField *problemasVisualesNoField;
@property (weak) IBOutlet NSTextField *problemasConcentracionSiField;
@property (weak) IBOutlet NSTextField *problemasConcentracionNoField;
@property (weak) IBOutlet NSTextField *problemasConcentracionExpliqueField;
@property (weak) IBOutlet NSTextField *problemasTiroidesSiField;
@property (weak) IBOutlet NSTextField *problemasTiroidesNoField;
@property (weak) IBOutlet NSTextField *problemasTiroidesExpliqueField;
@property (weak) IBOutlet NSTextField *desmayosSiField;
@property (weak) IBOutlet NSTextField *desmayosNoField;
@property (weak) IBOutlet NSTextField *desmayosFrecuenciaField;
@property (weak) IBOutlet NSTextField *desmayosExpliqueField;
@property (weak) IBOutlet NSTextField *cancerFamiliaSiField;
@property (weak) IBOutlet NSTextField *cancerFamiliaNoField;
@property (weak) IBOutlet NSTextField *padecimientosSaludFamiliaField;
@property (weak) IBOutlet NSTextField *enfermedadesImportantesFamiliaDosField;

/////////////////////////////////////////////////////////////////////////////////

// 6. MOTIVO DE CONSULTA

// TEXTFIELDS
@property (weak) IBOutlet NSTextField *motivoConsulta;

///////////////////////////////////////////////////////////////////////////////

// 7. PRINCIPIO, EVOLUCION Y ESTADO ACTUAL DEL PADECIMIENTO

// LABELS
@property (weak) IBOutlet NSTextField *cuandoIniciaronSintomasLabel;
@property (weak) IBOutlet NSTextField *descripcionSintomasLabel;
@property (weak) IBOutlet NSTextField *haSidoHospitalizadaLabel;
@property (weak) IBOutlet NSTextField *haSidoHospitalizadaSiLabel;
@property (weak) IBOutlet NSTextField *haSidoHospitalizadaNoLabel;
@property (weak) IBOutlet NSTextField *haSidoHospitalizadaFrecuenciaLabel;
@property (weak) IBOutlet NSTextField *medicamentoSintomasLabel;
@property (weak) IBOutlet NSTextField *medicamentosSintomasSiLabel;
@property (weak) IBOutlet NSTextField *medicamentosSintomasNoLabel;
@property (weak) IBOutlet NSTextField *medicamentosSintomasExpliqueLabel;
@property (weak) IBOutlet NSTextField *funcionoTratamientoLabel;
@property (weak) IBOutlet NSTextField *funcionoTratamientoSiLabel;
@property (weak) IBOutlet NSTextField *funcionoTratamientoNoLabel;
@property (weak) IBOutlet NSTextField *funcionoTratamientoExpliqueLabel;
@property (weak) IBOutlet NSTextField *siguePresentandoSintomasLabel;
@property (weak) IBOutlet NSTextField *siguePresentandoSintomasSiLabel;
@property (weak) IBOutlet NSTextField *siguePresentandoSintomasNoLabel;
@property (weak) IBOutlet NSTextField *siguePresentandoSintomasExpliqueLabel;
@property (weak) IBOutlet NSTextField *acompaneSintomasLabel;


// TEXTFIELDS

@property (weak) IBOutlet NSTextField *cuandoIniciaronSintomasField;
@property (weak) IBOutlet NSTextField *descripcionSintomasField;

@property (weak) IBOutlet NSTextField *haSidoHospitalizadaSiField;
@property (weak) IBOutlet NSTextField *haSidoHospitalizadaNoField;
@property (weak) IBOutlet NSTextField *haSidoHospitalizadaFrecuenciaField;

@property (weak) IBOutlet NSTextField *medicamentosSintomasSiField;
@property (weak) IBOutlet NSTextField *medicamentosSintomasNoField;
@property (weak) IBOutlet NSTextField *medicamentosSintomasExpliqueField;

@property (weak) IBOutlet NSTextField *funcionoTratamientoSiField;
@property (weak) IBOutlet NSTextField *funcionoTratamientoNoField;
@property (weak) IBOutlet NSTextField *funcionoTratamientoExpliqueField;

@property (weak) IBOutlet NSTextField *siguePresentandoSintomasSiField;
@property (weak) IBOutlet NSTextField *siguePresentandoSintomasNoField;
@property (weak) IBOutlet NSTextField *siguePresentandoSintomasExpliqueField;

@property (weak) IBOutlet NSTextField *acompaneSintomasField;




//////////////////////////////////////////////////////////////////////////////

// 8. A EXAMEN PRIMERA PARTE

// LABELS
@property (weak) IBOutlet NSTextField *sexoExamenLabel;
@property (weak) IBOutlet NSTextField *sexoExamenFemeninaLabel;
@property (weak) IBOutlet NSTextField *sexoExamenMasculinaLabel;
@property (weak) IBOutlet NSTextField *sexoExamenComentarioLabel;

@property (weak) IBOutlet NSTextField *edadAparenteLabel;
@property (weak) IBOutlet NSTextField *edadAparenteIgualLabel;
@property (weak) IBOutlet NSTextField *edadAparenteMayorLabel;
@property (weak) IBOutlet NSTextField *edadAparenteEquivalenteLabel;

@property (weak) IBOutlet NSTextField *estaturaExamenLabel;
@property (weak) IBOutlet NSTextField *estaturaExamenBajaLabel;
@property (weak) IBOutlet NSTextField *estaturaExamenAltaLabel;
@property (weak) IBOutlet NSTextField *estaturaExamenNormalLabel;

@property (weak) IBOutlet NSTextField *complexionLabel;
@property (weak) IBOutlet NSTextField *complexionDelgadaLabel;
@property (weak) IBOutlet NSTextField *complexionSobrepesoLabel;
@property (weak) IBOutlet NSTextField *complexionNormalLabel;

@property (weak) IBOutlet NSTextField *faciesLabel;
@property (weak) IBOutlet NSTextField *faciesAnciosoLabel;
@property (weak) IBOutlet NSTextField *faciesPreocupadoLabel;
@property (weak) IBOutlet NSTextField *faciesTristeLabel;
@property (weak) IBOutlet NSTextField *faciesDeprimidoLabel;

@property (weak) IBOutlet NSTextField *sinCaracteristicasLabel;
@property (weak) IBOutlet NSTextField *faciesOtroLabel;

@property (weak) IBOutlet NSTextField *senasLabel;
@property (weak) IBOutlet NSTextField *senasPresentesLabel;
@property (weak) IBOutlet NSTextField *senasAusentesLabel;
@property (weak) IBOutlet NSTextField *senasLunaresLabel;
@property (weak) IBOutlet NSTextField *senasFaltaMiembroLabel;
@property (weak) IBOutlet NSTextField *senasTatuajesLabel;
@property (weak) IBOutlet NSTextField *senasUtilizaLentesLabel;
@property (weak) IBOutlet NSTextField *senasPeloTenidoLabel;
@property (weak) IBOutlet NSTextField *senasPeloAlineadoLabel;
@property (weak) IBOutlet NSTextField *senasPeloRecogidoLabel;
@property (weak) IBOutlet NSTextField *senasCejasDelineadasLabel;
@property (weak) IBOutlet NSTextField *senasUtilizacionAretesLabel;
@property (weak) IBOutlet NSTextField *senasOtrasLabel;

@property (weak) IBOutlet NSTextField *higieneAlinoLabel;
@property (weak) IBOutlet NSTextField *vestimentaBuenEstadoLabel;
@property (weak) IBOutlet NSTextField *vestimentaMalEstadoLabel;
@property (weak) IBOutlet NSTextField *higieneLabel;
@property (weak) IBOutlet NSTextField *higienePresenteLabel;
@property (weak) IBOutlet NSTextField *higieneAusenteLabel;

@property (weak) IBOutlet NSTextField *discordanciaVestirLabel;
@property (weak) IBOutlet NSTextField *discordanciaVestirSiLabel;
@property (weak) IBOutlet NSTextField *discordanciaVestirNoLabel;
@property (weak) IBOutlet NSTextField *tipoVestimentaLabel;

@property (weak) IBOutlet NSTextField *marchaLabel;
@property (weak) IBOutlet NSTextField *marchaRapidaLabel;
@property (weak) IBOutlet NSTextField *marchaLentaLabel;
@property (weak) IBOutlet NSTextField *marchaSinAlteracionesLabel;
@property (weak) IBOutlet NSTextField *marchaOtraLabel;

@property (weak) IBOutlet NSTextField *movimientosAnormalesLabel;
@property (weak) IBOutlet NSTextField *incoordinacionMotoraLabel;
@property (weak) IBOutlet NSTextField *ticsLabel;
@property (weak) IBOutlet NSTextField *tembloresLabel;

@property (weak) IBOutlet NSTextField *actitudEntrevistaLabel;
@property (weak) IBOutlet NSTextField *actitudEvasivoLabel;
@property (weak) IBOutlet NSTextField *actitudSeductorLabel;
@property (weak) IBOutlet NSTextField *actitudTimidoLabel;
@property (weak) IBOutlet NSTextField *actitudTranquiloLabel;
@property (weak) IBOutlet NSTextField *actitudIrritableLabel;
@property (weak) IBOutlet NSTextField *actitudRetadorLabel;
@property (weak) IBOutlet NSTextField *actitudQuejumbrosoLabel;
@property (weak) IBOutlet NSTextField *actitudDesconfiadoLabel;
@property (weak) IBOutlet NSTextField *actitudIndiferenteLabel;
@property (weak) IBOutlet NSTextField *actitudAmableLabel;
@property (weak) IBOutlet NSTextField *actitudCooperadorLabel;
@property (weak) IBOutlet NSTextField *actitudSerenoLabel;
@property (weak) IBOutlet NSTextField *actitudEstableLabel;
@property (weak) IBOutlet NSTextField *actitudOtrosLabel;


// TEXTFIELDS

@property (weak) IBOutlet NSTextField *sexoExamenFemeninaField;
@property (weak) IBOutlet NSTextField *sexoExamenMasculinaField;
@property (weak) IBOutlet NSTextField *sexoExamenComentarioField;

@property (weak) IBOutlet NSTextField *edadAparenteIgualField;
@property (weak) IBOutlet NSTextField *edadAparenteMayorField;
@property (weak) IBOutlet NSTextField *edadAparenteEquivalenteField;

@property (weak) IBOutlet NSTextField *estaturaExamenBajaField;
@property (weak) IBOutlet NSTextField *estaturaExamenAltaField;
@property (weak) IBOutlet NSTextField *estaturaExamenNormalField;

@property (weak) IBOutlet NSTextField *complexionDelgadaField;
@property (weak) IBOutlet NSTextField *complexionSobrepesoField;
@property (weak) IBOutlet NSTextField *complexionNormalField;

@property (weak) IBOutlet NSTextField *faciesAnciosoField;
@property (weak) IBOutlet NSTextField *faciesPreocupadoField;
@property (weak) IBOutlet NSTextField *faciesTristeField;
@property (weak) IBOutlet NSTextField *faciesDeprimidoField;

@property (weak) IBOutlet NSTextField *sinCaracteristicasField;
@property (weak) IBOutlet NSTextField *faciesOtroField;

@property (weak) IBOutlet NSTextField *senasPresentesField;
@property (weak) IBOutlet NSTextField *senasAusentesField;
@property (weak) IBOutlet NSTextField *senasLunaresField;
@property (weak) IBOutlet NSTextField *senasFaltaMiembroField;
@property (weak) IBOutlet NSTextField *senasTatuajesField;
@property (weak) IBOutlet NSTextField *senasUtilizaLentesField;
@property (weak) IBOutlet NSTextField *senasPeloTenidoField;
@property (weak) IBOutlet NSTextField *senasPeloAlineadoField;
@property (weak) IBOutlet NSTextField *senasPeloRecogidoField;
@property (weak) IBOutlet NSTextField *senasCejasDelineadasField;
@property (weak) IBOutlet NSTextField *senasUtilizacionAretesField;
@property (weak) IBOutlet NSTextField *senasOtrasField;

@property (weak) IBOutlet NSTextField *vestimentaBuenEstadoField;
@property (weak) IBOutlet NSTextField *vestimentaMalEstadoField;

@property (weak) IBOutlet NSTextField *higienePresenteField;
@property (weak) IBOutlet NSTextField *higieneAusenteField;

@property (weak) IBOutlet NSTextField *discordanciaVestirSiField;
@property (weak) IBOutlet NSTextField *discordanciaVestirNoField;
@property (weak) IBOutlet NSTextField *tipoVestimentaField;

@property (weak) IBOutlet NSTextField *marchaRapidaField;
@property (weak) IBOutlet NSTextField *marchaLentaField;
@property (weak) IBOutlet NSTextField *marchaSinAlteracionesField;
@property (weak) IBOutlet NSTextField *marchaOtraField;

@property (weak) IBOutlet NSTextField *incoordinacionMotoraField;
@property (weak) IBOutlet NSTextField *ticsField;
@property (weak) IBOutlet NSTextField *tembloresField;

@property (weak) IBOutlet NSTextField *actitudEvasivoField;
@property (weak) IBOutlet NSTextField *actitudSeductorField;
@property (weak) IBOutlet NSTextField *actitudTimidoField;
@property (weak) IBOutlet NSTextField *actitudTranquiloField;
@property (weak) IBOutlet NSTextField *actitudIrritableField;
@property (weak) IBOutlet NSTextField *actitudRetadorField;
@property (weak) IBOutlet NSTextField *actitudQuejumbrosoField;
@property (weak) IBOutlet NSTextField *actitudDesconfiadoField;
@property (weak) IBOutlet NSTextField *actitudIndiferenteField;
@property (weak) IBOutlet NSTextField *actitudAmableField;
@property (weak) IBOutlet NSTextField *actitudCooperadorField;
@property (weak) IBOutlet NSTextField *actitudSerenoField;
@property (weak) IBOutlet NSTextField *actitudEstableField;
@property (weak) IBOutlet NSTextField *actitudOtrosField;


////////////////////////////////////////////////////////////////////////////////

// 8. B EXAMEN MENTAL (PARTE DOS)

// LABELS
@property (weak) IBOutlet NSTextField *orientacionLabel;

@property (weak) IBOutlet NSTextField *conductasAlucinatoriasLabel;
@property (weak) IBOutlet NSTextField *conductasAlucinatoriasSiLabel;
@property (weak) IBOutlet NSTextField *conductasAlucinatoriasNoLabel;

@property (weak) IBOutlet NSTextField *ubicadoTiempoLabel;
@property (weak) IBOutlet NSTextField *ubicadoTiempoSiLabel;
@property (weak) IBOutlet NSTextField *ubicadoTiempoNoLabel;

@property (weak) IBOutlet NSTextField *ubicadoLugarLabel;
@property (weak) IBOutlet NSTextField *ubicadoLugarSiLabel;
@property (weak) IBOutlet NSTextField *ubicadoLugarNoLabel;

@property (weak) IBOutlet NSTextField *seReconoceLabel;
@property (weak) IBOutlet NSTextField *seReconoceSiLabel;
@property (weak) IBOutlet NSTextField *seReconoceNoLabel;

@property (weak) IBOutlet NSTextField *pensamientoLabel;

@property (weak) IBOutlet NSTextField *discursoFormaLabel;
@property (weak) IBOutlet NSTextField *discursoFormaJuiciosoLabel;
@property (weak) IBOutlet NSTextField *discursoFormaSinAlteracionLabel;
@property (weak) IBOutlet NSTextField *discursoFormaRazonableLabel;
@property (weak) IBOutlet NSTextField *discursoFormaNoRazonableLabel;
@property (weak) IBOutlet NSTextField *discursoFormaDentroRealidadLabel;
@property (weak) IBOutlet NSTextField *discursoFormaFueraRealidadLabel;

@property (weak) IBOutlet NSTextField *discursoCursoLabel;
@property (weak) IBOutlet NSTextField *discursoCursoAceleradoLabel;
@property (weak) IBOutlet NSTextField *discursoCursoLentificadoLabel;
@property (weak) IBOutlet NSTextField *discursoCursoNormalLabel;

@property (weak) IBOutlet NSTextField *discursoContenidoLabel;

@property (weak) IBOutlet NSTextField *humorLabel;

@property (weak) IBOutlet NSTextField *afectoLabel;
@property (weak) IBOutlet NSTextField *afectoDisminuidoLabel;
@property (weak) IBOutlet NSTextField *afectoAumentadoLabel;
@property (weak) IBOutlet NSTextField *afectoNormalLabel;

@property (weak) IBOutlet NSTextField *inteligenciaLabel;
@property (weak) IBOutlet NSTextField *inteligenciaArribaLabel;
@property (weak) IBOutlet NSTextField *inteligenciaDebajoLabel;
@property (weak) IBOutlet NSTextField *inteligenciaNormalLabel;

@property (weak) IBOutlet NSTextField *fondoInformacionLabel;
@property (weak) IBOutlet NSTextField *acordeNivelSocioculturalLabel;
@property (weak) IBOutlet NSTextField *acordeNivelSocioCulturalSiLabel;
@property (weak) IBOutlet NSTextField *acordeNivelSocioCulturalNoLabel;

@property (weak) IBOutlet NSTextField *acordeNivelEscolaridadLabel;
@property (weak) IBOutlet NSTextField *acordeNivelEscolaridadSiLabel;
@property (weak) IBOutlet NSTextField *acordeNivelEscolaridadNoLabel;



// TEXTFIELDS



@property (weak) IBOutlet NSTextField *conductasAlucinatoriasSiField;
@property (weak) IBOutlet NSTextField *conductasAlucinatoriasNoField;

@property (weak) IBOutlet NSTextField *ubicadoTiempoSiField;
@property (weak) IBOutlet NSTextField *ubicadoTiempoNoField;

@property (weak) IBOutlet NSTextField *ubicadoLugarSiField;
@property (weak) IBOutlet NSTextField *ubicadoLugarNoField;

@property (weak) IBOutlet NSTextField *seReconoceSiField;
@property (weak) IBOutlet NSTextField *seReconoceNoField;


@property (weak) IBOutlet NSTextField *discursoFormaJuiciosoField;
@property (weak) IBOutlet NSTextField *discursoFormaSinAlteracionField;
@property (weak) IBOutlet NSTextField *discursoFormaRazonableField;
@property (weak) IBOutlet NSTextField *discursoFormaNoRazonableField;
@property (weak) IBOutlet NSTextField *discursoFormaDentroRealidadField;
@property (weak) IBOutlet NSTextField *discursoFormaFueraRealidadField;

@property (weak) IBOutlet NSTextField *discursoCursoAceleradoField;
@property (weak) IBOutlet NSTextField *discursoCursoLentificadoField;
@property (weak) IBOutlet NSTextField *discursoCursoNormalField;

@property (weak) IBOutlet NSTextField *discursoContenidoField;

@property (weak) IBOutlet NSTextField *humorField;

@property (weak) IBOutlet NSTextField *afectoDisminuidoField;
@property (weak) IBOutlet NSTextField *afectoAumentadoField;
@property (weak) IBOutlet NSTextField *afectoNormalField;

@property (weak) IBOutlet NSTextField *inteligenciaArribaField;
@property (weak) IBOutlet NSTextField *inteligenciaDebajoField;
@property (weak) IBOutlet NSTextField *inteligenciaNormalField;

@property (weak) IBOutlet NSTextField *acordeNivelSocioCulturalSiField;
@property (weak) IBOutlet NSTextField *acordeNivelSocioCulturalNoField;

@property (weak) IBOutlet NSTextField *acordeNivelEscolaridadSiField;
@property (weak) IBOutlet NSTextField *acordeNivelEscolaridadNoField;


////////////////////////////////////////////////////////////////////

// 9. DIAGNOSTICO MULTIAXIAL

// LABELS
@property (weak) IBOutlet NSTextField *ejeIUnoLabel;
@property (weak) IBOutlet NSTextField *ejeIDosLabel;
@property (weak) IBOutlet NSTextField *ejeIALabel;
@property (weak) IBOutlet NSTextField *ejeIBLabel;
@property (weak) IBOutlet NSTextField *ejeICLabel;

@property (weak) IBOutlet NSTextField *ejeIILabel;
@property (weak) IBOutlet NSTextField *ejeIIALabel;

@property (weak) IBOutlet NSTextField *ejeIIILabel;
@property (weak) IBOutlet NSTextField *ejeIIIALabel;
@property (weak) IBOutlet NSTextField *ejeIIIBLabel;

@property (weak) IBOutlet NSTextField *ejeIVLabel;
@property (weak) IBOutlet NSTextField *ejeIVLeveLabel;
@property (weak) IBOutlet NSTextField *ejeIVModeradoLabel;
@property (weak) IBOutlet NSTextField *ejeIVGraveLabel;
@property (weak) IBOutlet NSTextField *ejeIVSeveroLabel;

@property (weak) IBOutlet NSTextField *ejeVLabel;
@property (weak) IBOutlet NSTextField *ejeVBuenoLabel;
@property (weak) IBOutlet NSTextField *ejeVMedianoLabel;
@property (weak) IBOutlet NSTextField *ejeVMediocreLabel;
@property (weak) IBOutlet NSTextField *ejeVMaloLabel;

@property (weak) IBOutlet NSTextField *motivoDisfuncionLabel;

// TEXTFIELDS

@property (weak) IBOutlet NSTextField *ejeIAField;
@property (weak) IBOutlet NSTextField *ejeIBField;
@property (weak) IBOutlet NSTextField *ejeICField;

@property (weak) IBOutlet NSTextField *ejeIIAField;

@property (weak) IBOutlet NSTextField *ejeIIIAField;
@property (weak) IBOutlet NSTextField *ejeIIIBField;

@property (weak) IBOutlet NSTextField *ejeIVLeveField;
@property (weak) IBOutlet NSTextField *ejeIVModeradoField;
@property (weak) IBOutlet NSTextField *ejeIVGraveField;
@property (weak) IBOutlet NSTextField *ejeIVSeveroField;

@property (weak) IBOutlet NSTextField *ejeVBuenoField;
@property (weak) IBOutlet NSTextField *ejeVMedianoField;
@property (weak) IBOutlet NSTextField *ejeVMediocreField;
@property (weak) IBOutlet NSTextField *ejeVMaloField;

@property (weak) IBOutlet NSTextField *motivoDisfuncionField;



////////////////////////////////////////////////////////////////////////////////////

// 10 . TRATAMIENTO O PLAN DE TRABAJO

// LABELS
@property (weak) IBOutlet NSTextField *medicamentosLabel;

@property (weak) IBOutlet NSTextField *tratamientoPsicologicoLabel;
@property (weak) IBOutlet NSTextField *tratamientoPsicologicoSiLabel;
@property (weak) IBOutlet NSTextField *tratamientoPsicologicoNoLabel;
@property (weak) IBOutlet NSTextField *tratamientoPsicologicoTiempoEstimadoLabel;

@property (weak) IBOutlet NSTextField *referirloLabel;
@property (weak) IBOutlet NSTextField *referirloSiLabel;
@property (weak) IBOutlet NSTextField *referirloNoLabel;
@property (weak) IBOutlet NSTextField *referirloEspecialidadLabel;


// TEXTFIELDS
@property (weak) IBOutlet NSTextField *medicamentosField;

@property (weak) IBOutlet NSTextField *tratamientoPsicologicoSiField;
@property (weak) IBOutlet NSTextField *tratamientoPsicologicoNoField;
@property (weak) IBOutlet NSTextField *tratamientoPsicologicoTiempoEstimadoField;

@property (weak) IBOutlet NSTextField *referirloSiField;
@property (weak) IBOutlet NSTextField *referirloNoField;
@property (weak) IBOutlet NSTextField *referirloEspecialidadField;



///////////////////////////////////////////////////////////////////////////////

// 11. PRONOSTICO

// LABELS
@property (weak) IBOutlet NSTextField *ligadoEvolucionLabel;
@property (weak) IBOutlet NSTextField *ligadoRegularLabel;
@property (weak) IBOutlet NSTextField *ligadoMaloLabel;
@property (weak) IBOutlet NSTextField *ligadoBuenoLabel;

// TEXTFIELDS
@property (weak) IBOutlet NSTextField *ligadoEvolucionField;
@property (weak) IBOutlet NSTextField *ligadoRegularField;
@property (weak) IBOutlet NSTextField *ligadoMaloField;
@property (weak) IBOutlet NSTextField *ligadoBuenoField;


/////////////////////////////////////////////////////////////////////

// 12. PREGUNTAS ADICIONALES

// LABELS
@property (weak) IBOutlet NSTextField *comoSeDescribeLabel;
@property (weak) IBOutlet NSTextField *hobbyLabel;
@property (weak) IBOutlet NSTextField *descansoLabel;

// TEXTFIELDS
@property (weak) IBOutlet NSTextField *comoSeDescribeField;
@property (weak) IBOutlet NSTextField *hobbyField;
@property (weak) IBOutlet NSTextField *descansoField;

@end
