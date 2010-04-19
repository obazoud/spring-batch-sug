/**
 * The Misc entity.
 *
 * @author  Olivier BAZOUD  sug
 *
 *
 */
class Misc implements Serializable {
    static mapping = {
         table 'Misc'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         id generator:'identity', column:'id'
    }
    String id
    String recipeid
    String amount
    String amountisweight
    String batchsize
    String displayamount
    String displaytime
    String inventory
    String name
    String notes
    String time
    String type
    String use1
    String usefor
    String version

    static constraints = {
        id(size: 1..36, blank: false)
        recipeid(size: 1..36, blank: false)
        amount(size: 0..50)
        amountisweight(size: 0..50)
        batchsize(size: 0..50)
        displayamount(size: 0..50)
        displaytime(size: 0..50)
        inventory(size: 0..50)
        name(size: 0..50)
        notes(size: 0..250)
        time(size: 0..50)
        type(size: 0..50)
        use1(size: 0..50)
        usefor(size: 0..50)
        version(size: 0..50)
    }
    String toString() {
        return "${id}" 
    }
}
