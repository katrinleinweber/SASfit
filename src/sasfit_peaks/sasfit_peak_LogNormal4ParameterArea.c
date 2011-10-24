/*
 * src/sasfit_peaks/sasfit_peak_LogNormal4ParameterArea.c
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
#include <gsl/gsl_sf.h>
#include "include/sasfit_peaks_utils.h"

#define AREA param->p[0]
#define CENTER param->p[1]
#define WIDTH param->p[2]
#define SHAPE param->p[3]
#define BCKGR param->p[4]

scalar sasfit_peak_LogNormal4ParameterArea(scalar x, sasfit_param * param)
{
	scalar y;

	SASFIT_ASSERT_PTR( param );

	SASFIT_CHECK_COND1((WIDTH <= 0), param, "width(%lg) <= 0 ",WIDTH);
	SASFIT_CHECK_COND1((SHAPE <= 0), param, "shape(%lg) <= 0 ",SHAPE);

	if (((x>=CENTER-WIDTH*SHAPE/(SHAPE*SHAPE-1.)) && (SHAPE<1)) || ((x<=CENTER-WIDTH*SHAPE/(SHAPE*SHAPE-1.)) && (SHAPE>1))) {
		y= BCKGR;
	} else {
		if (SHAPE != 1.) {
			y = BCKGR +
				AREA*sqrt(log(2.))*(SHAPE*SHAPE-1.) /
				(WIDTH*SHAPE*log(SHAPE)*sqrt(M_PI)*exp(log(SHAPE)*log(SHAPE)/(4.*log(2.)))) *
				exp(-log(2.)/(log(SHAPE)*log(SHAPE)) * pow(log((x-CENTER)*(SHAPE*SHAPE-1.)/(SHAPE*WIDTH)+1.),2.));
		} else {
			y = BCKGR +
				AREA*sqrt(log(2.)) / (WIDTH*sqrt(M_PI)) *
				pow(2.,1.-4.*pow((x-CENTER)/WIDTH,2));
		}
	}
	return y;
}

