package deltablue {

public class OrderedCollection {
    private var elms:Array;
    
    public function OrderedCollection() {
        this.elms = new Array();
    }
    
    public function add(elm):void {
		print("OrderedCollection::add Adding constraint");
		print("Length: " + elms.length);
        this.elms[elms.length] = elm;
		print("Finished adding constraint");
    }
    
    public function at(index:int):* {
		print("Atting : " + index);
        var result = this.elms[index];
		print(result);
		return result;
    }
    
    public function size():int {
        return this.elms.length;
    }
} 


public class Constraint {
    public function Constraint():void {
    }
} 


function chainTest(n:int) {
	var ordered:OrderedCollection = new OrderedCollection();
	var constraint:Constraint = new Constraint();
	ordered.add(constraint);
	var retrive:Constraint = ordered.at(0);
	
}

function deltaBlue():void {
    chainTest(100);
}


deltaBlue();

} // package
