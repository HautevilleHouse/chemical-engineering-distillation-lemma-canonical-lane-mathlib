import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringDistillationLemmaCanonicalLaneLean.DistillationEquilibrium
import ChemicalEngineeringDistillationLemmaCanonicalLaneLean.McCabeThieleMethod
import ChemicalEngineeringDistillationLemmaCanonicalLaneLean.FenskeUnderwoodGilliland
import ChemicalEngineeringDistillationLemmaCanonicalLaneLean.PonchonSavaritMethod

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure DistillationDesignLemmaPackage where
  equilibriumClosed : DistillationEquilibriumPackage
  mccabeThieleClosed : McCabeThielePackage equilibriumClosed
  fenskeUnderwoodGillilandClosed : FenskeUnderwoodGillilandPackage
  ponchonSavaritClosed : PonchonSavaritPackage
  lemmaStatement : Prop
  lemmaStatementProof : lemmaStatement

def DistillationDesignLemmaClosed (D : DistillationDesignLemmaPackage) : Prop :=
  D.lemmaStatement

structure DistillationDesignLemmaEvidence (D : DistillationDesignLemmaPackage) where
  lemmaStatementClosed : D.lemmaStatementProof

theorem distillation_design_lemma_closed_from_evidence (D : DistillationDesignLemmaPackage)
    (E : DistillationDesignLemmaEvidence D) : DistillationDesignLemmaClosed D := by
  exact E.lemmaStatementClosed

end HautevilleHouse
end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
