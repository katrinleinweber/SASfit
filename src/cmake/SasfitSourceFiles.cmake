# src/cmake/SasfitSourceFiles.cmake
#
# Copyright (c) 2008-2011, Paul Scherrer Institute (PSI)
#
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of the <organization> nor the
#       names of its contributors may be used to endorse or promote products
#       derived from this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# Author(s) of this file:
#   Ingo Bressler (ingo.bressler@bam.de)
#
#############################################################################
# A Cmake module to provide utility functions often used 
# in sasfit cmake scripts
#
# This module expects to live in <sasfit-dir>/src

cmake_minimum_required(VERSION 2.6.2)
if(${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}.${CMAKE_PATCH_VERSION} VERSION_GREATER 2.6.2)
	cmake_policy(SET CMP0011 OLD)
endif(${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}.${CMAKE_PATCH_VERSION} VERSION_GREATER 2.6.2)

set(SOURCE_sasfit_common
	sasfit_timer.c
	sasfit_gamma.c
	sasfit_utils.c
	sasfit_trapzd.c
	sasfit_integrate.c
	sasfit_mem.c
	sasfit_message.c
	sasfit_function.c
	sasfit_error_common.c
	sasfit_eps.c
	sasfit_plugin_func.c
	sasfit_common.c
	f2c_utils/sasfit_dmilay.c
	f2c_utils/sasfit_struve_h0h1.c
	f2c_utils/sasfit_robertus_utils.c
	f2c_utils/sasfit_zspow.c
	f2c_utils/sasfit_mie_utils.c
	f2c_utils/sasfit_th36.c
	f2c_utils/sasfit_miev0.c
	f2c_utils/sasfit_pfq.c
)

set(SOURCE_sasfit_core
	sasfit_sd.c
	sasfit_sq.c
	sasfit_ff.c
	sasfit_analytpar.c
	sasfit_analytpar_utils.c
	sasfit_vector.c
	sasfit_env.c
	sasfit_error_core.c
	sasfit_core.c
	sasfit_plugin_backend.c
	sasfit_plugin_api.c
	sasfit_plugin_db.c
	sasfit_tclcmd.c
	sasfit_2d.c
)

set(SOURCE_sasfit_sd
	sasfit_sd_beta.c
	sasfit_sd_Delta.c
	sasfit_sd_fractalSD.c
	sasfit_sd_gammaSD.c
	sasfit_sd_GaussDistribution.c
	sasfit_sd_GEV.c
	sasfit_sd_GEX.c
	sasfit_sd_LogNorm.c
	sasfit_sd_Maxwell.c
	sasfit_sd_Monodisperse.c
	sasfit_sd_SchulzZimm.c
	sasfit_sd_Triangular.c
	sasfit_sd_Uniform.c
	sasfit_sd_Weibull.c
	sasfit_sd_LogNorm_fp.c
	sasfit_sd_Rn_Triangular.c
	sasfit_sd_BiLogNorm.c
)

set(SOURCE_sasfit_sq
	sasfit_sq_BabaAhmed2.c
	sasfit_sq_BabaAhmed.c
	sasfit_sq_CorrelationHole.c
	sasfit_sq_CriticalScattering1.c
	sasfit_sq_Cylinder_PRISM.c
	sasfit_sq_HardSphere.c
	sasfit_sq_HayterPenfoldMSA.c
	sasfit_sq_LocalOrderModel.c
	sasfit_sq_MacroIon.c
	sasfit_sq_MassFractal.c
	sasfit_sq_MassFractalGaussianCutOff.c
	sasfit_sq_MassFractExp_mpow_x_a.c
	sasfit_sq_MassFractOverlapSph.c
	sasfit_sq_MCT.c
	sasfit_sq_None.c
	sasfit_sq_PT.c
	sasfit_sq_RandomDistributionModel.c
	sasfit_sq_SquareWell2.c
	sasfit_sq_SquareWell.c
	sasfit_sq_StickyHardSphere2.c
	sasfit_sq_StickyHardSphere.c
	sasfit_sq_TD.c
	sasfit_sq_ThinDiscs.c
	sasfit_sq_ThinCylindricalShell.c
	sasfit_sq_ThinSphericalShell.c
	sasfit_sq_ThinSquareWell.c
)

