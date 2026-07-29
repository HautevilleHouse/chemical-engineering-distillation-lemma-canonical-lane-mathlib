import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure DistillationColumn where
  stages : ℕ
  feedStage : ℕ
  refluxRatio : ℝ
  boilupRatio : ℝ
  pressure : ℝ
  temperature : ℝ

structure DistillationColumnEvidence (C : DistillationColumn) where
  stagesPos : C.stages > 0
  feedStageValid : C.feedStage ≤ C.stages
  refluxNonNeg : C.refluxRatio ≥ 0
  boilupNonNeg : C.boilupRatio ≥ 0
  pressurePos : C.pressure > 0

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse