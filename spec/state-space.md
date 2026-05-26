# THE State-Space Specification
Axes, Bands, and Mapping to X

This document defines the axes, qualitative bands, and mapping rules
used by THE to compute the composite state axis X (-1000 → 0 → +1000)
and related indicators.

---

## 1. Axes (world-powers and context)

### 1.1 Primary world-powers

1. **Sugar (SUG)**  
   - LOW: hypoglycemic / under-fueled.  
   - SAFE: stable fuel availability.  
   - HIGH: hyperglycemic / spike.

2. **Salt (SAL)**  
   - LOW: hyponatremic / diluted.  
   - SAFE: balanced electrolytes.  
   - HIGH: hypernatremic / high salinity.

3. **Oxygen (OXY)**  
   - LOW: hypoxic / low dissolved oxygen.  
   - SAFE: adequate tissue oxygenation.  
   - HIGH: hyperoxic / ROS-prone (rare, but relevant in some contexts).

4. **Water (H2O)**  
   - LOW: dehydrated / low volume.  
   - SAFE: adequate hydration and volume.  
   - HIGH: overloaded / edema risk.

5. **EMF / Light (EMF)**  
   - LOW: under-stimulated / dark / low activity.  
   - SAFE: normal light/EMF exposure.  
   - HIGH: UV/EMF overload, phototoxic, disruptive environments.

### 1.2 Contextual axes

6. **pH (PH)**  
   - ACID, NEUTRAL, BASIC.

7. **Temperature (TEMP)**  
   - LOW, NORMAL, HIGH.

8. **Reactive Oxygen Stress (ROS)**  
   - LOW, NORMAL, HIGH.

These contextual axes are derived from or influenced by the primary
world-powers but may also be set externally.

---

## 2. Band definitions

Each primary axis has a safe band and two danger bands.

### 2.1 Example band semantics

Sugar:

- LOW: impaired cognitive and physical function, decision collapse.
- SAFE: sustainable energy, executive function intact.
- HIGH: short-term overdrive, long-term exhaustion and ROS risk.

Oxygen:

- LOW: fatigue, confusion, failing container; authority cannot be
  exercised even if held.
- SAFE: normal function.
- HIGH: specialized cases (e.g., hyperbaric) with increased ROS.

(Repeat brief semantics for salt, water, EMF in later passes.)

---

## 3. Composite axis X (-1000 → 0 → +1000)

### 3.1 Conceptual meaning

- **X ≈ -1000 (“ACID_SIDE”)**  
  - Container in compressed, burning, panic states.  
  - Often associated with low OXY, high ROS, EMF overload, or sharp
    pH shifts.

- **X ≈ 0 (“BALANCE_EYE”)**  
  - Narrow region of equilibrium.  
  - Container can exercise authority with clarity and minimal gap.

- **X ≈ +1000 (“CAUSTIC_SIDE”)**  
  - Container in disintegrative states: numbness, dissociation,
    structural breakdown.

### 3.2 Symbolic mapping

We define a symbolic mapping rather than a fixed numeric formula in
this draft. One possible pattern:

1. Assign each axis a directional influence on X:

   - SUG:
     - LOW → pulls X negative (fatigue, collapse).
     - HIGH → pulls X positive (overdrive → crash).
   - SAL:
     - LOW → negative (collapse).
     - HIGH → positive (irritation, stiffness).
   - OXY:
     - LOW → strongly negative.
     - HIGH → mildly positive (in ROS contexts).
   - H2O:
     - LOW → negative.
     - HIGH → positive (swelling, pressure).
   - EMF:
     - LOW → mild negative (under-stimulation).
     - HIGH → strong positive or negative depending on context
       (phototoxic vs. overstimulated states).

2. Count the number of axes in LOW vs. HIGH:

   ```text
   low_count  = count(axis == LOW)
   high_count = count(axis == HIGH)
