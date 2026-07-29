import ChemicalEngineeringDistillationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DistillationLemmaClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse