import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure BioticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BioticAdmittedObject where
  space : BioticSpace
  ecosystemStable : Prop
  populationBounded : Prop
  carryingCapacity : Type
  capacityTopology : TopologicalSpace carryingCapacity
  capacitySatisfied : Prop
  conclusion : capacitySatisfied

structure BioticEndgameState where
  object : BioticAdmittedObject

def BioticWitnessClosed (O : BioticAdmittedObject) : Prop :=
  O.capacitySatisfied

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse