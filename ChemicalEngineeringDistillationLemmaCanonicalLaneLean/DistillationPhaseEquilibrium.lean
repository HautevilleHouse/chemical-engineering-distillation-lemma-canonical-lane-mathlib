import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure PhaseEquilibriumPackage where
  vaporPhaseModel : Type u
  liquidPhaseModel : Type v
  equilibriumConstant : Type w
  temperatureDependence : Prop
  pressureDependence : Prop
  activityCoefficientModel : Prop
  fugacityCoefficientModel : Prop

structure PhaseEquilibriumEvidence (P : PhaseEquilibriumPackage) where
  temperatureDependenceClosed : P.temperatureDependence
  pressureDependenceClosed : P.pressureDependence
  activityCoefficientModelClosed : P.activityCoefficientModel
  fugacityCoefficientModelClosed : P.fugacityCoefficientModel

def PhaseEquilibriumClosed (P : PhaseEquilibriumPackage) : Prop :=
  P.temperatureDependence ∧ P.pressureDependence ∧
  P.activityCoefficientModel ∧ P.fugacityCoefficientModel

theorem phase_equilibrium_closed_from_evidence (P : PhaseEquilibriumPackage)
    (E : PhaseEquilibriumEvidence P) : PhaseEquilibriumClosed P := by
  exact And.intro E.temperatureDependenceClosed
    (And.intro E.pressureDependenceClosed
      (And.intro E.activityCoefficientModelClosed E.fugacityCoefficientModelClosed))

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse