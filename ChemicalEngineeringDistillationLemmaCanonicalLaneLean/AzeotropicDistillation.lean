import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.VaporLiquidEquilibrium

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure AzeotropicDistillationPackage {V : VaporLiquidEquilibriumPackage} where
  azeotropeComposition : Prop
  pressureSwingFeasibility : Prop
  entrainerSelection : Prop
  residueCurveMap : Prop

def AzeotropicDistillationClosed {V : VaporLiquidEquilibriumPackage} (A : AzeotropicDistillationPackage V) : Prop :=
  A.azeotropeComposition ∧ A.entrainerSelection

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse