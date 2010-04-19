package  fr.sug.springbatch.binouze.domain;
/**
 * The Water entity.
 *
 * @author  Olivier BAZOUD  sug
 *
 *
 */
class Water implements Serializable {
    static mapping = {
         table 'Water'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         id generator:'identity', column:'id'
    }
    String id
    String recipeid
    String amount
    String bicarbonate
    String calcium
    String chloride
    String displayamount
    String magnesium
    String name
    String notes
    String ph
    String sodium
    String sulfate
    String version

    static constraints = {
        id(size: 1..36, blank: false)
        recipeid(size: 1..36, blank: false)
        amount(size: 0..50)
        bicarbonate(size: 0..50)
        calcium(size: 0..50)
        chloride(size: 0..50)
        displayamount(size: 0..50)
        magnesium(size: 0..50)
        name(size: 0..50)
        notes(size: 0..250)
        ph(size: 0..50)
        sodium(size: 0..50)
        sulfate(size: 0..50)
        version(size: 0..50)
    }
    String toString() {
        return "${id}" 
    }
}
