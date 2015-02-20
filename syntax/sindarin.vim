" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"
" .vim/syntax/sindarin.vim - Quite complete Whizard 2.2 sindarin syntax
"
" Copyright (C) 2014         Bijan Chokoufe Nejad         <bijan@chokoufe.com>
" Recent versions:  https://github.com/bijancn/bcn_scripts
"
" This source code is free software that comes with ABSOLUTELY NO WARRANTY; you
" can redistribute it and/or modify it under the terms of the GNU GPL Version 2:
" http://www.gnu.org/licenses/gpl-2.0-standalone.html
"
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

"=========="
"  prelim  "
"=========="
" Remove any old syntax stuff hanging around
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
  w
endif

"=================="
"  keyword regexs  "
"=================="
syn match sindarinComment     "#.*$"
syn match sindarinComment     "!.*$"

syn keyword sindarinBoolean   false true
syn match sindarinInteger     "-\=\<[0-9]*\>"
syn match sindarinFloat       "-\=\<[0-9]*\.[0-9]*"
syn match sindarinUnit        "\(.\?eV\|degree\|mrad\|rad\|nbarn\|abarn\|fbarn\|pbarn\)"
syn match sindarinString      "\".*\""

syn match sindarinOperator    "\(\(>\|<\)=\=\|=\)"
syn match sindarinOperator    "=>"
syn match sindarinOperator    "\(+\|-\|/\|\*\)"
syn keyword sindarinOperator  and or

syn match sindarinCombined   "[a-zA-Z0-9]*:[a-zA-Z0-9]*"
syn keyword sindarinLogFunc   all any no
syn keyword sindarinFunction  abs ceiling floor sgn mod modulo max min

syn keyword sindarinType cmplx int logical real stable unpolarized unstable
syn keyword sindarinStatement clear compile as integrate simulate show echo exec expect include
syn keyword sindarinStatement if then else end read_slha compile_analysis write_analysis
syn keyword sindarinStatement alias histogram plot process record scan combine eval nextgroup=sindarinProc skipwhite
syn match sindarinProc "\%(\%(alias\|histogram\|plot\|process\|record\|scan\)\s*\)\@<=\h\%(\w\|\.\)*" contained

setlocal iskeyword+=_
syn keyword sindarinBuiltin epsilon range real_precision results
syn keyword sindarinFormats ascii athena debug hepevt hepmc lha lhef long mokka short stdhep stdhep_up
syn keyword sindarinBeamstructure circe1 circe2 pdf_builtin lhapdf user_strfun

syn keyword sindarinSettings analysis analysis_filename auto_decays beams beams_momentum channel_weights_power check_events_file check_grid_file checkpoint cuts description diagonal_decay diags diags_color fatal_beam_decay isotropic_decay iterations keep_beams label library luminosity model n_calls_test negative_weights n_events observable out_file physical_unit rebuild rebuild_events recompile restrictions safety_factor sample sample_format sample_normalization scale seed slha_read_decays sqrts tolerance unweighted update_event update_sqme update_weight
" Extensions
syn keyword sindarinSettings extension_ascii extension_ascii_long extension_ascii_short extension_debug extension_hepevt extension_hepmc extension_lhef
" VAMP and phasespace
syn keyword sindarinSettings check_phs_file use_vamp_equivalences vis_channels vis_history
" alpha_s
syn keyword sindarinSettings alphas alpha_s_is_fixed alpha_s_from_mz alpha_s_from_lambda_qcd alpha_s_order
" Plotting
syn keyword sindarinSettings draw_curve draw_histogram draw_options gmlcode_fg title n_bins x_label x_log x_min x_max y_label y_min y_max y_log
" Shower and hadronization
syn keyword sindarinSettings allow_shower hadronization_active mlm_Rmin mlm_etamax mlm_matching mlm_nmaxMEjets mlm_ptmin muli_active ps_PYTHIA_PYGIVE ps_fsr_active ps_isr_active ps_isr_only_onshell_emitted_partons ps_isr_primordial_kt_width ps_isr_pt_ordered ps_isr_tscalefactor ps_mass_cutoff ps_max_n_flavors ps_use_PYTHIA_shower
" CIRCE1
syn keyword sindarinSettings circe1_acc circe1_chat circe1_eps circe1_generate circe1_map circe1_mapping_slope circe1_photon1 circe1_photon2 circe1_photons circe1_rev circe1_sqrts circe1_ver
" CIRCE2
syn keyword sindarinSettings circe2_design circe2_file circe2_polarized
" GOSAM + NLO
syn keyword sindarinSettings use_gosam_loops use_gosam_correlations use_gosam_real_trees alpha_power alphas_power combined_nlo_integration
" POWHEG
syn keyword sindarinSettings powheg_pt_min powheg_grid_sampling_points powheg_grid_size_xi powheg_grid_size_y powheg_matching

"===================="
"  linking keywords  "
"===================="
hi def link sindarinBoolean         Boolean
hi def link sindarinComment         Comment
hi def link sindarinFloat           Float
hi def link sindarinBuiltin         SpecialKey
hi def link sindarinBeamstructure   SpecialKey
hi def link sindarinInteger         Number
hi def link sindarinOperator        Operator
hi def link sindarinLogFunc         Function
hi def link sindarinFunction        Function
hi def link sindarinCombined        Special
hi def link sindarinProc            Identifier
hi def link sindarinSettings        Include
hi def link sindarinStatement       Statement
hi def link sindarinString          String
hi def link sindarinType            Type
hi def link sindarinUnit            Constant
