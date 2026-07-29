import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.ColumnDesignMcCabeThiele
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.EnergyBalanceCondenserReboiler

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure ColumnSizingPackage {V : VaporLiquidEquilibriumPackage} {M : MassTransferStagePackage V} {C : McCabeThieleDesignPackage V M} {E : CondenserReboilerEnergyPackage V M C} where
  columnDiameter : Prop
  columnHeight : Prop
  traySpacing : Prop
  downcomerDesign : Prop
  mechanicalDesign : Prop

def ColumnSizingClosed {V : VaporLiquidEquilibriumPackage} {M : MassTransferStagePackage V} {C : McCabeThieleDesignPackage V M} {E : CondenserReboilerEnergyPackage V M C} (S : ColumnSizingPackage V M C E) : Prop :=
  S.columnDiameter ∧ S.columnHeight ∧ S.mechanicalDesign

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse