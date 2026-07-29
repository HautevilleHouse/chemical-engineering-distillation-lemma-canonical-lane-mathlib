import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.DistillationPhaseEquilibrium

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure RateBasedModelPackage {P : PhaseEquilibriumPackage}
    (Q : PhaseEquilibriumEvidence P) where
  massTransferCoefficients : ℝ → ℝ
  heatTransferCoefficients : ℝ → ℝ
  interfacialArea : ℝ
  filmThickness : ℝ
  diffusivity : ℝ
  viscosity : ℝ
  surfaceTension : ℝ
  rateEquationsConverged : Prop
  rateEquationsConvergedClosed : rateEquationsConverged

structure RateBasedModelEvidence {P : PhaseEquilibriumPackage}
    {Q : PhaseEquilibriumEvidence P} (R : RateBasedModelPackage Q) where
  massTransferPositive : ∀ x, R.massTransferCoefficients x > 0
  heatTransferPositive : ∀ x, R.heatTransferCoefficients x > 0
  interfacialAreaPositive : R.interfacialArea > 0
  filmThicknessPositive : R.filmThickness > 0
  diffusivityPositive : R.diffusivity > 0
  viscosityPositive : R.viscosity > 0
  rateEquationsConvergedClosed : R.rateEquationsConverged

def RateBasedModelClosed {P : PhaseEquilibriumPackage}
    {Q : PhaseEquilibriumEvidence P} (R : RateBasedModelPackage Q) : Prop :=
  R.rateEquationsConverged ∧ R.interfacialArea > 0

theorem rate_based_model_closed_from_evidence {P : PhaseEquilibriumPackage}
    {Q : PhaseEquilibriumEvidence P} (R : RateBasedModelPackage Q)
    (E : RateBasedModelEvidence R) : RateBasedModelClosed R := by
  exact And.intro E.rateEquationsConvergedClosed E.interfacialAreaPositive

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse