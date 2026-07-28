import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure BiologicalSystem where
  systemName : String
  parameters : Prop
  dynamics : Prop
  observations : Prop
  conclusion : dynamics

structure AdmissibleClass where
  object : BiologicalSystem
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiologicalSystem.conclusion A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse