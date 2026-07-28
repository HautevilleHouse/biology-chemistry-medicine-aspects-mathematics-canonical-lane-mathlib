import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  payoffMatrix : Prop
  replicatorDynamics : Prop
  essCondition : Prop
  mutationSelection : Prop

structure EvolutionaryGameTheoryEvidence (G : EvolutionaryGameTheoryPackage) where
  payoffMatrixClosed : G.payoffMatrix
  replicatorDynamicsClosed : G.replicatorDynamics
  essConditionClosed : G.essCondition
  mutationSelectionClosed : G.mutationSelection

def EvolutionaryGameTheoryClosed (G : EvolutionaryGameTheoryPackage) : Prop :=
  G.payoffMatrix ∧ G.replicatorDynamics ∧ G.essCondition ∧ G.mutationSelection

theorem evolutionary_game_theory_closed_from_evidence (G : EvolutionaryGameTheoryPackage) (E : EvolutionaryGameTheoryEvidence G) :
    EvolutionaryGameTheoryClosed G := by
  exact And.intro E.payoffMatrixClosed (And.intro E.replicatorDynamicsClosed (And.intro E.essConditionClosed E.mutationSelectionClosed))

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse