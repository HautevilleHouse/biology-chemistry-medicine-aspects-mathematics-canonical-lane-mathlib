import HautevilleHouse.BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure BiochemicalNetworkPackage where
  speciesCount : Nat
  reactionCount : Nat
  stoichiometry : Type u
  massConservation : Prop
  detailedBalance : Prop

structure BiochemicalNetworkEvidence (N : BiochemicalNetworkPackage) where
  massConservationClosed : N.massConservation
  detailedBalanceClosed : N.detailedBalance

def BiochemicalNetworkClosed (N : BiochemicalNetworkPackage) : Prop :=
  N.massConservation ∧ N.detailedBalance

theorem biochemical_network_closed_from_evidence (N : BiochemicalNetworkPackage) (E : BiochemicalNetworkEvidence N) : BiochemicalNetworkClosed N := by
  exact And.intro E.massConservationClosed E.detailedBalanceClosed

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse
