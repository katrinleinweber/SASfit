/*
 * src/sasfit_ff/magnetic_shell/sasfit_ff_magnetic_shell_aniso.c
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

#include "include/private.h"

scalar sasfit_ff_magnetic_shell_aniso(scalar q, sasfit_param * param)
{
	MAGNETIC_SHELL_HEADER;

	MAGNETIC_SHELL_KNUC_KMAG;

	res = (1.0-POL)/2.0 * (kmag*kmag+2.0*knuc*kmag) + (1.0+POL)/2.0 * (kmag*kmag-2.0*knuc*kmag);

	return res;
}

