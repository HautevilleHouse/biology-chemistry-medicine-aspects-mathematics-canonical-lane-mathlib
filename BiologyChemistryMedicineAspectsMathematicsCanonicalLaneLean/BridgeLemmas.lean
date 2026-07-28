import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedClass.bridgeClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.bridgeEvidence

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse