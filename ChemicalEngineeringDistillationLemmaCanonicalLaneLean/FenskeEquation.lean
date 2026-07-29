import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.DistillationColumnPackage

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure FenskeEquation (D : DistillationColumnPackage) where
  minimumStages : ℕ
  relativeVolatility : ℚ
  distillateComposition : ℚ
  bottomsComposition : ℚ
  fenskeFormula : Prop
  minimumStagesComputed : fenskeFormula
  formulaCorrect : minimumStages = (Nat.ceil ((log (distillateComposition / bottomsComposition)) / (log relativeVolatility)))

def FenskeClosed {D : DistillationColumnPackage} (F : FenskeEquation D) : Prop :=
  F.fenskeFormula

theorem fenske_closed {D : DistillationColumnPackage} (F : FenskeEquation D) :
    FenskeClosed F := by
  exact F.minimumStagesComputed

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse