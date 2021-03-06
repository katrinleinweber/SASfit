/*
 * Author(s) of this file:
 *   Joachim Kohlbrecher (joachim.kohlbrecher@psi.ch)
 */


#include "include/private.h"
#include <sasfit_error_ff.h>

scalar sinc(scalar x) {
	if (fabs(x)<1e-6) {
		return 1-gsl_pow_2(x)/6.0+gsl_pow_4(x)/120.-gsl_pow_6(x)/5040.+gsl_pow_8(x)/362880.;
	} else {
		return sin(x)/x;
	}
}

scalar Kernel_P(const double *gam, void * pam) {
	sasfit_param *param;
	param = (sasfit_param *) pam;
	param->p[MAXPAR-3] = gam[0];
	param->p[MAXPAR-2] = gam[1];
	return 2./M_PI * gsl_pow_2(sinc(Q*NUA/2.0*sin(param->p[MAXPAR-2])*cos(param->p[MAXPAR-3])) *
				               sinc(Q*NUB/2.0*sin(param->p[MAXPAR-2])*sin(param->p[MAXPAR-3])) *
							   sinc(Q*NUC/2.0*cos(param->p[MAXPAR-2]))*NUA*NUB*NUC*ETA) * sin(param->p[MAXPAR-2]);
}

int K_cubature(unsigned ndim, const double *x, void *pam,
      unsigned fdim, double *fval) {
	scalar LNdistr;
	sasfit_param subParam;
	sasfit_param *param;
	param = (sasfit_param *) pam;
	sasfit_init_param( &subParam );
	
	fval[0] = 0;
	if ((ndim < 2) || (fdim < 1)) {
		sasfit_out("false dimensions fdim:%d ndim:%d\n",fdim,ndim);
		return 1;
	}
	subParam.p[0] = 1.0;
	subParam.p[1] = SIGMA;
	subParam.p[2] = 1.0;
	subParam.p[3] = 1.0;
	LNdistr = sasfit_sd_LogNorm(x[2], &subParam);
	
	if (NUDIM ==3) {
		NUA = x[2]*A;
		NUB = x[2]*B;
		NUC = x[2]*C;
	} else if (NUDIM ==2) {
		NUA = x[2]*A;
		NUB = x[2]*B;
		NUC = C;
	} else if (NUDIM ==1) {
		NUA = x[2]*A;
		NUB = B;
		NUC = C;
	}
	SASFIT_CHECK_SUB_ERR(param, subParam);
	if ( subParam.errStatus != FALSE ) return 1;
	
    fval[0] = LNdistr*Kernel_P(x,pam);
    return 0;
} 

scalar find_LogNorm_int_range(scalar dim, scalar x0, scalar sigma, scalar *Xstart, scalar *Xend, sasfit_param *param) 
{
	scalar a1,a2,a3,a4, X_0, X_50, X_n, nperc;
	nperc = 0.1;
	a3 = 1.0;
	a4 = fabs(x0);
	a2 = fabs(sigma);
	X_0  = a4*exp(-a2*a2*(a3-2.0*dim));
	X_n  = a4*exp(-a2*a2*(a3-2.0*dim)+sqrt(2.0*a2*a2*log(100.0/nperc)));
	X_50 = a4*exp(-a2*a2*(a3-2.0*dim)+sqrt(2.0*a2*a2*log(100.0/50.0)));

	SASFIT_CHECK_COND((X_50 == 0.0), param, "Can't guess good integration interval");

	*Xstart = 0.0;
	*Xend = X_n;

	if ((X_n-X_0) < X_0)
	{
		*Xend = X_n;
		*Xstart = 2.0*X_0-X_n;
	}
	return 0;
}
