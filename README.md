[![](https://img.shields.io/badge/dynamic/json?color=orange&label=Factorio&query=downloads_count&suffix=%20downloads&url=https%3A%2F%2Fmods.factorio.com%2Fapi%2Fmods%2Ffluid-memory-storage&style=for-the-badge)](https://mods.factorio.com/mod/fluid-memory-storage) [![](https://img.shields.io/badge/Discord-Community-blue?style=for-the-badge)](https://discord.gg/SAUq8hcZkq) [![](https://img.shields.io/github/issues/notnotmelon/fluid-memory-storage?label=Bug%20Reports&style=for-the-badge)](https://github.com/notnotmelon/fluid-memory-storage/issues) [![](https://img.shields.io/github/issues-pr/notnotmelon/fluid-memory-storage?label=Pull%20Requests&style=for-the-badge)](https://github.com/notnotmelon/fluid-memory-storage/pulls)

### Adds a container that can store an infinite amount of any fluid

Graphics from kaueNP.
Compatible with all mods.
Packed unit graphic from calcwizard's Packing Tape (MIT). https://mods.factorio.com/mod/packing-tape

---

### Packed units

Q: What happens when a unit is broken? Are my fluids lost?

A: Fluids are not lost. Fluids are "packed" inside the item and are recovered when you place the unit back down.

![](https://i.imgur.com/U5drgmQ.png)

Warning: If a fluid unit is destroyed (biters, nuke, or otherwise) then you will NOT get a packed unit and your items will be lost!

---

### Power

The fluid unit requires power to function!
The power usage is equal to:
1MW + (ceil(fluid amount / 1000) ^ 0.35) * 300kW
The scale factor be changed in the mod settings.

If it runs out of power, then it will not accept any more fluids until it gets power again.

![](https://i.imgur.com/W2Qxm3F.png)

---

### Circuits

Memory units can connect to the circuit network! Simply attach a red or green wire to the circle on the top of the container.
This will read both the type and amount of whatever you have stored in the unit.

Circuit signals in Factorio can only go up to 2,147,483,647. If you happen to have more items than this stored in a memory unit, then the signal will still only display as 2.1G.


---

### UPS

This mod is optimized. Should have a very minor impact on your UPS.

---

### Graphics

The color of the unit is based on the fluid inside!

---

### Custom GUI

Fluid units have a custom gui as of v1.4.0!

![](https://i.imgur.com/g9BwpM0.png)

---

### Addon

This mod is the official add-on to the [Memory Storage mod](https://mods.factorio.com/mod/deep-storage-unit), but they can work separately if you don't need both.