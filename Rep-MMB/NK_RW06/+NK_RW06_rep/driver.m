%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'NK_RW06_rep';
M_.dynare_version = '6.5';
oo_.dynare_version = '6.5';
options_.dynare_version = '6.5';
%
% Some global variables initialization
%
global_initialization;
options_.console_mode = true;
options_.nodisplay = true;
options_.nograph = true;
options_.nointeractive = true;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'u'};
M_.exo_names_tex(1) = {'u'};
M_.exo_names_long(1) = {'u'};
M_.endo_names = cell(3,1);
M_.endo_names_tex = cell(3,1);
M_.endo_names_long = cell(3,1);
M_.endo_names(1) = {'x'};
M_.endo_names_tex(1) = {'x'};
M_.endo_names_long(1) = {'x'};
M_.endo_names(2) = {'pi'};
M_.endo_names_tex(2) = {'pi'};
M_.endo_names_long(2) = {'pi'};
M_.endo_names(3) = {'R'};
M_.endo_names_tex(3) = {'R'};
M_.endo_names_long(3) = {'R'};
M_.endo_partitions = struct();
M_.param_names = cell(7,1);
M_.param_names_tex = cell(7,1);
M_.param_names_long = cell(7,1);
M_.param_names(1) = {'sigma'};
M_.param_names_tex(1) = {'sigma'};
M_.param_names_long(1) = {'sigma'};
M_.param_names(2) = {'eta'};
M_.param_names_tex(2) = {'eta'};
M_.param_names_long(2) = {'eta'};
M_.param_names(3) = {'beta'};
M_.param_names_tex(3) = {'beta'};
M_.param_names_long(3) = {'beta'};
M_.param_names(4) = {'omega'};
M_.param_names_tex(4) = {'omega'};
M_.param_names_long(4) = {'omega'};
M_.param_names(5) = {'kappa'};
M_.param_names_tex(5) = {'kappa'};
M_.param_names_long(5) = {'kappa'};
M_.param_names(6) = {'phipi'};
M_.param_names_tex(6) = {'phipi'};
M_.param_names_long(6) = {'phipi'};
M_.param_names(7) = {'phix'};
M_.param_names_tex(7) = {'phix'};
M_.param_names_long(7) = {'phix'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 3;
M_.param_nbr = 7;
M_.orig_endo_nbr = 3;
M_.aux_vars = [];
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.eq_nbr = 3;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 0;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 0;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 0;
M_.lead_lag_incidence = [
 1 4;
 2 5;
 3 0;]';
M_.nstatic = 1;
M_.nfwrd   = 2;
M_.npred   = 0;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 0;
M_.ndynamic   = 2;
M_.dynamic_tmp_nbr = [0; 0; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'R' ;
  2 , 'name' , 'x' ;
  3 , 'name' , 'pi' ;
};
M_.mapping.x.eqidx = [1 2 3 ];
M_.mapping.pi.eqidx = [1 2 3 ];
M_.mapping.R.eqidx = [1 2 3 ];
M_.mapping.u.eqidx = [2 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = true;
M_.block_structure.block(1).Simulation_Type = 7;
M_.block_structure.block(1).endo_nbr = 3;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 2 3 1];
M_.block_structure.block(1).variable = [ 1 2 3];
M_.block_structure.block(1).is_linear = true;
M_.block_structure.block(1).NNZDerivatives = 3;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 0 1 0 0 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.variable_reordered = [ 1 2 3];
M_.block_structure.equation_reordered = [ 2 3 1];
M_.block_structure.incidence(1).lead_lag = 0;
M_.block_structure.incidence(1).sparse_IM = [
 1 1;
 1 2;
 1 3;
 2 1;
 2 3;
 3 1;
 3 2;
 3 3;
];
M_.block_structure.incidence(2).lead_lag = 1;
M_.block_structure.incidence(2).sparse_IM = [
 2 1;
 2 2;
 3 2;
];
M_.block_structure.dyn_tmp_nbr = 0;
M_.state_var = [];
M_.maximum_lag = 0;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 0;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(3, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(7, 1);
M_.endo_trends = struct('deflator', cell(3, 1), 'log_deflator', cell(3, 1), 'growth_factor', cell(3, 1), 'log_growth_factor', cell(3, 1));
M_.NNZDerivatives = [12; 0; -1; ];
M_.dynamic_g1_sparse_rowval = int32([1 2 3 1 3 1 2 3 2 2 3 2 ]);
M_.dynamic_g1_sparse_colval = int32([4 4 4 5 5 6 6 6 7 8 8 10 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 1 4 6 9 10 12 12 13 ]);
M_.dynamic_g2_sparse_indices = int32([]);
M_.lhs = {
'R'; 
'x'; 
'pi'; 
};
M_.static_tmp_nbr = [0; 0; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 6;
M_.block_structure_stat.block(1).endo_nbr = 3;
M_.block_structure_stat.block(1).mfs = 3;
M_.block_structure_stat.block(1).equation = [ 1 2 3];
M_.block_structure_stat.block(1).variable = [ 2 3 1];
M_.block_structure_stat.variable_reordered = [ 2 3 1];
M_.block_structure_stat.equation_reordered = [ 1 2 3];
M_.block_structure_stat.incidence.sparse_IM = [
 1 1;
 1 2;
 1 3;
 2 2;
 2 3;
 3 1;
 3 2;
 3 3;
];
M_.block_structure_stat.tmp_nbr = 0;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 2 3 1 2 3 1 3 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 1 1 2 2 2 3 3 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 4 7 9 ]);
M_.static_g1_sparse_rowval = int32([1 3 1 2 3 1 2 3 ]);
M_.static_g1_sparse_colval = int32([1 1 2 2 2 3 3 3 ]);
M_.static_g1_sparse_colptr = int32([1 3 6 9 ]);
M_.params(1) = 1.5;
sigma = M_.params(1);
M_.params(2) = 1;
eta = M_.params(2);
M_.params(3) = 0.99;
beta = M_.params(3);
M_.params(4) = 0.75;
omega = M_.params(4);
M_.params(5) = (1-M_.params(4))*(1-M_.params(4)*M_.params(3))/M_.params(4);
kappa = M_.params(5);
M_.params(6) = 1.1;
phipi = M_.params(6);
M_.params(7) = 1;
phix = M_.params(7);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
options_.ar = 0;
options_.irf = 0;
options_.nocorr = true;
options_.nodecomposition = true;
options_.nofunctions = true;
options_.nograph = true;
options_.nomodelsummary = true;
options_.nomoments = true;
options_.noprint = true;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'NK_RW06_rep_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_RW06_rep_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_RW06_rep_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_RW06_rep_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_RW06_rep_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_RW06_rep_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_RW06_rep_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_RW06_rep_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
