# GICM_Xilinx_Tutorial
This repository contains some tutorials about the use of Vivavo and Vitis with Xilinx FPGA 

## Links

- Problem with [Makefile](https://support.xilinx.com/s/article/75527?language=en_US) on Win10. See the Makefile on docs folder, alse review this [link](https://support.xilinx.com/s/question/0D52E00006hpRo8SAE/vitis-20211-error-makefile?language=en_US).
- Pynq-Z1 [Info](https://pynq.readthedocs.io/en/v2.0/overlay_design_methodology/board_settings.html)


there is a problem with Makefile and using Custom IP core, some of the solutions are provided in [Link 1](https://support.xilinx.com/s/article/75527?language=en_US) or [Link 2](https://support.xilinx.com/s/question/0D52E00006hpRo8SAE/vitis-20211-error-makefile?language=en_US), but also I provide a solution in my [Repository](https://github.com/PhysicsUdeA/GICM_Xilinx_Tutorial).

Use this Makefile prototype

```makefile
COMPILER=
ARCHIVER=
CP=cp
COMPILER_FLAGS=
EXTRA_COMPILER_FLAGS=
LIB=libxil.a

RELEASEDIR=../../../lib
INCLUDEDIR=../../../include
INCLUDES=-I./. -I${INCLUDEDIR}

INCLUDEFILES=$(wildcard *.h)
LIBSOURCES=$(wildcard *.c *.cpp)
OUTS =*.o
OBJECTS = $(addsuffix .o, $(basename $(wildcard *.c *.cpp)))
ASSEMBLY_OBJECTS = $(addsuffix .o, $(basename $(wildcard *.S)))

libs:
	echo "Compiling myip_led_ctrl..."
	$(COMPILER) $(COMPILER_FLAGS) $(EXTRA_COMPILER_FLAGS) $(INCLUDES) $(LIBSOURCES)
	$(ARCHIVER) -r ${RELEASEDIR}/${LIB} ${OBJECTS} ${ASSEMBLY_OBJECTS}
	make clean

include:
	${CP} $(INCLUDEFILES) $(INCLUDEDIR)

clean:
	rm -rf ${OBJECTS} ${ASSEMBLY_OBJECTS}
```

---

**SOLUTION**

This issue is related to the Makefile used in the driver output directory, whether it was created manually, or by the tools.

Compare your Makefile to the highlighted sections in the example Makefile below. This issue is planned to be addressed in a future release.

Original:

```makefile
INCLUDEFILES=*.h
LIBSOURCES=*.c
OUTS = *.o

libs:
echo "Compiling myip"
$(COMPILER) $(COMPILER_FLAGS) $(EXTRA_COMPILER_FLAGS) $(INCLUDES) $(LIBSOURCES)
$(ARCHIVER) -r ${RELEASEDIR}/${LIB} $(OUTS)
make clean

include:
${CP} $(INCLUDEFILES) $(INCLUDEDIR)

clean:
rm -rf ${OUTS}
```

This issue is due to the OUTS = *.o definition. In the latest mingw toolchains, using *.o will not work. The Makefile will need to be updated to use wildcards as in the below example:

```makefile
INCLUDEFILES=*.h
LIBSOURCES=*.c
OUTS = *.o
OBJECTS = $(addsuffix .o, $(basename $(wildcard *.c)))
ASSEMBLY_OBJECTS = $(addsuffix .o, $(basename $(wildcard *.S)))

libs:
echo "Compiling myip"
$(COMPILER) $(COMPILER_FLAGS) $(EXTRA_COMPILER_FLAGS) $(INCLUDES) $(LIBSOURCES)
$(ARCHIVER) -r ${RELEASEDIR}/${LIB} ${OBJECTS} ${ASSEMBLY_OBJECTS}
make clean

include:
${CP} $(INCLUDEFILES) $(INCLUDEDIR)

clean:
rm -rf ${OBJECTS} ${ASSEMBLY_OBJECTS}
```

**Method 1:** Modify your custom exported IP drivers folder to modify the Makefile as above. Then add the IP to your user repository and include it in your Vivado project, then export the XSA via write_hw_platform or** ** **File > Export > Export Hardware** . Be sure to check that the output XSA content (the drivers folder and updated Makefile) is correct.

**Method 2:** If the driver is added as part of an existing XSA file, then you can extract the Makefile from the XSA or open the XSA as an archive and edit the Makefile manually, then re-insert it into the XSA. Once edited, be sure to Update the HW Specification on your Platform project (right-click on your platform project in the Explorer view) or create a new Platform project in Vitis with the modified XSA and modify your application to use the new platform.

**Method 3:** Create the folder hierarchy below, and place the driver into the drivers folder:
repo\XilinxProcessorIPLib\drivers
Then in Vitis, select** ** **Tools > Repository** . Select New, and point to the repo folder.

**Note:** the two levels are needed.

Then if you re-create your domain, the driver in the repo should be used instead of the one in the XSA.


## Repositories

- ICTP Training Course, [Repository](https://gitlab.com/ictp-mlab/smr3765/-/wikis/home), [Indico](https://indico.ictp.it/event/9933/other-view?view=ictptimetable)
- Biomedical use [Link](https://indico.ictp.it/event/9933/session/52/contribution/152/material/slides/0.pdf)
