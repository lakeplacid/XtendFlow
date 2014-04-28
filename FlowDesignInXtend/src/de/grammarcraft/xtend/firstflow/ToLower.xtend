package de.grammarcraft.xtend.firstflow

package class ToLower extends FunctionUnit {
    
    new() { super('ToLower') }
    
    // input port
    public val (String)=>void input = [msg | input(msg)]
    def input(String msg) { processInput(msg) }

    // output port  
    public val output = new OutputPort<String>('''«this».output''', 
        [forwardIntegrationError]
    )
    
    override (String)=>void getTheOneAndOnlyInputPort() {
        return input;
    }

    // convenient operator for function units defining one and only one output port:
    // defines operator "->", used as function unit connector
    def void operator_mappedTo((String)=>void operation) {
        output -> operation
    }
       
    // This method implements the semantic of the function unit
    private def processInput(String msg) {
        output.forward(msg.toLowerCase);
    }
        
}