import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.MassTransferStageModel

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure McCabeThieleDesignPackage {V : VaporLiquidEquilibriumPackage} {M : MassTransferStagePackage V} where
  rectifyingSection : Prop
  strippingSection : Prop
  feedLine : Prop
  minimumRefluxRatio : Prop
  numberOfTheoreticalStages : Prop

def McCabeThieleDesignClosed {V : VaporLiquidEquilibriumPackage} {M : MassTransferStagePackage V} (C : McCabeThieleDesignPackage V M) : Prop :=
  C.rectifyingSection ∧ C.strippingSection ∧ C.feedLine ∧ C.minimumRefluxRatio ∧ C.numberOfTheoreticalStages

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse