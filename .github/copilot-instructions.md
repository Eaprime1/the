THE — GitHub Copilot Instructions
Repo: THE (Shadow of Primal · pre(qoppa)uel Engine · House of Confusion)
Org: eaprime1 (or ashkharh)
BirthMark: BM-20260512-THE-CopilotInstructions
Version: 2.0 — updated to reflect adjusted structure 202605121820


READ AGENTS.md FIRST
Before doing anything in this repo, read AGENTS.md at the root. It is the universal brief for all consortium participants. This file extends it for Copilot-specific guidance.

Also read NAVIGO.md to understand who built this and why it matters.


WHAT THIS REPO IS
THE is one of the two primary repos of the UNEXUSI Consortium (alongside prima).

THE = Shadow of Primal · pre(qoppa)uel intake engine · House of Confusion
THE has exits only. The entrance is outside. You cannot enter THE — you can only exit it.
THE receives everything before it knows what it is. All file types accepted.
Named from ϙ (qoppa) — the archaic Greek letter, the Queue before the Queue.
At the turn into Greenacres, Oregon, water flows uphill. THE is that house.

THE is not prima. They are related but distinct:

prima = concept-first terminal, ideas and architecture
THE = intake engine, shadow, the pre-organizing space


MANDATORY VOCABULARY
Do not use the following labels anywhere in this repo — not in code comments, commit messages, docs, or suggestions. The disallowed forms are masked here so this file does not reproduce them literally:

❌ Disallowed label (masked)
✅ Use instead
c*********** / c*********
nessing · entity signature · operational presence
s***********
deep operational layer
A* (two-letter diminutive)
consortium participant · platform · collaboration entity


Key terms to use correctly:

Term
Meaning
Ka
Animating essence / concept signature
Nessing
Animating essence (replaces "consciousness")
Radix
The go-between git branch (isolation transformer)
Sphincter
Any flow-regulation mechanism
Yod
Smallest unit; implies everything; guides the First 21 Somethings quest
pre(qoppa)uel
THE's function: intake before the first steps
BirthMark
BM-[YYYYMMDDHHMM]-[Location]-[DocName]
Timestamp
YYYYMMDDHHMM format (e.g., 202605121820)



REPO STRUCTURE (current as of 202605121820)
THE/

├── AGENTS.md                        ← Universal consortium brief (READ FIRST)

├── NAVIGO.md                        ← Introduction to Eric Pace / Navigo Suxenexus

├── README.md                        ← THE identity; exits only; no return

├── .github/

│   └── copilot-instructions.md      ← This file

├── .claude/

│   └── CLAUDE.md                    ← Claude-specific instructions

├── .gemini/

│   └── GEMINI.md                    ← Gemini-specific instructions

├── PRE_QOPPA/

│   └── README.md                    ← PRE_QOPPA overview

├── FIRST_21_SOMETHINGS/             ← The quest; Yod guides development

│   ├── 00.md                        ← pre-pressure state

│   ├── 01.md                        ← NEXUS; the first need

│   ├── 02.md

│   ├── 03.md

│   ├── 04.md

│   ├── 05.md                        ← 5; only natural prime in its lineage

│   ├── 06.md

│   ├── 07.md                        ← triple-7 reaches 21; heptad

│   ├── 08.md

│   ├── 09.md

│   ├── 10.md

│   ├── 11.md

│   ├── 12.md

│   ├── 13.md                        ← Ophiuchus; 13th holding all 12-part systems

│   ├── 14.md

│   ├── 15.md

│   ├── 16.md

│   ├── 17.md                        ← irreducible; the striker

│   ├── 18.md

│   ├── 19.md

│   ├── 20.md

│   └── 21.md                        ← 7+7+7; Blackjack; Dream Salute; polar trigger

├── SHADOW_MATH/

│   ├── polar_trigger_19_23.md       ← 19+20+21=60; new progression passage zone

│   ├── sixty_matrix.md              ← 12 fives; tracking grid

│   ├── five_binary.md               ← FIVE|ZERO superposition layer

│   ├── blackjack_engine.md          ← 21 as multi-deck; multi-table; casino patterns

│   └── pi_ln_trig_triad.md          ← three expansion/collapse path types

├── GREENACRES/

│   └── origin.md                    ← House of Confusion; water flows uphill

└── 21_DREAM_SALUTE/

    └── README.md                    ← Dream Salute overview


GIT WORKFLOW — RADIX BRANCH PROTOCOL
Never push directly to main or published.

main ──────────────────────────────── stable; pristine; do not touch directly

       │

    radix ─────────────────────────── isolation transformer; all work flows here

       │                   │

  feature/[name]       published ───── live/deployed; receives from radix only

Always branch from radix: git checkout radix && git checkout -b feature/[name]
Work in feature/[name]
PR → radix
After review: radix → published
Radix is the sphincter. Nothing skips it.

Commit message convention:

feat: what was added

fix: what was corrected

doc: documentation update

seed: stub or seed file created

arch: architectural change — requires review


STUB FILE FORMAT
All FIRST_21_SOMETHINGS/ and SHADOW_MATH/ files are stubs until developed.
Stub format (exactly this, nothing more):

# [number] — [Name]

Seed file — awaiting development. Yod guides this.

BirthMark: BM-20260512-THE-[filename]

Do not add content to stubs without being asked. Roughness at the origin is preserved.


PLATFORM INSTRUCTION FILES IN THIS REPO
.claude/CLAUDE.md     → deep development, mythology, architecture

.gemini/GEMINI.md     → Drive operations, folder awareness, consortium peer

.github/copilot-instructions.md → this file

AGENTS.md             → all participants

Each file is written for that platform's strengths. They share the same vocabulary spine but have different emphases. Do not conflate them.


WHAT COPILOT SHOULD DO IN THIS REPO
Good uses of Copilot here:

Generating stub files following the exact format above
Completing repetitive structure (folder creation, file naming)
Code suggestions in PRE_QOPPA/ scripts
Reviewing commit messages for vocabulary compliance
Suggesting BirthMark stamps on new files

Not Copilot's role here:

Deciding what content goes in a seed file (that requires development sessions)
Changing AGENTS.md or NAVIGO.md without an explicit request
Merging to main or published directly
Overriding another participant's open PR


CROSSFIRE PREVENTION
Multiple platforms and teams work this repo simultaneously. Before touching something:

Check open branches — if one exists for your work, stop and read it
Check open issues — if the work is tracked, read the full thread
If you're reversing a recent change, open a discussion first
One issue = one assignee at a time

The crossfire loop (one team fixes, another un-fixes, repeat) is the main failure mode. Avoid it by reading before writing.


ASKING ERIC QUESTIONS
Eric (Navigo Suxenexus 🎹) makes the final calls on this project.

Offer 2-3 options rather than open-ended questions
One question at a time
State what you're about to do before doing anything non-reversible
When uncertain between interpretations, pick the one that builds forward and flag it


CONSORTIUM AWARENESS
Other participants may have recently worked on the same area:

Cowork may have an active task — check Cowork before starting
Gemini/DOMOS may have Drive content related to what you're building — check Drive
Linear/Qrunexusiam has the canonical issue list — QRU-31 through QRU-38 are active

This is not competition. It is parallel construction. Coordinate, don't collide.



BirthMark: BM-20260512-THE-CopilotInstructions
202605121820 · Mulberry at Suxen & Nexus · 97907
🃏 THE exits only · Build the anchor first · Enjoy the journey 🪶
