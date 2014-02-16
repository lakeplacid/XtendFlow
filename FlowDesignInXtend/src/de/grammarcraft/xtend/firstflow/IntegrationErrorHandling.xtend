package de.grammarcraft.xtend.firstflow

import java.util.List

abstract class IntegrationErrorHandling {
    
    static def void onIntegrationErrorAt(
        List<? extends FunctionUnit> functionUnits, 
        (Exception)=>void errorOperation
    )
    {
        functionUnits.forEach[
            integrationError -> errorOperation
        ]
    }
}