/**
 * The Hop entity.
 *
 * @author  Olivier BAZOUD  sug
 *
 *
 */
class Hop implements Serializable {
    static mapping = {
         table 'Hop'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         id generator:'identity', column:'id'
         id generator:'identity', column:'recipeId'
         id composite:['id','recipeid'], generator:'assigned'
    }
    String id
    String recipeid
    String alpha
    String amount
    String beta
    String caryophyllene
    String cohumulone
    String displayamount
    String displaytime
    String form
    String hsi
    String humulene
    String inventory
    String myrcene
    String name
    String notes
    String origin
    String substitutes
    String time
    String type
    String use1
    String version

    static constraints = {
        id(size: 1..36, blank: false)
        recipeid(size: 1..36, blank: false)
        alpha(size: 0..50)
        amount(size: 0..50)
        beta(size: 0..50)
        caryophyllene(size: 0..50)
        cohumulone(size: 0..50)
        displayamount(size: 0..50)
        displaytime(size: 0..50)
        form(size: 0..50)
        hsi(size: 0..50)
        humulene(size: 0..50)
        inventory(size: 0..50)
        myrcene(size: 0..50)
        name(size: 0..50)
        notes(size: 0..250)
        origin(size: 0..50)
        substitutes(size: 0..50)
        time(size: 0..50)
        type(size: 0..50)
        use1(size: 0..50)
        version(size: 0..50)
    }
    String toString() {
        return "${id}" 
    }
}