set(SOURCE_sasfit_peaks
	sasfit_peak_QENS_ConfinementWithGaussianPotential.c
	sasfit_peak_BetaAmplitude.c
	sasfit_peak_BetaArea.c
	sasfit_peak_ChiSquaredAmplitude.c
	sasfit_peak_ChiSquaredArea.c
	sasfit_peak_ErfcPeakAmplitude.c
	sasfit_peak_ErfcPeakArea.c
	sasfit_peak_ErrorAmplitude.c
	sasfit_peak_ErrorArea.c
	sasfit_peak_ExtremeValueAmplitude.c
	sasfit_peak_ExtremeValueArea.c
	sasfit_peak_ExponentiallyModifiedGaussianArea.c
	sasfit_peak_ExponentiallyModifiedGaussianAmplitude.c
	sasfit_peak_fatique_life_area.c
	sasfit_peak_FVarianceAmplitude.c
	sasfit_peak_FVarianceArea.c
	sasfit_peak_GammaAmplitude.c
	sasfit_peak_GammaArea.c
	sasfit_peak_GaussianAmplitude.c
	sasfit_peak_GaussianArea.c
	sasfit_peak_GaussianLorentzianCrossProductAmplitude.c
	sasfit_peak_GaussianLorentzianCrossProductArea.c
	sasfit_peak_GaussianLorentzianSumAmplitude.c
	sasfit_peak_GaussianLorentzianSumArea.c
	sasfit_peak_GeneralizedGaussian1Amplitude.c
	sasfit_peak_GeneralizedGaussian1Area.c
	sasfit_peak_GeneralizedGaussian2Amplitude.c
	sasfit_peak_GeneralizedGaussian2Area.c
	sasfit_peak_GiddingsAmplitude.c
	sasfit_peak_GiddingsArea.c
	sasfit_peak_HaarhoffVanderLindeArea.c
	sasfit_peak_HalfGaussianModifiedGaussianArea.c
	sasfit_peak_InvertedGammaAmplitude.c
	sasfit_peak_InvertedGammaArea.c
	sasfit_peak_KumaraswamyAmplitude.c
	sasfit_peak_KumaraswamyArea.c
	sasfit_peak_LaplaceAmplitude.c
	sasfit_peak_LaplaceArea.c
	sasfit_peak_LogisticAmplitude.c
	sasfit_peak_LogisticArea.c
	sasfit_peak_LogLogisticAmplitude.c
	sasfit_peak_LogLogisticArea.c
	sasfit_peak_LogNormal4ParameterAmplitude.c
	sasfit_peak_LogNormal4ParameterArea.c
	sasfit_peak_LogNormalAmplitude.c
	sasfit_peak_LogNormalArea.c
	sasfit_peak_LorentzianAmplitude.c
	sasfit_peak_LorentzianArea.c
	sasfit_peak_generalizedMaxwellAmplitude.c
	sasfit_peak_generalizedMaxwellArea.c
	sasfit_peak_MaxwellAmplitude.c
	sasfit_peak_MaxwellArea.c
	sasfit_peak_PearsonIVAmplitude.c
	sasfit_peak_PearsonIVArea.c
	sasfit_peak_PearsonVIIAmplitude.c
	sasfit_peak_PearsonVIIArea.c
	sasfit_peak_powerlognormalArea.c
	sasfit_peak_powernormalArea.c
	sasfit_peak_PulsePeakAmplitude.c
	sasfit_peak_PulsePeakArea.c
	sasfit_peak_PulsePeakwith2ndWidthTermAmplitude.c
	sasfit_peak_PulsePeakwith2ndWidthTermArea.c
	sasfit_peak_PulsePeakwithPowerTermAmplitude.c
	sasfit_peak_PulsePeakwithPowerTermArea.c
	sasfit_peak_Student_tAmplitude.c
	sasfit_peak_Student_tArea.c
	sasfit_peak_VoigtPeakAmplitude.c
	sasfit_peak_VoigtPeakArea.c
	sasfit_peak_WeibullAmplitude.c
	sasfit_peak_WeibullArea.c
)

set(SOURCE_sasfit_ff
	sasfit_ff_aux_p\(r\).c
	sasfit_ff_aux_gamma\(r\).c
	psi_a_b/sasfit_ff_a.c
	psi_a_b/sasfit_ff_b.c
	sasfit_ff_alignedCylShell.c
	sasfit_ff_partly_aligned_CylShell.c
	sasfit_ff_Andrea1.c
	sasfit_ff_background.c
	sasfit_ff_BenoitStar.c
	sasfit_ff_BiLayeredVesicle.c
	sasfit_ff_BiLayerGauss.c
	sasfit_ff_BlockCopolymerMicelle.c
	sasfit_ff_BroadPeak.c
	sasfit_ff_CoPolymerMicelleSphericalProfile.c
	sasfit_ff_ellCylinder.c
	sasfit_ff_Cylinder.c
	sasfit_ff_cyl_mic.c
	cyl_rwbrush/utils.c
	cyl_rwbrush/sasfit_ff_cyl_rwbrush.c
	cyl_rwbrush/sasfit_ff_cyl_rwbrush_nagg.c
	cyl_rwbrush/sasfit_ff_cyl_rwbrush_rc.c

	cyl_shell/sasfit_ff_cyl_shell_1.c
	cyl_shell/sasfit_ff_cyl_shell_2.c
	cyl_shell/utils.c
	sasfit_ff_DAB.c
	sasfit_ff_DaisyLikeRing.c
	sasfit_ff_Disc.c
	disc_rwbrush/sasfit_ff_disc_rwbrush.c
	disc_rwbrush/sasfit_ff_disc_rwbrush_lc.c
	disc_rwbrush/sasfit_ff_disc_rwbrush_nagg.c
	sasfit_ff_DLCAggregation.c
	sasfit_ff_DLS_Sphere_RDG.c
	sasfit_ff_DoubleShellChain.c
	sasfit_ff_DoubleShell_withSD.c
	dozier_star/sasfit_ff_dozier_star.c
	dozier_star/sasfit_ff_dozier_star_2.c
	sasfit_ff_dumbbell_shell.c
	ellip_rwbrush/utils.c
	ellip_rwbrush/sasfit_ff_ellip_rwbrush.c
	ellip_rwbrush/sasfit_ff_ellip_rwbrush_rc.c
	ellip_rwbrush/sasfit_ff_ellip_rwbrush_nagg.c
	ellip_core_shell/sasfit_ff_ellip_core_shell.c
	ellip/utils.c
	ellip/sasfit_ff_ellip_1.c
	ellip/sasfit_ff_ellip_2.c
	sasfit_ff_ExpShell.c
	sasfit_ff_FisherBurford.c
	sasfit_ff_flat_cyl.c
	sasfit_ff_FlexibleRingPolymer.c
	sasfit_ff_Fractal.c
	sasfit_ff_francois.c
	gauss/sasfit_ff_gauss_1.c
	gauss/sasfit_ff_gauss_2.c
	gauss/sasfit_ff_gauss_3.c
	gauss/sasfit_ff_gauss_generalized_1.c
	gauss/sasfit_ff_gauss_generalized_2.c
	gauss/sasfit_ff_gauss_generalized_3.c
	gauss/sasfit_ff_gauss_poly.c
	sasfit_ff_guinier.c
	sasfit_ff_HardSphere.c
	sasfit_ff_homogenousXS.c
	sasfit_ff_hysteresesFFpsiStrobo.c
	magnetic_shell/sasfit_ff_magnetic_shell_aniso.c
	magnetic_shell/sasfit_ff_magnetic_shell_psi.c
	magnetic_shell/sasfit_ff_magnetic_shell_cross.c

	p_cs/sasfit_ff_Pcs_ellCylSh.c
	p_cs/sasfit_ff_Pcs_homogeneousCyl.c
	p_cs/sasfit_ff_Pcs_homogeneousPlanar.c

	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_strobo_sq.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_strobo_sq_l2x_pol_albr.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_strobo2.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_strobo_sq_l2x.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_tisane.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_strobo_sq_lx.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_strobo_bt1.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_strobo.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_strobo_sq_l2modx_pol.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_strobo_sq_l2x_pol_albr_stat.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_strobo_ppsi.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_cross.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_aniso.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_strobo_sq_l2x_pol.c
	superparamagnetic_ff_psi/sasfit_ff_superparamagnetic_ff_psi_iso.c
	sasfit_ff_JuelichDoubleShell.c
	sasfit_ff_sphere.c
	sasfit_ff_KholodenkoWorm.c
	sasfit_ff_Ksh.c
	sasfit_ff_KShellcompr.c
	sasfit_ff_KshExp.c
	sasfit_ff_Kshlin.c
	sasfit_ff_Langevin.c
	sasfit_ff_LayeredCentroSymmetricXS.c
	sasfit_ff_LinShell.c
	sasfit_ff_long_cyl.c
	sasfit_ff_MassFractExp.c
	sasfit_ff_MassFractExp_mpow_x_a.c
	sasfit_ff_MassFractGauss.c
	sasfit_ff_MassFractOverlappingSpheres.c
	sasfit_ff_Mie.c
	sasfit_ff_MieShell.c
	sasfit_ff_MLVesicleFrielinghaus.c
	sasfit_ff_mMemberedTwistedRing.c
	sasfit_ff_MultiLamellarVesicle.c
	sasfit_ff_OrnsteinZernike.c
	sasfit_ff_P39.c
	sasfit_ff_PolydisperseStar.c
	sasfit_ff_porod_cyl.c
	sasfit_ff_RLCAggregation.c
	sasfit_ff_RNDMultiLamellarVesicle2.c
	sasfit_ff_RNDMultiLamellarVesicle.c
	sasfit_ff_Robertus1.c
	sasfit_ff_Robertus2.c
	sasfit_ff_Robertus3.c
#	rod/sasfit_ff_rod.c
	sasfit_ff_Rod_Exp_Profile.c
	sasfit_ff_Rod_Gauss_Profile.c
	sasfit_ff_Rodlike_BlockCopolymerMicelle.c
	sasfit_ff_Rod_R_ma_Profile.c
	sasfit_ff_Rod_RWbrush.c
	sasfit_ff_shearedCylinder.c
	sasfit_ff_Shellcompr.c
	sasfit_ff_SphellWithGaussChainsSimon1.c
	sasfit_ff_Sphere_Exp_Profile_Rc.c
	sasfit_ff_Sphere_R_ma_Profile.c
	sasfit_ff_Sphere_R_ma_Profile_Manuela.c
	sasfit_ff_Sphere_RWbrush.c
	sasfit_ff_Sphere_SAWbrush.c
	sasfit_ff_SphereWithGaussChains.c
	sasfit_ff_spherical_shell.c
	sasfit_ff_Spinodal.c
	sasfit_ff_StackDiscs.c
	sasfit_ff_StickyHardSphere.c
	sasfit_ff_TetrahedronDoubleShell.c
	sasfit_ff_TeubnerStrey.c
	sasfit_ff_ThinCylShell_homogenousXS.c
	sasfit_ff_ThinDisc_homogenousXS.c
	sasfit_ff_ThinEllShell_homogenousXS.c
	sasfit_ff_ThinSphShell_homogenousXS.c
	sasfit_ff_Torus.c
	sasfit_ff_triaxEllShell1.c
	sasfit_ff_TripleLayeredHomogeneousCentroSymmetricXS.c
	sasfit_ff_two_attached_spheres.c
	sasfit_ff_TwoInfinitelyThinPlates.c
	sasfit_ff_UnifiedExponetialPowerLaw2.c
	sasfit_ff_UnifiedExponetialPowerLaw.c
	sasfit_ff_VeryLongCylindricalShell.c
	sasfit_ff_very_long_cyl_w_gauss_chains.c
	sasfit_ff_WormLikeChainEXV.c
	sasfit_ff_Worm_R_ma_Profile.c
	sasfit_ff_Worm_RWbrush.c
	sasfit_ff_worm_w_gauss_chains.c
	sasfit_planar_gausschains.c
	sasfit_Pthirtynine.c
)

set(SOURCE_sasfit_oz
	sasfit_oz_solver.c
	sasfit_oz_potential_hard_sphere.c
	sasfit_oz_potential_sticky_hard_sphere.c
	sasfit_oz_potential_soft_sphere.c
	sasfit_oz_potential_lennard_jones.c
	sasfit_oz_potential_ionic_microgel.c
	sasfit_oz_potential_depletion.c
	sasfit_oz_potential_PSM.c
	sasfit_oz_potential_GGCM-n.c
	sasfit_oz_potential_DLVO.c
)

set(SOURCE_sasfit_old
# former sasfit main
	bessi0.c
	bessj0.c
	bessj1.c
	SASFIT_trapzd.c
	SASFIT_polint.c
	SASFIT_qromb.c
	SASFIT_x_tcl.c
	sasfit.c
	SASFIT_resolution.c
# former sasfit extrapol
	ei.c
	erf.c
	gammp.c
	jfrac.c
	pol.c
	SASFIT_covsrt.c
	sasfit_extrapol.c
	SASFIT_fit.c
	SASFIT_gammaq.c
	SASFIT_gaussj.c
	SASFIT_gcf.c
	SASFIT_gser.c
	SASFIT_indexx.c
	SASFIT_mrqcof.c
	SASFIT_mrqmin.c
	SASFIT_nrutil.c
# former sasfit DLS
	DLS/DLS_g2_1.c
	DLS/DLS_models.c
)

set(SOURCE_f2c
	abort_.c
	#    arithchk.c
	backspac.c
	c_abs.c
	cabs.c
	c_cos.c
	c_div.c
	c_exp.c
	c_log.c
	close.c
	c_sin.c
	c_sqrt.c
	d_abs.c
	d_acos.c
	d_asin.c
	d_atan.c
	d_atn2.c
	d_cnjg.c
	d_cos.c
	d_cosh.c
	d_dim.c
	#    derf_.c
	#    derfc_.c
	d_exp.c
	dfe.c
	d_imag.c
	d_int.c
	d_lg10.c
	d_log.c
	d_mod.c
	d_nint.c
	dolio.c
	d_prod.c
	d_sign.c
	d_sin.c
	d_sinh.c
	d_sqrt.c
	d_tan.c
	d_tanh.c
	dtime_.c
	due.c
	ef1asc_.c
	ef1cmc_.c
	endfile.c
	#    erf_.c
	#    erfc_.c
	err.c
	etime_.c
	exit_.c
	f77_aloc.c
	f77vers.c
	fmt.c
	fmtlib.c
	ftell64_.c
	ftell_.c
	#    getarg_.c
	getenv_.c
	h_abs.c
	h_dim.c
	h_dnnt.c
	h_indx.c
	h_len.c
	hl_ge.c
	hl_gt.c
	hl_le.c
	hl_lt.c
	h_mod.c
	h_nint.c
	h_sign.c
	i77vers.c
	i_abs.c
	#    iargc_.c
	i_dim.c
	i_dnnt.c
	i_indx.c
	iio.c
	i_len.c
	ilnw.c
	i_mod.c
	i_nint.c
	inquire.c
	i_sign.c
	lbitbits.c
	lbitshft.c
	l_ge.c
	l_gt.c
	l_le.c
	l_lt.c
	lread.c
	lwrite.c
	#    main.c
	open.c
	pow_ci.c
	pow_dd.c
	pow_di.c
	pow_hh.c
	pow_ii.c
	pow_qq.c
	pow_ri.c
	pow_zi.c
	pow_zz.c
	qbitbits.c
	qbitshft.c
	r_abs.c
	r_acos.c
	r_asin.c
	r_atan.c
	r_atn2.c
	r_cnjg.c
	r_cos.c
	r_cosh.c
	rdfmt.c
	r_dim.c
	rewind.c
	r_exp.c
	r_imag.c
	r_int.c
	r_lg10.c
	r_log.c
	r_mod.c
	r_nint.c
	rsfe.c
	r_sign.c
	r_sin.c
	r_sinh.c
	rsli.c
	rsne.c
	r_sqrt.c
	r_tan.c
	r_tanh.c
	s_cat.c
	s_cmp.c
	s_copy.c
	sfe.c
	sig_die.c
	signal_.c
	signbit.c
	s_paus.c
	s_rnge.c
	s_stop.c
	sue.c
	system_.c
	typesize.c
	uio.c
	uninit.c
	util.c
	wref.c
	wrtfmt.c
	wsfe.c
	wsle.c
	wsne.c
	xwsne.c
	z_abs.c
	z_cos.c
	z_div.c
	z_exp.c
	z_log.c
	z_sin.c
	z_sqrt.c
	sasfit_wofz.c
)

