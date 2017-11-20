/*
 * Author(s) of this file:
 *   Joachim Kohlbrecher (joachim.kohlbrecher@psi.ch)
 */

#ifdef MAKE_SASFIT_PLUGIN
#include "include/private.h"

// functions to mark for export
SASFIT_PLUGIN_EXP_BEGIN(4)
SASFIT_PLUGIN_EXP_ADD( ff_parallelepiped_abc )
SASFIT_PLUGIN_EXP_ADD( ff_parallelepiped_abc1 )
SASFIT_PLUGIN_EXP_ADD( ff_parallelepiped_abc2 )
SASFIT_PLUGIN_EXP_ADD( ff_parallelepiped_abc3 )

SASFIT_PLUGIN_EXP_END

// import functions from other plugins
SASFIT_PLUGIN_IMP_NONE

SASFIT_PLUGIN_INTERFACE

void do_at_init(void)
{
	// insert custom init code here (optional)
}

#endif

