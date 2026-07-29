import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.DistillationColumnPackage

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure McCabeThieleConstruction (D : DistillationColumnPackage) where
  rectifyingLine : ℚ → ℚ
  strippingLine : ℚ → ℚ
  qLine : ℚ → ℚ
  intersectionPoint : ℚ × ℚ
  operatingLinesConsistent : Prop
  rectifyingLineDefined : rectifyingLine
  strippingLineDefined : strippingLine
  qLineDefined : qLine
  intersectionPointFound : intersectionPoint
  operatingLinesConsistentClosed : operatingLinesConsistent

structure McCabeThieleEvidence {D : DistillationColumnPackage}
    (M : McCabeThieleConstruction D) where
  rectifyingLineClosed : M.rectifyingLineDefined
  strippingLineClosed : M.strippingLineDefined
  qLineClosed : M.qLineDefined
  intersectionPointClosed : M.intersectionPointFound
  operatingLinesConsistentClosed : M.operatingLinesConsistentClosed

def McCabeThieleClosed {D : DistillationColumnPackage}
    (M : McCabeThieleConstruction D) : Prop :=
  M.rectifyingLineDefined ∧ M.strippingLineDefined ∧
  M.qLineDefined ∧ M.intersectionPointFound ∧
  M.operatingLinesConsistentClosed

theorem mccabe_thiele_closed_from_evidence
    {D : DistillationColumnPackage} (M : McCabeThieleConstruction D)
    (E : McCabeThieleEvidence M) : McCabeThieleClosed M := by
  exact And.intro E.rectifyingLineClosed
    (And.intro E.strippingLineClosed
      (And.intro E.qLineClosed
        (And.intro E.intersectionPointClosed
          E.operatingLinesConsistentClosed)))

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse