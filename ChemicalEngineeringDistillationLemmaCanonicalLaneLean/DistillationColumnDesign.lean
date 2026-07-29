import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.DistillationPhaseEquilibrium

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure ColumnDesignPackage {P : PhaseEquilibriumPackage} (Q : PhaseEquilibriumEvidence P) where
  numberOfStages : Nat
  feedStage : Nat
  refluxRatio : ℝ
  vaporFlowRate : ℝ
  liquidFlowRate : ℝ
  diameter : ℝ
  height : ℝ
  designConverged : Prop
  designConvergedClosed : designConverged

structure ColumnDesignEvidence {P : PhaseEquilibriumPackage} {Q : PhaseEquilibriumEvidence P}
    (C : ColumnDesignPackage Q) where
  numberOfStagesValid : C.numberOfStages > 0
  feedStageValid : C.feedStage > 0 ∧ C.feedStage ≤ C.numberOfStages
  refluxRatioPositive : C.refluxRatio > 0
  vaporFlowRatePositive : C.vaporFlowRate > 0
  liquidFlowRatePositive : C.liquidFlowRate > 0
  designConvergedClosed : C.designConverged

def ColumnDesignClosed {P : PhaseEquilibriumPackage} {Q : PhaseEquilibriumEvidence P}
    (C : ColumnDesignPackage Q) : Prop :=
  C.designConverged ∧ C.refluxRatio > 0 ∧ C.numberOfStages > 0

theorem column_design_closed_from_evidence {P : PhaseEquilibriumPackage}
    {Q : PhaseEquilibriumEvidence P} (C : ColumnDesignPackage Q)
    (E : ColumnDesignEvidence C) : ColumnDesignClosed C := by
  exact And.intro E.designConvergedClosed
    (And.intro E.refluxRatioPositive E.numberOfStagesValid)

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse