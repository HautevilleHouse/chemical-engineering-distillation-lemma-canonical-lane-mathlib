import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.ColumnDesignMcCabeThiele

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure CondenserReboilerEnergyPackage {V : VaporLiquidEquilibriumPackage} {M : MassTransferStagePackage V} {C : McCabeThieleDesignPackage V M} where
  condenserDuty : Prop
  reboilerDuty : Prop
  coolingWaterFlow : Prop
  steamFlow : Prop
  energyBalanceClosed : Prop

def CondenserReboilerEnergyClosed {V : VaporLiquidEquilibriumPackage} {M : MassTransferStagePackage V} {C : McCabeThieleDesignPackage V M} (E : CondenserReboilerEnergyPackage V M C) : Prop :=
  E.condenserDuty ∧ E.reboilerDuty ∧ E.energyBalanceClosed

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse