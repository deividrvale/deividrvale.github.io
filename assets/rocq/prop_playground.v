(* From RocqIntro.Prelude Require Import Checks. *)
#[export] Set Default Goal Selector "!".
(* 1. Construindo as noções de verdade (⊤) e falsidade (⊥).

Como acabamos de ver, na dedução natural a regra de introdução da verdade, ⊤, é dada pelo julgamento:
      --------- (⊤ᵢ)
          ⊤
O símbolo para falsidade (ou absurdo) não tem regra de introdução.
Veremos que isso faz sentido, pois para que a lógica seja consistente, não podemos ser capazes de derivar ⊥.
*)

(* O que vamos definir a seguir já está presente no Rocq e é carregado automaticamente em todo arquivo.
No entanto, é útil inspecionar e recriar esses objetos por serem os blocos construtores da teoria que se segue.
Assim, vamos isolar nossas próprias definições dentro de um 'Module' (Módulo) do Rocq.
Isto fará com que tudo que definamos aqui não entre em 'clash' com a standard library do Rocq.
*)

Module verdade_falso.
(* 1.1 - No Rocq podemos enxergar a noção de verdade (V) como um conjunto indutivo. *)

Inductive V : Prop :=
  | I : V.

(* Vamos analisar os principais elementos desta definição.
  1. [Inductive V : Prop]
    - Declara que [V] é indutivo e vive no universo das Proposições.
  2. [I : True]
    - O único construtor do conjunto é I, ou seja, age como uma prova canônica e trivial de [V].
  3. Rocq é capaz de produzir um princípio indutivo para V, dado por:
*)

Type V_ind.

(*
  O princípio indutivo para V diz:
    V_ind
      : forall P : Prop, P -> V -> P

  1. Para provarmos qualquer proposição [P] utilizando uma prova de [V], devemos primeiro provar [P].

  2. Este princípio indutivo é trivial pois não carrega nenhuma informação extra que nos ajude a provar [P].
 *)

Print V_ind.

(* 1.2 - Falsidade também é indutiva! *)

Inductive F : Prop := .
(*
  Definimos [F] como um [Prop] com zero construtores, o que é equivalente a dizer que [F] é vazio.
  De fato, sem nenhum construtor.
  Ora, não temos como construir nenhum elemento de F.
*)
Type F_ind.

Print F_ind.

Proposition ex_falso_quodlibet : F -> 2 + 2 = 5.
Proof.
  intro H.    (* H : F *)
  destruct H. (* A prova é completa! *)
Qed.

(* Construindo Negação *)
Definition not (A : Prop) := A -> F.

Notation "~ A" := (not A).

Inductive and (A B : Prop) : Prop :=
  conj : A -> B -> and A B.

Notation "A /\ B" := (and A B).

Definition iff (A B:Prop) := (A -> B) /\ (B -> A).

Notation "A <-> B" := (iff A B).

(*
Fica a cargo do leitor provar as propriedades básicas de iff.
A saber: iff satisfaz os axiomas para relação de equivalência.
*)
Theorem iff_refl : forall A:Prop, A <-> A.
Proof.
Admitted.

Theorem iff_trans : forall A B C:Prop, (A <-> B) -> (B <-> C) -> (A <-> C).
Admitted.

Theorem iff_sym : forall A B:Prop, (A <-> B) -> (B <-> A).
Admitted.

End verdade_falso.

(* 2. Algumas provas sobre Prop. *)

(* A proposição abaixo versa uma tautologia relativamente fácil de acreditar:
  para toda proposição A, A implica A. *)
Proposition id_imp (A : Prop) :
  A -> A.
