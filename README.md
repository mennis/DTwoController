# DTwoController

Max patches for controlling a TC Electronic D•TWO Multitap Rhythm Delay over
MIDI, with the UI following the unit.

## Status

- **Phase 0 probe** ([`phase0/D-Two_Probe.maxpat`](phase0/D-Two_Probe.maxpat)):
  settles what TC's documents don't, on real hardware. Run it first; see
  below.
- **Controller** (`D-Two_Controller.maxpat` and its six panels): every
  parameter in the CC list, preset select, and two-way sync. Generated, and
  **not yet loaded in Max or tried on a unit**. Until Phase 0 is done, CC
  scaling and five CC numbers are best guesses.

## Layout

```
D-Two_Controller.maxpat    main window: ports, channel, SysEx ID, preset, sync
D-Two_<Panel>.maxpat       System, Delay, Spatial, Chorus, Dynamics, Rhythm
dtwo.js                    MIDI engine used by both patches
phase0/D-Two_Probe.maxpat  Phase 0 probe
tools/dtwo.py              the parameter table: CCs, SysEx IDs, ranges, labels
tools/js/dtwo_core.js      engine source (dtwo.js = table + this)
tools/maxpat.py            patch-building helpers
tools/build_controller.py  generates the controller, panels and dtwo.js
tools/build_probe.py       generates the probe and dtwo.js
tests/test_dtwo.js         engine tests under Node, Max globals stubbed
tests/check_patches.py     wiring checks on the generated patches
```

Everything except `tools/` and `tests/` is generated: edit the scripts, not the
JSON, then rebuild and check:

```bash
python3 tools/build_controller.py && python3 tools/build_probe.py && node tests/test_dtwo.js && python3 tests/check_patches.py
```

## How it works

Each panel control sends `<key> <value>` to `s dtwo_out`. `dtwo.js` turns that
into a CC on the selected channel and port. The unit transmits CCs 16–28 and
48–99 when its own knobs move. The engine maps those back and sends them to
`r dtwo_in`, which sets the matching control without sending it again.

**Sync** reads every parameter that has a SysEx ID with a Parameter Request
(`F0 00 20 1F <id> 45 47 <kind> <param> F7`), one at a time, waiting up to
150 ms for each reply. It runs 0.5 s after the patch opens and after every
preset change (turn off **auto** to stop that). The seven effect on/off
switches are CC-only, so Sync can't read them; they update when the unit
sends their CCs.

**Preset** 1–150 sends CC 32 (0 = factory, 1 = user) then Program Change:
1–50 are factory, 51–150 are user 1–100.

Values are displayed in the unit's own units. Spatial Offset shows −200…+200
ms. Cut filters (0–60), Chorus Speed (0–208), Release (11–26) and Subdivision
(0–12) are the unit's step numbers, because the spec doesn't give their
tables.

## On the D•TWO (Setup)

- **MIDI Channel**: matches **Ch** (not Off).
- **MIDI CC**: On.
- **Program bank**: External, so CC 32 can choose factory or user.
- **MIDI Sys-Ex ID**: matches **ID**, for Sync and the probe.

## Phase 0: what the probe has to settle

1. **CC scaling** (`CC_MODE` in `tools/dtwo.py`). The documents never say how
   0–127 covers ranges like Delay 0–10000 ms or Chorus Feedback −100…+100.
   With the probe open, turn knobs **on the unit**. Each CC it sends is read
   back over SysEx and logged as
   `pair threshold cc=64 value=-30 scaled->-30 offset->0`. Whichever
   prediction matches is the mode. **Sweep** does the same from Max, stepping
   a parameter's CC 0→127.
2. **CCs 52–56.** The CC list and the SysEx rule "CC = 48 + ID" disagree on
   Shuffle, Quantize, Track Tap, Rhythm Decay and Subdivision. The table uses
   the CC list. A pair log for each settles it.
3. **Does SysEx set values?** **Param data** sends Parameter Data to the unit.
   If the value changes, Delay and the rhythm taps could be set exactly
   instead of in 7-bit steps (79 ms per step for Delay).
4. **Preset dump.** **presetrequest 0** asks for the edit buffer. The log
   decodes the name, the algorithm-modifier bits (probably the effect on/off
   switches, in an unknown order) and the 32 parameter words. If the
   parameter order matches the IDs, Sync can become one request instead of 56.
5. **Reverse Offset**: the spec says 0–1, the manual says 0–200 ms.

**writelog** saves everything to `phase0/dtwo_probe_log.txt`; commit that and
the table can be corrected from it.

## Not yet verified in Max

These patches were generated without Max running. Check:

- `midiinfo` fills the port menus (bang = outputs, int = inputs) and
  `port <name>` selects ports on `midiin`/`midiout`.
- `dtwo.js` is found. It sits in the Library folder next to the patches; the
  probe in `phase0/` relies on Max's search path for it.
- Panels open on the System tab and switch with the tabs.

## Not in git

The `.gitignore` leaves out the two screen recordings (≈1.9 GB), TC's PDFs
(manual, CC and SysEx specifications) and the Seven Segment font. They stay in
the folder locally but aren't redistributed in this public repo.
