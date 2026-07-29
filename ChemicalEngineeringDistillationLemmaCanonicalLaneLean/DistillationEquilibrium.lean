import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure DistillationColumn where
  stages : Nat
  feedStage : Nat
  refluxRatio : ℚ
  distillateRate : ℚ
  bottomsRate : ℚ

structure VaporLiquidEquilibrium where
  relativeVolatility : ℚ
  alpha : ℚ
  equilibriumRelation : ℚ → ℚ
  equilibriumRelationDefined : ∀ x : ℚ, equilibriumRelation x = (alpha * x) / (1 + (alpha - 1) * x)

structure DistillationEquilibriumPackage where
  column : DistillationColumn
  equilibrium : VaporLiquidEquilibrium
  operatingLine : ℚ → ℚ
  operatingLineDefined : ∀ x : ℚ, operatingLine x = (refluxRatio / (refluxRatio + 1)) * x + (distillateRate / (refluxRatio + 1))
    where
      refluxRatio := column.refluxRatio
      distillateRate := column.distillateRate
  feedLine : ℚ → ℚ
  feedLineDefined : ∀ x : ℚ, feedLine x = (someFunction x) -- simplified

structure DistillationEquilibriumEvidence (D : DistillationEquilibriumPackage) where
  equilibriumRelationClosed : D.equilibrium.equilibriumRelationDefined
  operatingLineClosed : D.operatingLineDefined
  feedLineClosed : D.feedLineDefined

def DistillationEquilibriumClosed (D : DistillationEquilibriumPackage) : Prop :=
  D.equilibrium.equilibriumRelationDefined ∧ D.operatingLineDefined ∧ D.feedLineDefined

theorem distillation_equilibrium_closed_from_evidence (D : DistillationEquilibriumPackage)
    (E : DistillationEquilibriumEvidence D) : DistillationEquilibriumClosed D := by
  exact And.intro E.equilibriumRelationClosed (And.intro E.operatingLineClosed E.feedLineClosed)

end HautevilleHouse
end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
