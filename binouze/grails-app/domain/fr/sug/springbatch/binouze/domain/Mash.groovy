package  fr.sug.springbatch.binouze.domain;
/**
 * The Mash entity.
 *
 * @author  Olivier BAZOUD  sug
 *
 *
 */
class Mash implements Serializable {
	static mapping = {
		table 'Mash'
		// version is set to false, because this isn't available by default for legacy databases
		version false
		id generator:'assigned', column:'id'
	    recipe column:'id', insertable:false, updateable:false
	}
	String id
	String displaygraintemp
	String displayspargetemp
	String displaytuntemp
	String displaytunweight
	String equipadjust
	String graintemp
	String name
	String notes
	String ph
	String spargetemp
	String tunspecificheat
	String tuntemp
	String tunweight
	String type
	String version
	static hasMany = [ mashSteps : MashStep ]
    Recipe recipe
	
	static constraints = {
		id(size: 1..36, blank: false)
		displaygraintemp(size: 0..50)
		displayspargetemp(size: 0..50)
		displaytuntemp(size: 0..50)
		displaytunweight(size: 0..50)
		equipadjust(size: 0..50)
		graintemp(size: 0..50)
		name(size: 0..50)
		notes(size: 0..250)
		ph(size: 0..50)
		spargetemp(size: 0..50)
		tunspecificheat(size: 0..50)
		tuntemp(size: 0..50)
		tunweight(size: 0..50)
		type(size: 0..50)
		version(size: 0..50)
	}
	String toString() {
		return "${id}" 
	}
}
