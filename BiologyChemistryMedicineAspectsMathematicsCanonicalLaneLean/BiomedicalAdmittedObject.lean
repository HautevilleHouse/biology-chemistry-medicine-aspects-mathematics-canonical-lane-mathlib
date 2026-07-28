import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure BiomedicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BiomedicalAdmittedObject where
  space : BiomedicalSpace
  systemEquations : Prop
  stationarySolution : Prop
  stabilityProperty : Prop
  conclusion : Prop

def BiomedicalWitnessClosed (O : BiomedicalAdmittedObject) : Prop :=
  O.conclusion

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse