import Debug "mo:base/Debug";

actor hesap_makinesi {
  var result: Int= 0;

  public func  sum(n: Int) : async Int{
    result += n;
    return result
  };
  
  public func dec(n: Int) : async Int{
    result -= n;
    return result
  };

  public func multi(n: Int) : async Int{
    result *= n;
    return result
  };
  
  public func div(n: Int) : async ?Int{
    if(n==0){
      Debug.print(debug_show ("0 ile bolme islemi yapamazsiniz"));
      return null
    }else{
      result /=n;
      return ?result
    };
  };

  public func square() : async Int{
     result *= result;
     return result
  };
}
