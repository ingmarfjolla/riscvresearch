/**************************************************************************/
/*                                                                        */
/*  This file is part of FISSC.                                           */
/*                                                                        */
/*  you can redistribute it and/or modify it under the terms of the GNU   */
/*  Lesser General Public License as published by the Free Software       */
/*  Foundation, version 3.0.                                              */
/*                                                                        */
/*  It is distributed in the hope that it will be useful,                 */
/*  but WITHOUT ANY WARRANTY; without even the implied warranty of        */
/*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         */
/*  GNU Lesser General Public License for more details.                   */
/*                                                                        */
/*  See the GNU Lesser General Public License version 3.0                 */
/*  for more details (enclosed in the file LICENSE).                      */
/*                                                                        */
/**************************************************************************/

/*$
  @name = VerifyPIN_1_HB
  @feature = verifyPIN
  @fault-model = test-inversion
  @attack-scenario = oracle
  @countermeasure = Hardened booleans
  @maintainers = Etienne Boespflug, VERIMAG
  @authors = Lionel Rivière, SERTIF Consortium
  @version 2.2
*/

#include <stdio.h>

#include "interface.h"
#include "types.h"
#include "lazart.h"

extern UBYTE g_countermeasure;
extern BOOL g_authenticated;
extern SBYTE g_ptc;

BOOL verifyPIN(void);

int main()
{
    initialize();
    verifyPIN();
    LAZART_ORACLE(oracle());

    printf("[@] g_countermeasure = %i, g_authenticated = %x, g_ptc = %i\n", g_countermeasure, g_authenticated, g_ptc);
    return 0;
}
