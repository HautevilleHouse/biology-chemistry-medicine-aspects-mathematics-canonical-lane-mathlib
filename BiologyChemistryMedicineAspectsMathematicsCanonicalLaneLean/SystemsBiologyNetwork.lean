import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

structure SystemsBiologyNetworkPackage where
  networkTopology : Prop
  fluxBalance : Prop
  regulatoryLoops : Prop
  steadyState : Prop

structure SystemsBiologyNetworkEvidence (N : SystemsBiologyNetworkPackage) where
  networkTopologyClosed : N.networkTopology
  fluxBalanceClosed : N.fluxBalance
  regulatoryLoopsClosed : N.regulatoryLoops
  steadyStateClosed : N.steadyState

def SystemsBiologyNetworkClosed (N : SystemsBiologyNetworkPackage) : Prop :=
  N.networkTopology ∧ N.fluxBalance ∧ N.regulatoryLoops ∧ N.steadyState

theorem systems_biology_network_closed_from_evidence (N : SystemsBiologyNetworkPackage) (E : SystemsBiologyNetworkEvidence N) :
    SystemsBiologyNetworkClosed N := by
  exact And.intro E.networkTopologyClosed (And.intro E.fluxBalanceClosed (And.intro E.regulatoryLoopsClosed E.steadyStateClosed))

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse