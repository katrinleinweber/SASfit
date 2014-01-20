/*
 * src/sasfit_old/erf.c
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

#include "gsl/gsl_sf_erf.h" 
#include "include/SASFIT_nr.h"

float sasfit_erf(Tcl_Interp *interp, float x, bool *error)
{
//	float gammp();
//	return x < 0.0 ? -gammp(interp,0.5,x*x,error) : gammp(interp,0.5,x*x,error);
	return gsl_sf_erf(x);
}
/*
float sasfit_erf_pure(float x)
{
//	float gammp();
//	return x < 0.0 ? -gammp(interp,0.5,x*x,error) : gammp(interp,0.5,x*x,error);
	return gsl_sf_erf(x);
}
*/
