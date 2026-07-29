import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.MassTransferStageModel

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure PackedColumnPackage {V : VaporLiquidEquilibriumPackage} {M : MassTransferStagePackage V} where
  packingType : Type u
  heightEquivalentToTheoreticalPlate : Prop
  pressureDrop : Prop
  floodingVelocity : Prop

def PackedColumnClosed {V : VaporLiquidEquilibriumPackage} {M : MassTransferStagePackage V} (P : PackedColumnPackage V M) : Prop :=
  P.heightEquivalentToTheoreticalPlate ∧ P.floodingVelocity

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse