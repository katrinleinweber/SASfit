/*
 * src/sasfit_peaks/sasfit_peak_ErrorAmplitude.c
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
 */

#include <gsl/gsl_math.h>
#include "include/sasfit_peaks_utils.h"

#define AMPL   param->p[0]
#define CENTER param->p[1]
#define WIDTH  fabs(param->p[2])
#define SHAPE  fabs(param->p[3])
#define BACKGR param->p[4]

scalar sasfit_peak_ErrorAmplitude(scalar x, sasfit_param * param)
{
	scalar z, a0;
	SASFIT_ASSERT_PTR( param );

	SASFIT_CHECK_COND1((WIDTH == 0), param, "width(%lg) == 0",WIDTH);
	SASFIT_CHECK_COND1((SHAPE == 0), param, "shape(%lg) == 0",SHAPE);
	
	a0 = AMPL;
	z = .5*pow(fabs(x-CENTER),2./SHAPE)/WIDTH;
	return BACKGR+a0*exp(-z);
}

