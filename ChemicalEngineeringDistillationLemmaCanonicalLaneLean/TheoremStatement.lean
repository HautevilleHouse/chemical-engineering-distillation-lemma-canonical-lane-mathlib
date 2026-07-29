import ChemicalEngineeringDistillationLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure DistillationLemmaObject where
  vaporLiquidEquilibrium : Prop
  numberTheoreticalStages : Prop
  refluxRatio : Prop
  feedConditions : Prop
  conclusion : vaporLiquidEquilibrium ∧ numberTheoreticalStages ∧ refluxRatio ∧ feedConditions

def DistillationLemmaClosed (O : DistillationLemmaObject) : Prop :=
  O.vaporLiquidEquilibrium ∧ O.numberTheoreticalStages ∧ O.refluxRatio ∧ O.feedConditions

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse