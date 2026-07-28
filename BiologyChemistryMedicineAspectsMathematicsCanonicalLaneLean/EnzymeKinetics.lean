import canonicalLaneMathlib.AdmissibleClass
import BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean.BiomedicalAdmittedObject

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure MichaelisMentenModel where
  substrateConcentration : ℝ → ℝ
  enzymeConcentration : ℝ
  kM : ℝ
  vMax : ℝ
  steadyStateApproximation : Prop
  rateEquationValid : Prop

structure MichaelisMentenEvidence (M : MichaelisMentenModel) where
  steadyStateApproximationClosed : M.steadyStateApproximation
  rateEquationValidClosed : M.rateEquationValid

def MichaelisMentenClosed (M : MichaelisMentenModel) : Prop :=
  M.steadyStateApproximation ∧ M.rateEquationValid

theorem michaelis_menten_closed_from_evidence (M : MichaelisMentenModel)
    (E : MichaelisMentenEvidence M) : MichaelisMentenClosed M := by
  exact And.intro E.steadyStateApproximationClosed E.rateEquationValidClosed

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse