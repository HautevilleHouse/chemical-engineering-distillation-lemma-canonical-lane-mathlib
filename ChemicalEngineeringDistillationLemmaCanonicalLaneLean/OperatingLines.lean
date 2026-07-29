import ChemicalEngineeringDistillationLemmaCanonicalLaneLean.DistillationColumnConstruction

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure OperatingLinesPackage where
  rectifyingOperatingLine : ℚ → ℚ
  strippingOperatingLine : ℚ → ℚ
  feedLine : ℚ → ℚ

def OperatingLinesClosed (O : OperatingLinesPackage) : Prop :=
  (∀ x : ℚ, O.rectifyingOperatingLine x = (C.refluxRatio / (C.refluxRatio + 1)) * x + (1 / (C.refluxRatio + 1)) * C.distillateComposition x) ∧
  (∀ x : ℚ, O.strippingOperatingLine x = ((Lb + 1) / Lb) * x - (1 / Lb) * C.bottomComposition x) ∧
    where Lb : ℚ := 0

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse