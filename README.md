
## «Poly» - my university mono-repository

*This is repository with **(not all)** my university labs, courses and courseworks.*

### Peter the Great St. Petersburg Polytechnic University
**Program:** Mathematics and Computer Sciences

---

### Structure

#### Semester 2
- `mcs-cpp-coursework-2nd-sem` — C++ coursework with recursive AI algorithm
- `mcs-cpp-labs-2nd-sem` — C++ labs
- `mcs-summer-practice-2025` — Summer practice

#### Semester 3
- `dismath` — Discrete math
- `sem3-oop-labs` — OOP labs
- `qt-labs-sem3` — Qt/C++ labs
- `cvm` — Computer architecture (Multisim circuits & assembly programming)
- `tau` — TAU (Control theory)
- `hight-math` — Higher mathematics
- `eng-lang/test3` — English language
- `softskills/comminication` — Soft skills

##### Configs:
- `zed-cpp-debug-conf` — Zed C++ debug config

#### Semester 4
- `func-programming` — Functional programming
- `graphs/docs` — Graph theory
- `databases` — Databases
- `miccontrol/labs` — Microcontroller programming
- `cpmath` — Computational mathematics
- `professional-eng` — Professional English

---

### Setup
```bash
# Clone with all submodules
git clone --recurse-submodules https://github.com/si1og/poly.git

# If already cloned without submodules
git submodule update --init --recursive
```

### Scripts
```bash
# Initialize all submodules after clone
./init-submodules.sh

# Commit & push all changes across submodules
./sync-submodules.sh
```
