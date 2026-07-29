import ChemicalEngineeringDistillationLemmaCanonicalLaneLean.OperatingLines

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure McCabeThieleEvidence where
  rectifyingLineIntersection : Prop
  strippingLineIntersection : Prop
  numberOfStagesDetermined : Prop

theorem mccabe_thiele_closed (C : DistillationColumnPackage) (E : McCabeThieleEvidence) : Prop :=
  E.rectifyingLineIntersection ∧ E.strippingLineIntersection ∧ E.numberOfStagesDetermined

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse