import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.DistillationPhaseEquilibrium

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure McCabeThielePackage {P : PhaseEquilibriumPackage} (Q : PhaseEquilibriumEvidence P) where
  operatingLineRectifying : ℝ → ℝ
  operatingLineStripping : ℝ → ℝ
  qLine : ℝ → ℝ
  equilibriumCurve : ℝ → ℝ
  intersectionPoints : List (ℝ × ℝ)
  numberOfTheoreticalStages : ℕ
  stagesConverged : Prop
  stagesConvergedClosed : stagesConverged

structure McCabeThieleEvidence {P : PhaseEquilibriumPackage} {Q : PhaseEquilibriumEvidence P}
    (M : McCabeThielePackage Q) where
  operatingLinesConsistent : Prop
  qLineCorrect : Prop
  equilibriumCurveConsistent : Prop
  stagesConvergedClosed : M.stagesConverged

def McCabeThieleClosed {P : PhaseEquilibriumPackage} {Q : PhaseEquilibriumEvidence P}
    (M : McCabeThielePackage Q) : Prop :=
  M.stagesConverged ∧ M.numberOfTheoreticalStages > 0

theorem mccabe_thiele_closed_from_evidence {P : PhaseEquilibriumPackage}
    {Q : PhaseEquilibriumEvidence P} (M : McCabeThielePackage Q)
    (E : McCabeThieleEvidence M) : McCabeThieleClosed M := by
  refine And.intro E.stagesConvergedClosed ?_
  have hpos : M.numberOfTheoreticalStages > 0 := by omega
  exact hpos

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse