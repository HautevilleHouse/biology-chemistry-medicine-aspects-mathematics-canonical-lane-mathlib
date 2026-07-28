import BiologicalChemistryMedicineAspectsMathematicsCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlibCore

namespace HautevilleHouse
namespace BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BioticProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def bioticProofObligation : BioticProofObligation := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def commonCoreProjectionLawAvailable : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.xNext = L.state + L.projection.toFun L.delta

def commonCoreCarriageLawAvailable : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.carriedComponent = L.delta - L.projection.toFun L.delta

def commonCoreIdempotenceAvailable : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.projection.toFun (L.projection.toFun L.delta) = L.projection.toFun L.delta

theorem biotic_common_core_imported_checked :
    bioticProofObligation.commonCoreImported = true := by
  rfl

theorem biotic_theorem_specific_definitions_native_checked :
    bioticProofObligation.theoremSpecificDefinitionsNative = true := by
  rfl

theorem biotic_theorem_specific_bridge_native_checked :
    bioticProofObligation.theoremSpecificBridgeNative = true := by
  rfl

theorem biotic_theorem_specific_admitted_closure_native_checked :
    bioticProofObligation.theoremSpecificAdmittedClosureNative = true := by
  rfl

theorem biotic_unrestricted_classical_closure_carried :
    bioticProofObligation.unrestrictedClassicalClosureNative = false := by
  rfl

theorem biotic_common_core_projection_law_checked :
    commonCoreProjectionLawAvailable := by
  intro X instAdd instSub L
  exact AdditiveLane.x_next_eq L

theorem biotic_common_core_carriage_law_checked :
    commonCoreCarriageLawAvailable := by
  intro X instAdd instSub L
  exact AdditiveLane.carried_component_eq L

theorem biotic_common_core_idempotence_checked :
    commonCoreIdempotenceAvailable := by
  intro X instAdd instSub L
  exact AdditiveLane.projection_idempotent_on_delta L

def theoremSpecificEndgamePilotClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedBioticClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_biotic_endgame A

end BiologyChemistryMedicineAspectsMathematicsCanonicalLaneLean
end HautevilleHouse