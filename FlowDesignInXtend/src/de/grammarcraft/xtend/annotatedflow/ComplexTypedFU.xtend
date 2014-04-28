package de.grammarcraft.xtend.annotatedflow

import de.grammarcraft.xtend.flow.annotations.FunctionUnit
import java.util.List
import de.grammarcraft.xtend.flow.annotations.InputPort
import de.grammarcraft.xtend.flow.annotations.OutputPort

@FunctionUnit(
        inputPorts = #[
            @InputPort(name="input", type=List, typeParameters=#[String])
        ],
        outputPorts = #[
            @OutputPort(name="output", type=List, typeParameters=#[String])
        ]
    )
class ComplextypedFU {
    
    override processInput(List<String> msg) {
        output.forward(msg)
    }
    
}