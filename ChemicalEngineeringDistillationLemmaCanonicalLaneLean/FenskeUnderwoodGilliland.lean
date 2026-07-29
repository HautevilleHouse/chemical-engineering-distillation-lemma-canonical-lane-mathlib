import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure FenskeEquation where
  alpha : ℚ
  distillateComposition : ℚ
  bottomsComposition : ℚ
  minimumStages : ℚ
  minimumStagesCalculated : minimumStages = log((distillateComposition / (1 - distillateComposition)) / (bottomsComposition / (1 - bottomsComposition))) / log(alpha)

structure UnderwoodEquation where
  alpha : ℚ
  feedComposition : ℚ
  q : ℚ
  theta : ℚ
  equation : (alpha * feedComposition) / (alpha - theta) + (1 - alpha) * (1 - feedComposition) / (1 - theta) = 1 - q

structure GillilandCorrelation where
  minimumRefluxRatio : ℚ
  actualRefluxRatio : ℚ
  minimumStages : ℚ
  actualStages : ℚ
  correlation : (actualStages - minimumStages) / (actualStages + 1) = 1 - exp(((1 + 54.4 * X) / (11 + 117.2 * X)) * ((X - 1) / X))
    where X := (actualRefluxRatio - minimumRefluxRatio) / (actualRefluxRatio + 1)

structure FenskeUnderwoodGillilandPackage where
  fenske : FenskeEquation
  underwood : UnderwoodEquation
  gilliland : GillilandCorrelation

structure FenskeUnderwoodGillilandEvidence (F : FenskeUnderwoodGillilandPackage) where
  fenskeClosed : F.fenske.minimumStagesCalculated
  underwoodClosed : F.underwood.equation
  gillilandClosed : F.gilliland.correlation

def FenskeUnderwoodGillilandClosed (F : FenskeUnderwoodGillilandPackage) : Prop :=
  F.fenske.minimumStagesCalculated ∧ F.underwood.equation ∧ F.gilliland.correlation

theorem fenske_underwood_gilliland_closed_from_evidence (F : FenskeUnderwoodGillilandPackage)
    (E : FenskeUnderwoodGillilandEvidence F) : FenskeUnderwoodGillilandClosed F := by
  exact And.intro E.fenskeClosed (And.intro E.underwoodClosed E.gillilandClosed)

end HautevilleHouse
end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
