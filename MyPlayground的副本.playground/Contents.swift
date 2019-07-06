

class Juanzhuzhe{
    var Uname = " "
    var UID = "123456789"
    var Key = "abc123"
    var Tel = "13012341234"
    
    func setUID(uid:String){
        UID=uid
    }
    
    func setKey(key:String){
        Key=key
    }
    
    func setTel(tel:String){
        Tel=tel
    }
    
    func getUID() -> String{
        return UID
    }
    
    func getKey() -> String{
        return Key
    }
    
    func getTel() -> String{
        return Tel
    }
    func register(uid:String,key:String,tel:String){
        setUID(uid: uid)
        setKey(key: key)
        setTel(tel: tel)
    }
    
    func login(printUID:String,printKey:String) -> Bool{
        guard(printUID==getUID())else{
            return false
        }
        
        guard(printKey==getKey())else{
            return false
        }
        
        return true
    }
}


