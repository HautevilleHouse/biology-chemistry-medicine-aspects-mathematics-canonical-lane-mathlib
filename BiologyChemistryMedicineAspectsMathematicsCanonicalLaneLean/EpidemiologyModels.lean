import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure SIRModelPackage where
  infectionRate : ℝ
  recoveryRate : ℝ
  initialSusceptible : ℝ
  initialInfected : ℝ
  initialRecovered : ℝ
  basicReproNumber : ℝ
  thresholdCondition : Prop

structure SIRModelEvidence (S : SIRModelPackage) where
  basicReproNumberClosed : S.basicReproNumber > 0
  thresholdConditionClosed : S.thresholdCondition

def SIRModelClosed (S : SIRModelPackage) : Prop :=
  S.basicReproNumber > 0 ∧ S.thresholdCondition

theorem sir_model_closed_from_evidence (S : SIRModelPackage)
    (E : SIRModelEvidence S) : SIRModelClosed S :=
  And.intro E.basicReproNumberClosed E.thresholdConditionClosed

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse