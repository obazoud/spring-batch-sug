package  fr.sug.springbatch.binouze.domain;
/**
 * The Style entity.
 *
 * @author  Olivier BAZOUD  sug
 *
 *
 */
class Style implements Serializable {
    static mapping = {
         table 'Style'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         id generator:'assigned', column:'id'
         recipe column:'id', insertable:false, updateable:false
    }
    String id
    String abvmax
    String abvmin
    String abvrange
    String carbmax
    String carbmin
    String carbrange
    String category
    String categorynumber
    String colormax
    String colormin
    String colorrange
    String displaycolormax
    String displaycolormin
    String displayfgmax
    String displayfgmin
    String displayogmax
    String displayogmin
    String examples
    String fgmax
    String fgmin
    String fgrange
    String ibumax
    String ibumin
    String iburange
    String ingredients
    String name
    String notes
    String ogmax
    String ogmin
    String ogrange
    String profile
    String styleguide
    String styleletter
    String type
    String version
    Recipe recipe
    static constraints = {
        id(size: 1..36, blank: false)
        abvmax(size: 0..50)
        abvmin(size: 0..50)
        abvrange(size: 0..50)
        carbmax(size: 0..50)
        carbmin(size: 0..50)
        carbrange(size: 0..50)
        category(size: 0..50)
        categorynumber(size: 0..50)
        colormax(size: 0..50)
        colormin(size: 0..50)
        colorrange(size: 0..50)
        displaycolormax(size: 0..50)
        displaycolormin(size: 0..50)
        displayfgmax(size: 0..50)
        displayfgmin(size: 0..50)
        displayogmax(size: 0..50)
        displayogmin(size: 0..50)
        examples(size: 0..50)
        fgmax(size: 0..50)
        fgmin(size: 0..50)
        fgrange(size: 0..50)
        ibumax(size: 0..50)
        ibumin(size: 0..50)
        iburange(size: 0..50)
        ingredients(size: 0..250)
        name(size: 0..50)
        notes(size: 0..250)
        ogmax(size: 0..50)
        ogmin(size: 0..50)
        ogrange(size: 0..50)
        profile(size: 0..250)
        styleguide(size: 0..50)
        styleletter(size: 0..50)
        type(size: 0..50)
        version(size: 0..50)
    }
    String toString() {
        return "${id}" 
    }
}
