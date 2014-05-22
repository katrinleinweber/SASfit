/*
 * Author(s) of this file:
 *   Joachim Kohlbrecher(joachim.kohlbrecher@psi.ch)
 *   Modified 19.11.2013
 */
#include <sasfit_oz.h>

// Derjaguin�Landau�Verwey�Overbeek (DLVO) potential.:

//
// G. N�gele,
// The Physics of Colloid Soft Matter: Lecture Notes 14,
// Polish Academy of Sciences Publishing, Warsaw (2004)
// hera.physik.uni-konstanz.de/igk/news/workshops/Naegele.pdf?

#define sigma   p[0] // Diameter of spheres in nm
#define kappa   p[1] // reciprocal Debye�H�ckel screening length
					 // kappa^2=4 pi LB sum(rho_alpha Z_alpha^2,alpha)
#define Z		p[2] // effective or dressed surface charge number of a colloidal particle
#define LB 		p[3] // Bjerrum length LB = e^2/(epsilon kB T), for water at RT LB=0.71
#define A       p[4] // effective Hamaker constant

#define kb GSL_CONST_MKSA_BOLTZMANN

double U_DLVO(double r, double T, double *p) {
	double a,Uel,UvdW;

    if (r<=sigma) {
		return GSL_POSINF;
	} else {
        a = 0.5*sigma;
		Uel =   kb*T*LB*gsl_pow_2(Z)/
                gsl_pow_2(1.0+kappa*a)*
    			exp(-kappa*(r-sigma))/r;
        UvdW = -kb*T*A/6.0 * (
                  2.0*a*a/(r*r-4*a*a)
                + 2.0*gsl_pow_2(a/r)
                + log(1.0-4.0*gsl_pow_2(a/r))
                );
        return Uel+UvdW;
	}
}
