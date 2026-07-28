import BiologicalChemistryMedicineAspectsMathematicsCanonicalLaneLean.EpidemiologicalAnalyticProof

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure EpidemicModelEvidenceTerms {E : EpidemicModelPackage}
    (C : EpidemicModelAnalyticCertificate E) where
  compartmentRates : C.compartmentRates
  transmissionDynamics : C.transmissionDynamics
  basicReproductiveNumber : C.basicReproductiveNumber
  endemicEquilibrium : C.endemicEquilibrium
  epidemicClosed : EpidemicModelClosed E

def EpidemicModelAnalyticCertificate.evidenceTerms {E : EpidemicModelPackage}
    (C : EpidemicModelAnalyticCertificate E) : EpidemicModelEvidenceTerms C := {
  compartmentRates := C.compartmentRatesClosed
  transmissionDynamics := C.transmissionDynamicsClosed
  basicReproductiveNumber := C.basicReproductiveNumberClosed
  endemicEquilibrium := C.endemicEquilibriumClosed
  epidemicClosed := epidemic_model_closed_from_evidence E C.epidemicEvidence
}

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse