import ChemicalEngineeringDistillationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure DistillationColumnPackage where
  numberOfStages : Nat
  feedStage : Nat
  refluxRatio : ℚ
  distillateComposition : ℚ → ℚ
  bottomComposition : ℚ → ℚ

structure ComponentMaterialBalance where
  liquidFlowRates : ℚ
  vaporFlowRates : ℚ
  liquidComposition : ℚ
  vaporComposition : ℚ

structure EquilibriumRelationship where
  relativeVolatility : ℚ
  equilibriumCurve : ℚ → ℚ

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse