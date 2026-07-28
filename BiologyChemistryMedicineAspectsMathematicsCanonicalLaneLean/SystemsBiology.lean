import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure FluxBalanceAnalysisPackage where
  stoichiometricMatrix : Matrix ℝ m n
  objectiveCoefficients : Vector ℝ n
  fluxBounds : Vector (ℝ × ℝ) n
  optimalFlux : Vector ℝ n
  feasibilityCondition : Prop
  optimalityCondition : Prop

structure FluxBalanceAnalysisEvidence (F : FluxBalanceAnalysisPackage) where
  feasibilityConditionClosed : F.feasibilityCondition
  optimalityConditionClosed : F.optimalityCondition

def FluxBalanceAnalysisClosed (F : FluxBalanceAnalysisPackage) : Prop :=
  F.feasibilityCondition ∧ F.optimalityCondition

theorem flux_balance_analysis_closed_from_evidence (F : FluxBalanceAnalysisPackage)
    (E : FluxBalanceAnalysisEvidence F) : FluxBalanceAnalysisClosed F :=
  And.intro E.feasibilityConditionClosed E.optimalityConditionClosed

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse