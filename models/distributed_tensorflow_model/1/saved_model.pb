ÄÄ
ě
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
p
	AssignAdd
ref"T

value"T

output_ref"T"
Ttype:
2	"
use_lockingbool( 
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
4
Fill
dims

value"T
output"T"	
Ttype

Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype


LogicalNot
x

y

8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Square
x"T
y"T"
Ttype:
	2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
9
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 

Where	
input
	
index	"serve*1.4.02v1.4.0-rc1-11-g130a514łĽ
n
PlaceholderPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
S
IdentityIdentityPlaceholder*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
Placeholder_1Placeholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
Placeholder_2Placeholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
weight/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
j
weight
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 

weight/AssignAssignweightweight/initial_value*
validate_shape(*
_class
loc:@weight*
use_locking(*
T0*
_output_shapes
: 
[
weight/readIdentityweight*
_class
loc:@weight*
T0*
_output_shapes
: 
W
bias/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
h
bias
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 

bias/AssignAssignbiasbias/initial_value*
validate_shape(*
_class
	loc:@bias*
use_locking(*
T0*
_output_shapes
: 
U
	bias/readIdentitybias*
_class
	loc:@bias*
T0*
_output_shapes
: 
[
global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
o
global_step
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ž
global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0*
_output_shapes
: 
X
MulMulPlaceholder_1weight/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
P
subSubPlaceholder_2Mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
sub_1Subsub	bias/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
I
SquareSquaresub_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
ConstConst*
dtype0*
valueB"       *
_output_shapes
:
W
SumSumSquareConst*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
T
gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
q
 gradients/Sum_grad/Reshape/shapeConst*
dtype0*
valueB"      *
_output_shapes
:

gradients/Sum_grad/ReshapeReshapegradients/Fill gradients/Sum_grad/Reshape/shape*
_output_shapes

:*
Tshape0*
T0
^
gradients/Sum_grad/ShapeShapeSquare*
out_type0*
T0*
_output_shapes
:

gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
gradients/Square_grad/mul/xConst^gradients/Sum_grad/Tile*
dtype0*
valueB
 *   @*
_output_shapes
: 
v
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Square_grad/mul_1Mulgradients/Sum_grad/Tilegradients/Square_grad/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
gradients/sub_1_grad/ShapeShapesub*
out_type0*
T0*
_output_shapes
:
_
gradients/sub_1_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
ş
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¨
gradients/sub_1_grad/SumSumgradients/Square_grad/mul_1*gradients/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
Ź
gradients/sub_1_grad/Sum_1Sumgradients/Square_grad/mul_1,gradients/sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
^
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
â
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
×
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*
T0*
_output_shapes
: 
e
gradients/sub_grad/ShapeShapePlaceholder_2*
out_type0*
T0*
_output_shapes
:
]
gradients/sub_grad/Shape_1ShapeMul*
out_type0*
T0*
_output_shapes
:
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ś
gradients/sub_grad/SumSum-gradients/sub_1_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
ş
gradients/sub_grad/Sum_1Sum-gradients/sub_1_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ú
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
gradients/Mul_grad/ShapeShapePlaceholder_1*
out_type0*
T0*
_output_shapes
:
]
gradients/Mul_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
´
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/Mul_grad/mulMul-gradients/sub_grad/tuple/control_dependency_1weight/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Mul_grad/SumSumgradients/Mul_grad/mul(gradients/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

gradients/Mul_grad/mul_1MulPlaceholder_1-gradients/sub_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
Ú
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/Mul_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1*
T0*
_output_shapes
: 
b
GradientDescent/learning_rateConst*
dtype0*
valueB
 *
×#<*
_output_shapes
: 
ď
2GradientDescent/update_weight/ApplyGradientDescentApplyGradientDescentweightGradientDescent/learning_rate-gradients/Mul_grad/tuple/control_dependency_1*
_class
loc:@weight*
use_locking( *
T0*
_output_shapes
: 
ë
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate/gradients/sub_1_grad/tuple/control_dependency_1*
_class
	loc:@bias*
use_locking( *
T0*
_output_shapes
: 

GradientDescent/updateNoOp3^GradientDescent/update_weight/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent

GradientDescent/valueConst^GradientDescent/update*
dtype0*
_class
loc:@global_step*
value	B :*
_output_shapes
: 

GradientDescent	AssignAddglobal_stepGradientDescent/value*
_class
loc:@global_step*
use_locking( *
T0*
_output_shapes
: 
Z
Mul_1MulPlaceholder_1weight/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
addAddMul_1	bias/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
	loss/tagsConst*
dtype0*
valueB
 Bloss*
_output_shapes
: 
F
lossScalarSummary	loss/tagsSum*
T0*
_output_shapes
: 
I
Merge/MergeSummaryMergeSummaryloss*
_output_shapes
: *
N
?
initNoOp^weight/Assign^bias/Assign^global_step/Assign
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
z
save/SaveV2/tensor_namesConst*
dtype0*.
value%B#BbiasBglobal_stepBweight*
_output_shapes
:
i
save/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B *
_output_shapes
:

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbiasglobal_stepweight*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
h
save/RestoreV2/tensor_namesConst*
dtype0*
valueBBbias*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/AssignAssignbiassave/RestoreV2*
validate_shape(*
_class
	loc:@bias*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_1/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save/Assign_1Assignglobal_stepsave/RestoreV2_1*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
l
save/RestoreV2_2/tensor_namesConst*
dtype0*
valueBBweight*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_2Assignweightsave/RestoreV2_2*
validate_shape(*
_class
loc:@weight*
use_locking(*
T0*
_output_shapes
: 
F
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables

4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedweight*
dtype0*
_class
loc:@weight*
_output_shapes
: 

6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedbias*
dtype0*
_class
	loc:@bias*
_output_shapes
: 
Ą
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedglobal_step*
dtype0*
_class
loc:@global_step*
_output_shapes
: 

$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_2*
N*
_output_shapes
:*
T0
*

axis 
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:

$report_uninitialized_variables/ConstConst*
dtype0*.
value%B#BweightBbiasBglobal_step*
_output_shapes
:
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ů
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
ő
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
á
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
Ż
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
N*
_output_shapes
:*
T0*

axis 
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ť
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
Ë
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
_output_shapes
:*
Tshape0*
T0

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
Ű
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
_output_shapes
:*
Tshape0*
T0


1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

init_1NoOp

init_all_tables_1NoOp
/

group_depsNoOp^init_1^init_all_tables_1
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_051ed59fa7f34686928f918141e90b27/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
|
save_1/SaveV2/tensor_namesConst*
dtype0*.
value%B#BbiasBglobal_stepBweight*
_output_shapes
:
k
save_1/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B *
_output_shapes
:

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbiasglobal_stepweight*
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
_output_shapes
:*
T0*

axis 

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
j
save_1/RestoreV2/tensor_namesConst*
dtype0*
valueBBbias*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save_1/AssignAssignbiassave_1/RestoreV2*
validate_shape(*
_class
	loc:@bias*
use_locking(*
T0*
_output_shapes
: 
s
save_1/RestoreV2_1/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
¤
save_1/Assign_1Assignglobal_stepsave_1/RestoreV2_1*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
n
save_1/RestoreV2_2/tensor_namesConst*
dtype0*
valueBBweight*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:

save_1/Assign_2Assignweightsave_1/RestoreV2_2*
validate_shape(*
_class
loc:@weight*
use_locking(*
T0*
_output_shapes
: 
P
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
trainable_variables~|
@
weight:0weight/Assignweight/read:02weight/initial_value:0
8
bias:0bias/Assignbias/read:02bias/initial_value:0"
local_init_op


group_deps"ă
	variablesŐŇ
@
weight:0weight/Assignweight/read:02weight/initial_value:0
8
bias:0bias/Assignbias/read:02bias/initial_value:0
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0"D
ready_op8
6
4report_uninitialized_variables/boolean_mask/Gather:0"
train_op

GradientDescent"$
legacy_init_op

legacy_init_op"
	summaries


loss:0*é
serving_defaultŐ
,
keys$
Placeholder:0˙˙˙˙˙˙˙˙˙
2
features&
Placeholder_1:0˙˙˙˙˙˙˙˙˙)
keys!

Identity:0˙˙˙˙˙˙˙˙˙*

prediction
add:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict