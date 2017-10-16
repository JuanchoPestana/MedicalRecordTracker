//
//  BuscarPacienteViewController.h
//  HistorialPacientes
//
//  Created by Juan Pestana on 7/6/15.
//  Copyright (c) 2015 Juan Pestana. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "sqlite3.h"

@interface BuscarPacienteViewController : NSViewController


@property (weak) IBOutlet NSTextField *nombreBuscar;

- (IBAction)buscar:(id)sender;

- (IBAction)uno:(id)sender;

- (IBAction)dosA:(id)sender;

- (IBAction)dosB:(id)sender;

- (IBAction)tres:(id)sender;

- (IBAction)cuatro:(id)sender;

- (IBAction)cinco:(id)sender;

- (IBAction)seis:(id)sender;

- (IBAction)siete:(id)sender;

- (IBAction)ochoA:(id)sender;

- (IBAction)ochoB:(id)sender;

- (IBAction)nueve:(id)sender;

- (IBAction)diez:(id)sender;

- (IBAction)once:(id)sender;

- (IBAction)doce:(id)sender;

@property (strong) IBOutlet NSTextView *textViewUNO;

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


@end
