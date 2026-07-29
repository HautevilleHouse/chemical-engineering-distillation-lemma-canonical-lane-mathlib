import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure EnthalpyData where
  liquidEnthalpy : ℚ → ℚ
  vaporEnthalpy : ℚ → ℚ
  enthalpyDefined : ∀ x : ℚ, liquidEnthalpy x = a * x + b ∧ vaporEnthalpy x = c * x + d
    where a b c d : ℚ := (0.5, 10, 0.6, 20)

structure PonchonSavaritPackage where
  enthalpy : EnthalpyData
  equilibrium : DistillationEquilibriumPackage
  operatingLineEnthalpy : ℚ → ℚ
  operatingLineEnthalpyDefined : ∀ x : ℚ, operatingLineEnthalpy x = (refluxRatio / (refluxRatio + 1)) * x + (distillateRate / (refluxRatio + 1))
    where
      refluxRatio := equilibrium.column.refluxRatio
      distillateRate := equilibrium.column.distillateRate
  stagesFound : Nat

structure PonchonSavaritEvidence (P : PonchonSavaritPackage) where
  enthalpyClosed : P.enthalpy.enthalpyDefined
  operatingLineEnthalpyClosed : P.operatingLineEnthalpyDefined

def PonchonSavaritClosed (P : PonchonSavaritPackage) : Prop :=
  P.enthalpy.enthalpyDefined ∧ P.operatingLineEnthalpyDefined

theorem ponchon_savarit_closed_from_evidence (P : PonchonSavaritPackage)
    (E : PonchonSavaritEvidence P) : PonchonSavaritClosed P := by
  exact And.intro E.enthalpyClosed E.operatingLineEnthalpyClosed

end HautevilleHouse
end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
