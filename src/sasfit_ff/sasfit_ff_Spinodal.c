/*
 * src/sasfit_ff/sasfit_ff_Spinodal.c
 *
 * Copyright (c) 2008-2009, Paul Scherrer Institute (PSI)
 *
 * This file is part of SASfit.
 *
 * SASfit is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * SASfit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with SASfit.  If not, see <http://www.gnu.org/licenses/>.
 */

/*
 * Author(s) of this file:
 *   Joachim Kohlbrecher (joachim.kohlbrecher@psi.ch)
 *   Ingo Bressler (ingo@cs.tu-berlin.de)
 */

#include <gsl/gsl_math.h>
#include "include/sasfit_ff_utils.h"


/*
float Spinodal(Tcl_Interp *interp,
			float Q,
				float Qmax,
				float gamma,
			float I0,
				bool  *error)
 */
scalar sasfit_ff_Spinodal(scalar q, sasfit_param * param)
{
	scalar tmp, c;
	scalar Qmax, gamma, I0;

        SASFIT_ASSERT_PTR(param);

	sasfit_get_param(param, 3, &Qmax, &gamma, &I0);

	SASFIT_CHECK_COND1((q < 0.0), param, "q(%lg) < 0",q);
	SASFIT_CHECK_COND1((gamma <= 0.0), param, "gamma(%lg) < 0",gamma);
	SASFIT_CHECK_COND1((Qmax <= 0.0), param, "Qmax(%lg) < 0",Qmax);

	tmp = q/Qmax;
	c = gamma/2.+pow(tmp,2.+gamma);

	SASFIT_CHECK_COND((c == 0.0), param, "gamma/2+(q/qmax)^(2+gamma) == 0");

	return I0*tmp*tmp*(1.+gamma/2.)/c;
}
