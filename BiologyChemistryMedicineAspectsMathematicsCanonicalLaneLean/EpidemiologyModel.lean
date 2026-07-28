import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure EpidemiologyModelPackage where
  compartmentStructure : Prop
  transmissionRates : Prop
  recoveryRates : Prop
  equilibriumAnalysis : Prop

structure EpidemiologyModelEvidence (E : EpidemiologyModelPackage) where
  compartmentStructureClosed : E.compartmentStructure
  transmissionRatesClosed : E.transmissionRates
  recoveryRatesClosed : E.recoveryRates
  equilibriumAnalysisClosed : E.equilibriumAnalysis

def EpidemiologyModelClosed (E : EpidemiologyModelPackage) : Prop :=
  E.compartmentStructure ∧ E.transmissionRates ∧ E.recoveryRates ∧ E.equilibriumAnalysis

theorem epidemiology_model_closed_from_evidence (E : EpidemiologyModelPackage) (Ev : EpidemiologyModelEvidence E) :
    EpidemiologyModelClosed E := by
  exact And.intro Ev.compartmentStructureClosed (And.intro Ev.transmissionRatesClosed (And.intro Ev.recoveryRatesClosed Ev.equilibriumAnalysisClosed))

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse