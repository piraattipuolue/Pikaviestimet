<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Scripts for managing PPFI channels on PirateIRC](#scripts-for-managing-ppfi-channels-on-pirateirc)
  - [Further reading and notes](#further-reading-and-notes)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Scripts for managing PPFI channels on PirateIRC

The original list of channels comes from where `MI1` is according to oper
`WHOIS` and should match `kanavat.csv` with exceptions of secret channels
and those not (fully) belonging to Pirate Party of Finland.

The scripts only generate lines that should be copy-pasted to a IRC client
for anything to actually happen. They are provided [missing GroupServ](https://github.com/ergochat/ergo/issues/465)
in hope that PPFI is able to operate IRC without @Mikaela constantly present.

- `./generate-amode-cmds.bash +o MI1` - giving user `MI1` op on all channels
  which will persist and be granted on join. **_Prefer this script._**
- `./generate-oper-override-mode.bash +o MI1` - the same, except requires operator
  permission, allows unregistered accounts and doesn't persist over `/cycle`
  whether manual or connection loss or similar. **_Use only in emergency
  and even in emergency, and even then prefer amoding yourself with the previous script and then
  using the next script._**
- `./generate-usual-mode-cmds.bash +o MI1` - non-oper version of the previous script,
  generates normal `/mode` commands within the usual permission system most likely
  requiring being op (use the amode script for that, see drawbacks of the previous script).

## Further reading and notes

- (CS) AMODE +h (halfop) overrides mode `+i` (invite-only channel).
- https://github.com/ergochat/ergo/blob/master/docs/MANUAL.md#channel-prefixes - on owner/protected/op/halfop/voice
- https://github.com/ergochat/ergo/blob/master/docs/MANUAL.md#modes - on channel modes such as the aforementioned invite-only
