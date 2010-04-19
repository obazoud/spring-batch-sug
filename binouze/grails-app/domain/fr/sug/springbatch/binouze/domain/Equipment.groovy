package  fr.sug.springbatch.binouze.domain;
/**
 * The Equipment entity.
 *
 * @author  Olivier BAZOUD  sug
 *
 *
 */
class Equipment implements Serializable {
	static mapping = {
		table 'Equipment'
		// version is set to false, because this isn't available by default for legacy databases
		version false
		id generator:'identity', column:'id'
	}
	String id
	String batchsize
	String boilsize
	String boiltime
	String calcboilvolume
	String displaybatchsize
	String displayboilsize
	String displaylauterdeadspace
	String displaytopupkettle
	String displaytopupwater
	String displaytrubchillerloss
	String displaytunvolume
	String displaytunweight
	String evaprate
	String hoputilization
	String lauterdeadspace
	String name
	String notes
	String topupkettle
	String topupwater
	String trubchillerloss
	String tunspecificheat
	String tunvolume
	String tunweight
	String version
	
	static constraints = {
		id(size: 1..36, blank: false)
		batchsize(size: 0..50)
		boilsize(size: 0..50)
		boiltime(size: 0..50)
		calcboilvolume(size: 0..50)
		displaybatchsize(size: 0..50)
		displayboilsize(size: 0..50)
		displaylauterdeadspace(size: 0..50)
		displaytopupkettle(size: 0..50)
		displaytopupwater(size: 0..50)
		displaytrubchillerloss(size: 0..50)
		displaytunvolume(size: 0..50)
		displaytunweight(size: 0..50)
		evaprate(size: 0..50)
		hoputilization(size: 0..50)
		lauterdeadspace(size: 0..50)
		name(size: 0..50)
		notes(size: 0..250)
		topupkettle(size: 0..50)
		topupwater(size: 0..50)
		trubchillerloss(size: 0..50)
		tunspecificheat(size: 0..50)
		tunvolume(size: 0..50)
		tunweight(size: 0..50)
		version(size: 0..50)
	}
	String toString() {
		return "${id}" 
	}
}
