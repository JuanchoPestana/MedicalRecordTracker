//
//  NuevaSesionVC.h
//  HistorialPacientes
//
//  Created by Juan Pestana on 7/7/15.
//  Copyright (c) 2015 Juan Pestana. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NuevaSesionVC : NSViewController

@property (weak) IBOutlet NSTextField *nombrePaciente;

@property (weak) IBOutlet NSTextField *dia;

@property (weak) IBOutlet NSTextField *mes;

@property (weak) IBOutlet NSTextField *ano;

@property (strong) IBOutlet NSTextView *notasTextview;

@property (strong) IBOutlet NSTextView *tematicaTextview;


- (IBAction)agregarNota:(id)sender;


@end
