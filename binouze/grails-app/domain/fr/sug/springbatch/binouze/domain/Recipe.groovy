package  fr.sug.springbatch.binouze.domain;
/**
 * The Recipe entity.
 *
 * @author  Olivier BAZOUD  sug
 *
 *
 */
class Recipe implements Serializable {
	static mapping = {
		table 'Recipe'
		// version is set to false, because this isn't available by default for legacy databases
		version false
		id generator:'identity', column:'id'
	}
	String id
	String abv
	String actualefficiency
	String age
	String agetemp
	String asstbrewer
	String batchsize
	String boilsize
	String boiltime
	String brewer
	String calories
	String carbonation
	String carbonationtemp
	String carbonationused
	String date
	String displayagetemp
	String displaybatchsize
	String displayboilsize
	String displaycarbtemp
	String displayfg
	String displayog
	String displayprimarytemp
	String displaysecondarytemp
	String displaytertiarytemp
	String efficiency
	String estabv
	String estcolor
	String estfg
	String estog
	String fermentationstages
	String fg
	String forcecarbonation
	String ibu
	String ibumethod
	String kegprimingfactor
	String name
	String notes
	String og
	String primaryage
	String primarytemp
	String primingsugarequiv
	String primingsugarname
	String secondaryage
	String secondarytemp
	String tastenotes
	String tasterating
	String tertiaryage
	String tertiarytmp
	String type
	String version
	static hasMany = [ hops : Hop, fermentables : Fermentable, miscs : Misc, yeasts : Yeast, waters : Water ]
	static hasOne = [equipment : Equipment, style : Style, mash : Mash]
	static constraints = {
		id(size: 1..36, blank: false)
		abv(size: 0..50)
		actualefficiency(size: 0..50)
		age(size: 0..50)
		agetemp(size: 0..50)
		asstbrewer(size: 0..50)
		batchsize(size: 0..50)
		boilsize(size: 0..50)
		boiltime(size: 0..50)
		brewer(size: 0..50)
		calories(size: 0..50)
		carbonation(size: 0..50)
		carbonationtemp(size: 0..50)
		carbonationused(size: 0..50)
		date(size: 0..50)
		displayagetemp(size: 0..50)
		displaybatchsize(size: 0..50)
		displayboilsize(size: 0..50)
		displaycarbtemp(size: 0..50)
		displayfg(size: 0..50)
		displayog(size: 0..50)
		displayprimarytemp(size: 0..50)
		displaysecondarytemp(size: 0..50)
		displaytertiarytemp(size: 0..50)
		efficiency(size: 0..50)
		estabv(size: 0..50)
		estcolor(size: 0..50)
		estfg(size: 0..50)
		estog(size: 0..50)
		fermentationstages(size: 0..50)
		fg(size: 0..50)
		forcecarbonation(size: 0..50)
		ibu(size: 0..50)
		ibumethod(size: 0..50)
		kegprimingfactor(size: 0..50)
		name(size: 0..50)
		notes(size: 0..250)
		og(size: 0..50)
		primaryage(size: 0..50)
		primarytemp(size: 0..50)
		primingsugarequiv(size: 0..50)
		primingsugarname(size: 0..50)
		secondaryage(size: 0..50)
		secondarytemp(size: 0..50)
		tastenotes(size: 0..250)
		tasterating(size: 0..50)
		tertiaryage(size: 0..50)
		tertiarytmp(size: 0..50)
		type(size: 0..50)
		version(size: 0..50)
	}
	String toString() {
		return "${id}" 
	}
}
