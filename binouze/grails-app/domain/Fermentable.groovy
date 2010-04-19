/**
 * The Fermentable entity.
 *
 * @author  Olivier BAZOUD  sug
 *
 *
 */
class Fermentable implements Serializable {
    static mapping = {
         table 'Fermentable'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         id generator:'identity', column:'id'
    }
    String id
    String recipeid
    String addafterboil
    String amount
    String coarsefinediff
    String color
    String diastaticpower
    String displayamount
    String displaycolor
    String ibugalperlb
    String inventory
    String maxinbatch
    String moisture
    String name
    String notes
    String origin
    String potential
    String protein
    String recommendmash
    String supplier
    String type
    String version
    String yield

    static constraints = {
        id(size: 1..36, blank: false)
        recipeid(size: 1..36, blank: false)
        addafterboil(size: 0..50)
        amount(size: 0..50)
        coarsefinediff(size: 0..50)
        color(size: 0..50)
        diastaticpower(size: 0..50)
        displayamount(size: 0..50)
        displaycolor(size: 0..50)
        ibugalperlb(size: 0..50)
        inventory(size: 0..50)
        maxinbatch(size: 0..50)
        moisture(size: 0..50)
        name(size: 0..50)
        notes(size: 0..250)
        origin(size: 0..50)
        potential(size: 0..50)
        protein(size: 0..50)
        recommendmash(size: 0..50)
        supplier(size: 0..50)
        type(size: 0..50)
        version(size: 0..50)
        yield(size: 0..50)
    }
    String toString() {
        return "${id}" 
    }
}
