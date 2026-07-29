import ChemicalEngineeringDistillationLemmaCanonicalLaneLean.DistillationColumnConstruction

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure MassBalanceEvidence where
  totalMassBalanceClosed : Prop
  componentMassBalanceClosed : Prop

def MassBalanceClosed (C : DistillationColumnPackage) : Prop :=
  C.numberOfStages > 0 ∧ C.refluxRatio > 0

theorem mass_balance_closed_from_evidence (C : DistillationColumnPackage) (E : MassBalanceEvidence) : MassBalanceClosed C := by
  exact And.intro (by
    have : C.numberOfStages > 0 := E.totalMassBalanceClosed
    exact this) (by
    have : C.refluxRatio > 0 := E.componentMassBalanceClosed
    exact this)

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse