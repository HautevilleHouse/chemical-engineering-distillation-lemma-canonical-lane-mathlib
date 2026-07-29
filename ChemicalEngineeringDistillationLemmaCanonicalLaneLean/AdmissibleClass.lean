import ChemicalEngineeringDistillationLemmaCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DistillationLemmaObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DistillationLemmaClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse