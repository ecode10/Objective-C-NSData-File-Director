//
//  main.m
//  EscreverArquivo
//
//  Created by Mauricio Junior on 3/20/17.
//  Copyright © 2017 Mauricio Junior. All rights reserved.
//


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        
        NSMutableString *str = [[NSMutableString alloc]init];
        
        for (int i=0; i < 10; i++){
            [str appendString:@"eu sou nada"];
        }
        
        [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        
        NSLog(@"Escreveu oa arquivo");
    
        
        
        NSError *error;
        
        NSString *strA = [[NSString alloc] initWithContentsOfFile:@"/tmp/cool.txt" encoding:NSASCIIStringEncoding error:&error];
        
        if(!strA) {
            NSLog(@"falhou: %@", [error localizedDescription]);
        } else {
            NSLog(@"pegou os dados %@", strA);
        }
        
        
    }
    return 0;
}
