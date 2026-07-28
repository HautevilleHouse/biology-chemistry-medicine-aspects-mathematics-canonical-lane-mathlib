import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure PharmacokineticsPackage where
  compartmentModel : Prop
  absorptionRate : Prop
  eliminationRate : Prop
  dosingRegimen : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  compartmentModelClosed : P.compartmentModel
  absorptionRateClosed : P.absorptionRate
  eliminationRateClosed : P.eliminationRate
  dosingRegimenClosed : P.dosingRegimen

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.compartmentModel ∧ P.absorptionRate ∧ P.eliminationRate ∧ P.dosingRegimen

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage) (E : PharmacokineticsEvidence P) :
    PharmacokineticsClosed P := by
  exact And.intro E.compartmentModelClosed (And.intro E.absorptionRateClosed (And.intro E.eliminationRateClosed E.dosingRegimenClosed))

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse