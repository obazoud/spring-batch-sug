package  fr.sug.springbatch.binouze.domain;
/**
 * The Yeast entity.
 *
 * @author  Olivier BAZOUD  sug
 *
 *
 */
class Yeast implements Serializable {
    static mapping = {
         table 'Yeast'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         id generator:'identity', column:'id'
         recipe column:'recipeId'
    }
    String id
    String recipeid
    String addtosecondary
    String amount
    String amountisweight
    String attenuation
    String bestfor
    String culturedate
    String displayamount
    String dispmaxtemp
    String dispmintemp
    String flocculation
    String form
    String inventory
    String laboratory
    String maxreuse
    String maxtemperature
    String mintemperature
    String name
    String notes
    String productid
    String timescultured
    String type
    String version
    static belongsTo = [ recipe : Recipe ]

    static constraints = {
        id(size: 1..36, blank: false)
        recipeid(size: 1..36, blank: false)
        addtosecondary(size: 0..50)
        amount(size: 0..50)
        amountisweight(size: 0..50)
        attenuation(size: 0..50)
        bestfor(size: 0..250)
        culturedate(size: 0..50)
        displayamount(size: 0..50)
        dispmaxtemp(size: 0..50)
        dispmintemp(size: 0..50)
        flocculation(size: 0..50)
        form(size: 0..50)
        inventory(size: 0..50)
        laboratory(size: 0..50)
        maxreuse(size: 0..50)
        maxtemperature(size: 0..50)
        mintemperature(size: 0..50)
        name(size: 0..50)
        notes(size: 0..250)
        productid(size: 0..50)
        timescultured(size: 0..50)
        type(size: 0..50)
        version(size: 0..50)
    }
    String toString() {
        return "${id}" 
    }
}
