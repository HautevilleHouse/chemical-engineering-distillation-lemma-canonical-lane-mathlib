import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.DistillationColumnPackage
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.McCabeThieleConstruction
import HautevilleHouse.ChemicalEngineeringDistillationLemmaCanonicalLaneLean.FenskeEquation

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

def ConstrainedDistillationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distillation_endgame (A : AdmissibleClass) :
    ConstrainedDistillationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse