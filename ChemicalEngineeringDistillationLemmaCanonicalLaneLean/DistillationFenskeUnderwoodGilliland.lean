import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.DistillationPhaseEquilibrium

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure FenskeUnderwoodGillilandPackage {P : PhaseEquilibriumPackage}
    (Q : PhaseEquilibriumEvidence P) where
  minimumRefluxRatio : ℝ
  minimumNumberOfStages : ℕ
  actualNumberOfStages : ℕ
  gillilandCorrelation : ℝ → ℝ
  feedQuality : ℝ
  relativeVolatility : ℝ
  lightKeyRecovery : ℝ
  heavyKeyRecovery : ℝ

structure FUGEvidence {P : PhaseEquilibriumPackage} {Q : PhaseEquilibriumEvidence P}
    (F : FenskeUnderwoodGillilandPackage Q) where
  minimumRefluxComputed : F.minimumRefluxRatio > 0
  minimumStagesComputed : F.minimumNumberOfStages > 0
  actualStagesValid : F.actualNumberOfStages > 0
  relativeVolatilityPositive : F.relativeVolatility > 1
  recoveriesValid : F.lightKeyRecovery > 0 ∧ F.lightKeyRecovery < 1 ∧
                   F.heavyKeyRecovery > 0 ∧ F.heavyKeyRecovery < 1

def FUGClosed {P : PhaseEquilibriumPackage} {Q : PhaseEquilibriumEvidence P}
    (F : FenskeUnderwoodGillilandPackage Q) : Prop :=
  F.minimumRefluxRatio > 0 ∧ F.minimumNumberOfStages > 0 ∧
  F.actualNumberOfStages > 0 ∧ F.relativeVolatility > 1

theorem fug_closed_from_evidence {P : PhaseEquilibriumPackage}
    {Q : PhaseEquilibriumEvidence P} (F : FenskeUnderwoodGillilandPackage Q)
    (E : FUGEvidence F) : FUGClosed F := by
  exact And.intro E.minimumRefluxComputed
    (And.intro E.minimumStagesComputed
      (And.intro E.actualStagesValid E.relativeVolatilityPositive))

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse