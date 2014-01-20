/*
 * Author(s) of this file:
 *   Joachim Kohlbrecher (joachim.kohlbrecher@psi.ch)
 */

#include "include/private.h"
#include <sasfit_error_sq.h>

// define shortcuts for local parameters/variables
#define R	param->p[0]

scalar sasfit_sq_sq_oz_4(scalar q, sasfit_param * param)
{
    double res;
    int evalOK;

	SASFIT_ASSERT_PTR(param); // assert pointer param is valid

	SASFIT_CHECK_COND1((q < 0.0), param, "q(%lg) < 0",q);
	SASFIT_CHECK_COND1((R < 0.0), param, "R(%lg) < 0",R); // modify condition to your needs

	if (sq3akima_T==NULL) {
        return 1.0;
	} else {
	     evalOK=gsl_spline_eval_e(sq4akima_T,q*2*R,acc_spline4,&res);
	     if (evalOK==GSL_SUCCESS) {
            return res;
	     } else {
            return 1.0;
	     }
	}

	// insert your code here
	return 0.0;
}

scalar sasfit_sq_sq_oz_4_f(scalar q, sasfit_param * param)
{
	SASFIT_ASSERT_PTR(param); // assert pointer param is valid

	// insert your code here
	return 0.0;
}

scalar sasfit_sq_sq_oz_4_v(scalar q, sasfit_param * param, int dist)
{
	SASFIT_ASSERT_PTR(param); // assert pointer param is valid
	if (sq4akima_T==NULL) {
        sq4akima_T = gsl_spline_alloc(gsl_interp_akima,dist);
        gsl_spline_init(sq4akima_T, param->xarr, param->yarr, dist);
        sasfit_out("did the initialization.\nno spline was predefined\nnew spline generated from %d data points\n",dist);
	} else {
	    gsl_spline_free(sq4akima_T);
        sq4akima_T = gsl_spline_alloc(gsl_interp_akima,dist);
        gsl_spline_init(sq4akima_T, param->xarr, param->yarr, dist);
        sasfit_out("did the initialization.\nexisting spline was replaced\nnew spline generated from %d data points\n",dist);
	}

	// insert your code here
	return 0.0;
}