Proof.
  (* Como discutimos em aula, no Rocq ao lado direito do editor teremos o estado da prova atual que é composto por duas partes principais:
    1. um contexto, onde tudo que está nele é assumido como verdade
    2. uma obrigação de prova (ou objetivo) que é o que temos que provar no momento.
  Em texto, o contexto da nossa proposição se torna:

    A : Prop
    ============================
    A -> A

  O contexto (nas notas de aula escrito como Γ) contém a informação que A : Prop, ou seja, A é um objeto que vive no universo das proposições.
  Como nossa obrigação de prova é uma implicação, podemos introduzir sua hipótese no contexto utilizando a tática [intro].
  Por exemplo, se o objetivo é [P1 -> P2], a tática [intros H] adiciona a hipótese [H : P1] ao contexto e o novo objetivo passa a ser [P2]: *)
  intro H.
  (* Daí observe que estado da prova muda para:
    A : Prop
    ============================
    A -> A
  *)
  exact H. (* [exact H] é usada quando nosso objetivo está exatamente descrito no contexto, que neste caso trivialmente é a prova H da proposição A. *)
Qed. (* Escrevemos [Qed.] para finalizar a prova. *)

Proposition intro_imp (A B : Prop) :
  (A -> B) -> (A -> B).
Proof.
  intro H.
  exact H.
Qed.

Theorem implication_composition (A B C : Prop):
  (A -> B) -> (B -> C) -> A -> C.
Proof.
  intros f g a.
  apply g.
  apply f.
  exact a.
Qed.

(* A próxima proposição diz que o operador [and] é comutativo. *)

Proposition comm_and (A B : Prop) :
  A /\ B -> B /\ A.
Proof.
  intro.
  split. (* Aqui o objetivo é da forma: B /\ A, o que nos obriga a provar tanto B quanto A. Assim utilizamos a tática [split]. Ela gera dois novos objetivos a serem provados.
  Provamos um de cada vez utilizando um [-] para focarmos em cada caso.
  *)
  - apply H.
  - apply H.
Qed.

(* Fazemos a mesma coisa com o [or]. *)
Proposition comm_or (A B : Prop) :
  A \/ B -> B \/ A.
Proof.
  intro P.
  destruct P as [PL | PR]. (* Volte nas notas de aula e observe como é a regra do [or].
  A tática [destruct] 'destrói' um objeto, fazendo análise de casos.
  escrever [destruct P as [PL | PR]] separa provas de PL de A e PR de B para que possamos utilizar a regra do \/.
  Daí, temos que utilizar [-] para focar nessas provas.
  *)
  -
  (*
  Quando o objetivo é uma disjunção, escolhemos quem devemos provar.
  Uma rápida inspeção no contexto justifica nossa escolha.
    A, B : Prop
    PL : A
    ============================
    B \/ A
  De fato, no contexto temos exatamente a prova de A! A tática portanto é [right]
  *)
  right.
  exact PL.
  (* O outro caso é similar. *)
  - left.
    exact PR.
Qed.

(* Com isso temos as principais táticas iniciais. Vamos praticar um pouco. *)

(* Exercícios: prove os resultados a seguir. *)

Proposition ex1 (A B : Prop) : A -> B -> A.
Proof.
Admitted.

Lemma imp_dist (A B C : Prop) :
  (A -> B -> C) -> (A -> B) -> A -> C.
Admitted.

Lemma imp_perm (A B C : Prop) :
  (A -> B -> C) -> (B -> A -> C).
Admitted.

(* Desafio. *)

(* 1ᵃ Lei de De Mordan *)
Theorem de_morgan_or : forall A B : Prop,
  ~(A \/ B) <-> ~A /\ ~B.
Proof.
Admitted.

(* Pergunta: é possível provar a segunda? *)
Theorem de_morgan_and : forall A B : Prop,
  ~A \/ ~B -> ~(A /\ B).
Proof.
Admitted.

(* Pergunta: vale a volta? *)
Theorem de_morgan_and_reci : forall A B : Prop,
  ~(A /\ B) -> ~A \/ ~B.
Proof.
Admitted.

(* Desafio: A lei fraca de Pierce. *)
Theorem weak_peirce : forall A B : Prop,
  ((((A -> B) -> A) -> A) -> B) -> B.
Proof.
Admitted.
