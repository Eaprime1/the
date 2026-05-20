THE – Life-Support Dynamics Engine

THE is a life-support dynamics engine built around five world-powers:
sugar, salt, oxygen, water, and EMF/light. It tracks how these powers
interact, how tolerance windows shrink, and how a being moves along a
-1000 → 0 → +1000 axis of state.

THE exposes an API-like interface so other projects can ask questions
about state, risk, and moves, without needing to know the internal physics.

Core ideas

- **Five world-powers**  
  - Sugar, Salt, Oxygen, Water, EMF/UV/light.  
  - Each has a band: LOW / SAFE / HIGH (or similar).

- **State axis (-1000 → 0 → +1000)**  
  - -1000: Acid-side distress (compression, burning, panic).  
  - 0: Eye-of-the-storm balance (brief clarity / euphoria).  
  - +1000: Caustic-side distress (dissociation, disintegration).

- **Tolerance window**  
  - The safe operating band gets narrower as systems degrade.  
  - Small pushes (heat, sugar spikes, salinity, EMF bursts) can flip
    state from one extreme to the other.

THE as an API

Other repos treat THE as a control panel:

- Send in qualitative levels for the five powers (and optional pH, temp, ROS).
- Receive back:
  - A composite `X_state` on the -1000 → 0 → +1000 line.
  - A `risk_of_flip` indicator.
  - Which axis is dominant (which power is driving instability).
  - Suggested moves (what to change to widen the window).

Example endpoints (conceptual)

- `POST /state/evaluate`  
  Input: current levels for sugar, salt, oxygen, water, EMF.  
  Output: `X_state`, `risk_of_flip`, `dominant_axis`.

- `POST /state/apply-event`  
  Input: current state + an event (e.g., "heatwave + high sugar").  
  Output: updated state, possible trajectory, notes.

Implementation language is open. The main goal is a stable, named
interface for other projects and stories to call.

Turn engine and spinning wheel

THE can also drive turn-based workflows:

- **Entry event**: When a player or agent "enters" a repo or domos,
  THE activates and samples the current state.

- **Spinning wheel**: Each turn, a wheel spins over possible actions:
  fix an issue, Artesian mission, research task, or one-shot triad
  conversation (start → 3 turns → final).

- **Self-winding watch**: Every entry, exit, or wait state winds the
  system, storing "synergy potential" that can later be spent on
  missions or repairs.

The details of the wheel and missions live in separate docs, but THE
provides the underlying state and risk signals.

Roman numeral tracking

THE uses Roman numerals to track arcs:

- Major iterations (e.g., Blackjack) as `I, II, III, ...`.
- Conversations, sidetracks, and domos as sub-labels (e.g., `III.a`,
  `III.b`, `III.sidetrack-I`).

This keeps project navigation symbolic and distinct from numeric IDs.

Files and structure

- `docs/physiology-notes.md` — brief notes on real-world sugar/salt/O2/H2O/EMF.
- `spec/state-space.md` — formal definition of axes, bands, and mapping to X.
- `spec/api.md` — inputs, outputs, and example payloads.
- `lore/antagonist.md` — narrative of the five-powers entity.
- `lore/episodes.md` — small story seeds and scenarios.

Germ notes (out-of-scope ideas)

At the end of each document, THE keeps "germ notes" — small bullets
for ideas that belong in other projects or later phases. These are
handed off to the project management conversation for future weaving.