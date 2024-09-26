 ### myCPU Encoder CLI 
This CLI program encode the microinstructions set for an instruction set defined in a definition json file. Check the myCPU ISA files and take a look at the ISA definition json file.
The program provide 3 arguments to setup the encode address distribution:
- **-s** (Sequencer steps length)
- **-o** (Opcode length)
- **-f** (Flagsmap length) 
- **-x** (Offset bits length)

With no arguments the default values are (3,4,4,0) corresponding to the **myCPU16** configuration.

You can modify these values and set them accordingly to the Instruction Decoder module address configuration. The Encoder CLI place the memory selection bits at the end of the encoding address. You could use the **Offset** argument to indicate how many unused address positions there are up to the memory selection bits in the Instruction Decoder module PCB you are using for decoding, to encode the address properly.

* default values 3,4,4,0
```
myCPU_EncoderCLI "[definition file name].json"

```
* custom value for opcode part length leaving the other to the default values
```
myCPU_EncoderCLI "[definition file name].json"  -o 6

```
* custom values with reduced args names
```
myCPU_EncoderCLI "[definition file name].json" -s 3 -o 6 -f 4 -x 0

```
* custom values with extended args names
```
myCPU_EncoderCLI "[definition file name].json" --seq 3 --ops 6 --flags 4 --offset 0

```
### Encoding Address parts
The enconding address are composed by 4 parts according to the design of the instruction decoder module, Take a look at the schematic documentation of the Instruction Decoder module.

They have next order for the myCPU16: 
1. **Sequencer Step** (3 bits)
2. **Opcode**   (4 bits)
3. **Flagsmap** (4 bits)
4. **Memory selection** (2 bits)



### Flagsmap
The FlagsMap order corresponding to the binary string in the definition file, for the myCPU16, is: **FC, FN, FZ, FV**. The syntax of flagsMap is a value bit surrounded by mask symbol "*".

So, for example, a FlagsMap of **"\*\*1\*"** corresponding to an just enabled **FZ** flags combination.

### Memory Selection Bits
Those bits are allocated at the end of the encode address, so are the most significant two bits independently of the length of the encoding address.


