//
//  BuscarSesionVC.h
//  HistorialPacientes
//
//  Created by Juan Pestana on 7/7/15.
//  Copyright (c) 2015 Juan Pestana. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BuscarSesionVC : NSViewController


@property (weak) IBOutlet NSTextField *nombrePaciente;
@property (weak) IBOutlet NSTextField *dia;

@property (weak) IBOutlet NSTextField *mes;
@property (weak) IBOutlet NSTextField *ano;

@property (strong) IBOutlet NSTextView *notasTextviewUltima;

@property (strong) IBOutlet NSTextView *tematicaTextviewUltima;

- (IBAction)buscar:(id)sender;


@end
