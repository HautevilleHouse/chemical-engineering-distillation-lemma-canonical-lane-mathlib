import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.VaporLiquidEquilibrium

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure MassTransferStagePackage {V : VaporLiquidEquilibriumPackage} where
  stageEfficiency : Type u
  murphreeEfficiency : Prop
  vaporFlow : Type v
  liquidFlow : Type w
  heatTransfer : Prop
  operatingLineValid : Prop

def MassTransferStageClosed {V : VaporLiquidEquilibriumPackage} (M : MassTransferStagePackage V) : Prop :=
  M.murphreeEfficiency ∧ M.operatingLineValid

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse