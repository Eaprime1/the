# THE API Specification
Life-Support Dynamics Interface for Animated Carbon Containers

THE exposes a small, symbolic API for reasoning about the state of
animated carbon containers (shepherds, agents, characters, players)
across five world-powers:

- Sugar
- Salt
- Oxygen
- Water
- EMF / Light (UV, EMF load)

The API is **conceptual** first. It can later be implemented in any
language or transport (HTTP, local library, message bus).

---

## 1. Core concepts

- **Container**  
  An animated carbon entity: autonomous, time-bound, biological
  processing container with built-in imperative and limits.

- **World-powers**  
  Sugar, salt, oxygen, water, EMF/light as the primary fuels,
  constraints, and stressors for the container.

- **State axis X (-1000 → 0 → +1000)**  
  Composite state of the container:
  - -1000: Acid-side distress (compression, burning, panic).
  - 0: Eye-of-the-storm balance (brief clarity / euphoria).
  - +1000: Caustic-side distress (dissociation, disintegration).

- **Tolerance window**  
  The band within which the container can execute its authority and
  intentions. As the window narrows, the **gap between held and
  exercisable authority** widens.

---

## 2. Data model (symbolic)

### 2.1 Levels

Each world-power is represented qualitatively:

- `LOW` — below safe band.
- `SAFE` — within safe band.
- `HIGH` — above safe band.

These are intentionally coarse. Numerical models can be mapped into
these labels elsewhere.

### 2.2 ContainerLevels

```yaml
ContainerLevels:
  sugar:  "LOW" | "SAFE" | "HIGH"
  salt:   "LOW" | "SAFE" | "HIGH"
  oxygen: "LOW" | "SAFE" | "HIGH"
  water:  "LOW" | "SAFE" | "HIGH"
  emf:    "LOW" | "SAFE" | "HIGH"
  # optional context
  ph:     "ACID" | "NEUTRAL" | "BASIC" | null
  temp:   "LOW" | "NORMAL" | "HIGH" | null
  ros:    "LOW" | "NORMAL" | "HIGH" | null    # reactive oxygen stress
