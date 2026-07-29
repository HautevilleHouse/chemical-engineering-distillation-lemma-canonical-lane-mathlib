import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationLemmaCanonicalLaneLean

structure DistillationLemmaPackage where
  column : DistillationColumn
  vaporLiquidEquilibrium : VaporLiquidEquilibriumPackage
  operatingLines : OperatingLinesPackage
  mccabeThiele : McCabeThielePackage
  fenskeUnderwood : (FenskeEquationPackage × UnderwoodEquationPackage)

structure DistillationLemmaEvidence (D : DistillationLemmaPackage) where
  columnValid : DistillationColumnEvidence D.column
  vleValid : VaporLiquidEquilibriumEvidence D.vaporLiquidEquilibrium
  opLinesValid : OperatingLinesEvidence D.operatingLines
  mtValid : McCabeThieleEvidence D.mccabeThiele
  fuValid : FenskeUnderwoodEvidence D.fenskeUnderwood.1 D.fenskeUnderwood.2

def DistillationLemmaClosed (D : DistillationLemmaPackage) : Prop :=
  VaporLiquidEquilibriumClosed D.vaporLiquidEquilibrium ∧
  OperatingLinesClosed D.operatingLines ∧
  McCabeThieleClosed D.mccabeThiele ∧
  FenskeUnderwoodClosed D.fenskeUnderwood.1 D.fenskeUnderwood.2

theorem distillation_lemma_closed_from_evidence (D : DistillationLemmaPackage)
    (E : DistillationLemmaEvidence D) : DistillationLemmaClosed D := by
  refine And.intro (vapor_liquid_equilibrium_closed_from_evidence D.vaporLiquidEquilibrium E.vleValid)
    (And.intro (operating_lines_closed_from_evidence D.operatingLines E.opLinesValid)
      (And.intro (mccabe_thiele_closed_from_evidence D.mccabeThiele E.mtValid)
        (fenske_underwood_closed_from_evidence D.fenskeUnderwood.1 D.fenskeUnderwood.2 E.fuValid)))

end ChemicalEngineeringDistillationLemmaCanonicalLaneLean
end HautevilleHouse