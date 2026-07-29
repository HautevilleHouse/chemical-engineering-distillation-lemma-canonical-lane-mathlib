import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure FenskeEquationPackage where
  relativeVolatility : ℝ
  productPurity : ℝ
  bottomsPurity : ℝ
  minimumStages : ℕ

structure UnderwoodEquationPackage where
  feedQuality : ℝ
  minimumReflux : ℝ
  pinchPoint : ℝ

structure FenskeUnderwoodEvidence (F : FenskeEquationPackage) (U : UnderwoodEquationPackage) where
  fenskeValid : F.minimumStages > 0
  underwoodValid : U.minimumReflux ≥ 0
  pinchValid : U.pinchPoint ≥ 0 ∧ U.pinchPoint ≤ 1

def FenskeUnderwoodClosed (F : FenskeEquationPackage) (U : UnderwoodEquationPackage) : Prop :=
  F.minimumStages > 0 ∧ U.minimumReflux ≥ 0 ∧ U.pinchPoint ≥ 0 ∧ U.pinchPoint ≤ 1

theorem fenske_underwood_closed_from_evidence (F : FenskeEquationPackage) (U : UnderwoodEquationPackage)
    (E : FenskeUnderwoodEvidence F U) : FenskeUnderwoodClosed F U := by
  exact And.intro E.fenskeValid (And.intro E.underwoodValid (And.intro E.pinchValid.1 E.pinchValid.2))

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse