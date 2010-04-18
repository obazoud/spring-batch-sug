/**
 * The Mashstep entity.
 *
 * @author  Olivier BAZOUD  sug
 *
 *
 */
class Mashstep implements Serializable {
    static mapping = {
         table 'MashStep'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         id generator:'identity', column:'id'
         id generator:'identity', column:'mashId'
         id composite:['id','mashid'], generator:'assigned'
    }
    String id
    String mashid
    String decoctionamt
    String description
    String displayinfuseamt
    String displaysteptemp
    String endtemp
    String infuseamount
    String infusetemp
    String name
    String ramptime
    String steptemp
    String steptime
    String type
    String version
    String watergrainratio

    static constraints = {
        id(size: 1..36, blank: false)
        mashid(size: 1..36, blank: false)
        decoctionamt(size: 0..50)
        description(size: 0..50)
        displayinfuseamt(size: 0..50)
        displaysteptemp(size: 0..50)
        endtemp(size: 0..50)
        infuseamount(size: 0..50)
        infusetemp(size: 0..50)
        name(size: 0..50)
        ramptime(size: 0..50)
        steptemp(size: 0..50)
        steptime(size: 0..50)
        type(size: 0..50)
        version(size: 0..50)
        watergrainratio(size: 0..50)
    }
    String toString() {
        return "${id}" 
    }
}
