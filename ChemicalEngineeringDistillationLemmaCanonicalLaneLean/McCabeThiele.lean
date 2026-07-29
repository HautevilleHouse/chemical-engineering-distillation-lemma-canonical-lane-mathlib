import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure McCabeThielePackage where
  equilibriumCurve : ℝ → ℝ
  operatingLines : OperatingLinesPackage
  stagetoStage : ℕ → ℝ
  productPurity : ℝ

structure McCabeThieleEvidence (M : McCabeThielePackage) where
  rectifyingStages : ∀ n : ℕ, M.stagetoStage n ≥ 0
  strippingStages : ∀ n : ℕ, M.stagetoStage n ≥ 0
  purityBound : M.productPurity ≥ 0.95

def McCabeThieleClosed (M : McCabeThielePackage) : Prop :=
  (∀ n : ℕ, M.stagetoStage n ≥ 0) ∧ M.productPurity ≥ 0.95

theorem mccabe_thiele_closed_from_evidence (M : McCabeThielePackage)
    (E : McCabeThieleEvidence M) : McCabeThieleClosed M := by
  exact And.intro (fun n => E.rectifyingStages n) E.purityBound

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse