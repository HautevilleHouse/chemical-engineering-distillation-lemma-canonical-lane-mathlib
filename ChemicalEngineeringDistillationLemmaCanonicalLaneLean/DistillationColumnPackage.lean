import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure DistillationColumnPackage where
  numberOfStages : Nat
  feedStage : Nat
  refluxRatio : ℚ
  boilupRatio : ℚ
  relativeVolatility : ℚ
  feedComposition : ℚ → ℚ
  operatingLines : Prop
  equilibriumCurve : ℚ → ℚ
  materialBalance : Prop
  operatingLinesDefined : operatingLines
  equilibriumCurveDefined : equilibriumCurve
  materialBalanceClosed : materialBalance

structure DistillationColumnEvidence (D : DistillationColumnPackage) where
  operatingLinesClosed : D.operatingLines
  materialBalanceClosed : D.materialBalance

def DistillationColumnClosed (D : DistillationColumnPackage) : Prop :=
  D.operatingLines ∧ D.materialBalance

theorem distillation_column_closed_from_evidence
    (D : DistillationColumnPackage) (E : DistillationColumnEvidence D) :
    DistillationColumnClosed D := by
  exact And.intro E.operatingLinesClosed E.materialBalanceClosed

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse