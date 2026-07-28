import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure EpidemicModelPackage where
  susceptible : Type u
  infected : Type v
  recovered : Type w
  transmissionRate : Prop
  recoveryRate : Prop

default EpidemicModelPackage where
  susceptible := Unit
  infected := Unit
  recovered := Unit
  transmissionRate := True
  recoveryRate := True

structure EpidemicModelEvidence (E : EpidemicModelPackage) where
  transmissionRateClosed : E.transmissionRate
  recoveryRateClosed : E.recoveryRate

def EpidemicModelClosed (E : EpidemicModelPackage) : Prop :=
  E.transmissionRate ∧ E.recoveryRate

theorem epidemic_model_closed_from_evidence (E : EpidemicModelPackage)
    (Ev : EpidemicModelEvidence E) : EpidemicModelClosed E := by
  exact And.intro Ev.transmissionRateClosed Ev.recoveryRateClosed

structure EpidemicModelAnalyticCertificate (E : EpidemicModelPackage) where
  compartmentRates : Prop
  transmissionDynamics : Prop
  basicReproductiveNumber : Prop
  endemicEquilibrium : Prop
  compartmentRatesClosed : compartmentRates
  transmissionDynamicsClosed : transmissionDynamics
  basicReproductiveNumberClosed : basicReproductiveNumber
  endemicEquilibriumClosed : endemicEquilibrium
  epidemicEvidence : EpidemicModelEvidence E

def EpidemicModelAnalyticCertificateClosed {E : EpidemicModelPackage}
    (C : EpidemicModelAnalyticCertificate E) : Prop :=
  C.compartmentRates ∧ C.transmissionDynamics ∧ C.basicReproductiveNumber ∧ C.endemicEquilibrium ∧ EpidemicModelClosed E

theorem epidemic_model_analytic_certificate_closed {E : EpidemicModelPackage}
    (C : EpidemicModelAnalyticCertificate E) : EpidemicModelAnalyticCertificateClosed C := by
  exact And.intro C.compartmentRatesClosed (And.intro C.transmissionDynamicsClosed
    (And.intro C.basicReproductiveNumberClosed (And.intro C.endemicEquilibriumClosed
      (epidemic_model_closed_from_evidence E C.epidemicEvidence))))

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse