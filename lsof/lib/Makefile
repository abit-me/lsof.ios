# darwin Makefile for lsof revision 4.94.0

CC=	cc

CCV=	12.0.0 (clang-1200.0.32.28)

LIB=	lib/liblsof.a

CINFO=	libproc-based

CFGF=	 -DHASIPv6 -mdynamic-no-pic -DHASUTMPX -DDARWINV=1200 -DHAS_STRFTIME -DLSOF_VSTR=\"20.2.0\"

CFGL=	 -L./lib -llsof  -lcurses

DEBUG=	-O

DINC=	  -I/Applications/Xcode.app/Contents/Developer/Platforms/iphoneos.platform/Developer/SDKs/iphoneos.sdk/usr/include

AR=	ar cr ${LIB} ${OBJ}

RANLIB=	ranlib ${LIB}

override CFLAGS=${CDEFS} ${INCL} ${DEBUG}

# Lsof library Makefile skeleton
#
# This skeleton is added to definitions established by Configure.
#
# $Id: Makefile.skel,v 1.13 2001/02/13 02:12:16 abe Exp $

LIB=	liblsof.a

CDEF=	${RC_CFLAGS}
CDEFS=	${CDEF} ${CFGF}
INCL=	${DINC}

HDR=	../lsof.h ../proto.h ../dlsof.h ../dproto.h ../machine.h

SRC=	ckkv.c cvfs.c dvch.c fino.c isfn.c lkud.c pdvn.c prfp.c \
	ptti.c rdev.c regex.c rmnt.c rnam.c rnch.c rnmh.c snpf.c

OBJ=	ckkv.o cvfs.o dvch.o fino.o isfn.o lkud.o pdvn.o prfp.o \
	ptti.o rdev.o regex.o rmnt.o rnam.o rnch.o rnmh.o snpf.o

all:	${LIB}

${LIB}:	${OBJ}
	${AR}
	${RANLIB}

clean:	FRC
	rm -f ${LIB} ${OBJ} errs Makefile.bak a.out core

FRC:

ckkv.o: ${HDR} ckkv.c

cvfs.o: ${HDR} cvfs.c

dvch.o: ${HDR} dvch.c

fino.o: ${HDR} fino.c

isfn.o: ${HDR} isfn.c

lkud.o: ${HDR} lkud.c

pdvn.o: ${HDR} pdvn.c

prfp.o: ${HDR} prfp.c

ptti.o:	${HDR} ptti.c

rdev.o: ${HDR} rdev.c

regex.o: ${HDR} ../regex.h regex.c

rmnt.o: ${HDR} rmnt.c

rnam.o: ${HDR} rnam.c

rnch.o: ${HDR} rnch.c

rnmh.o: ${HDR} rnmh.c

snpf.o: ${HDR} snpf.c
