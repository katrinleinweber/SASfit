/*
 * src/sasfit_ff/ellip_core_shell/include/public.h
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

#ifndef ELLIP_CORE_SHELL_H
#define ELLIP_CORE_SHELL_H

sasfit_ff_DLLEXP scalar sasfit_ff_ellip_core_shell(scalar q, sasfit_param * param);
sasfit_ff_DLLEXP scalar sasfit_ff_ellip_core_shell_f(scalar q, sasfit_param * param);
sasfit_ff_DLLEXP scalar sasfit_ff_ellip_core_shell_v(scalar q, sasfit_param * param, int distr);

#endif

