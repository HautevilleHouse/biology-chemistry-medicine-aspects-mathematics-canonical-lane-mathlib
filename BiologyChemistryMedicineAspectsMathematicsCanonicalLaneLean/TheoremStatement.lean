import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  carriedRemainder : String

def sourceRepository : String :=
  "BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean"

def sourceDescription : String :=
  "Biology-Chemistry-Medicine Aspects Mathematics"

def baselineCertificateLane : String :=
  "manifold_constrained"

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := "available",
    constrainedStatement := "constrained bridge closure met",
    carriedRemainder := "none"
  }

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse
