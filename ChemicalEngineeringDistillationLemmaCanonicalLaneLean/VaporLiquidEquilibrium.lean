import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure VaporLiquidEquilibriumPackage where
  temperature : Type u
  pressure : Type v
  liquidComposition : Type w
  vaporComposition : Type x
  equilibriumConstant : Type y
  raoultsLawValid : Prop
  modifiedRaoultsLawValid : Prop
  activityCoefficientModelDefined : Prop
  kValueCorrelationDefined : Prop

def VaporLiquidEquilibriumClosed (V : VaporLiquidEquilibriumPackage) : Prop :=
  V.raoultsLawValid ∧ V.modifiedRaoultsLawValid ∧ V.activityCoefficientModelDefined ∧ V.kValueCorrelationDefined

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse