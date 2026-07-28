import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : ℕ
  transferRates : Matrix ℝ n n
  eliminationRates : Vector ℝ n
  initialDose : Vector ℝ n
  concentrationCurve : ℝ → Vector ℝ n
  therapeuticWindow : Prop
  steadyStateCondition : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  therapeuticWindowClosed : C.therapeuticWindow
  steadyStateConditionClosed : C.steadyStateCondition

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.therapeuticWindow ∧ C.steadyStateCondition

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C :=
  And.intro E.therapeuticWindowClosed E.steadyStateConditionClosed

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse