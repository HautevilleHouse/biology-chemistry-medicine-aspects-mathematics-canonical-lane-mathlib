import HautevilleHouse.BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure EpidemicModelPackage where
  populationSize : Nat
  transmissionRate : ℝ
  recoveryRate : ℝ
  basicReproductiveNumber : ℝ
  diseaseFreeEquilibrium : Prop
  endemicEquilibrium : Prop

structure EpidemicModelEvidence (M : EpidemicModelPackage) where
  diseaseFreeEquilibriumClosed : M.diseaseFreeEquilibrium
  endemicEquilibriumClosed : M.endemicEquilibrium

def EpidemicModelClosed (M : EpidemicModelPackage) : Prop :=
  M.diseaseFreeEquilibrium ∧ M.endemicEquilibrium

theorem epidemic_model_closed_from_evidence (M : EpidemicModelPackage) (E : EpidemicModelEvidence M) : EpidemicModelClosed M := by
  exact And.intro E.diseaseFreeEquilibriumClosed E.endemicEquilibriumClosed

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse
