ДЭ
уи
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceѕ
ч
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%иЛ8"&
exponential_avg_factorfloat%  ђ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0ѕ
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48Н█
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
Ц
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_1/bias/*
dtype0*
shape:ю*$
shared_nameAdam/v/dense_1/bias
x
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes	
:ю*
dtype0
Ц
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_1/bias/*
dtype0*
shape:ю*$
shared_nameAdam/m/dense_1/bias
x
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes	
:ю*
dtype0
░
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_1/kernel/*
dtype0*
shape:
ђю*&
shared_nameAdam/v/dense_1/kernel
Ђ
)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel* 
_output_shapes
:
ђю*
dtype0
░
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_1/kernel/*
dtype0*
shape:
ђю*&
shared_nameAdam/m/dense_1/kernel
Ђ
)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel* 
_output_shapes
:
ђю*
dtype0
м
"Adam/v/batch_normalization_10/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_10/beta/*
dtype0*
shape:ђ*3
shared_name$"Adam/v/batch_normalization_10/beta
ќ
6Adam/v/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_10/beta*
_output_shapes	
:ђ*
dtype0
м
"Adam/m/batch_normalization_10/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_10/beta/*
dtype0*
shape:ђ*3
shared_name$"Adam/m/batch_normalization_10/beta
ќ
6Adam/m/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_10/beta*
_output_shapes	
:ђ*
dtype0
Н
#Adam/v/batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_10/gamma/*
dtype0*
shape:ђ*4
shared_name%#Adam/v/batch_normalization_10/gamma
ў
7Adam/v/batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_10/gamma*
_output_shapes	
:ђ*
dtype0
Н
#Adam/m/batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_10/gamma/*
dtype0*
shape:ђ*4
shared_name%#Adam/m/batch_normalization_10/gamma
ў
7Adam/m/batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_10/gamma*
_output_shapes	
:ђ*
dtype0
Ъ
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *"

debug_nameAdam/v/dense/bias/*
dtype0*
shape:ђ*"
shared_nameAdam/v/dense/bias
t
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes	
:ђ*
dtype0
Ъ
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *"

debug_nameAdam/m/dense/bias/*
dtype0*
shape:ђ*"
shared_nameAdam/m/dense/bias
t
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes	
:ђ*
dtype0
Е
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense/kernel/*
dtype0*
shape:	@ђ*$
shared_nameAdam/v/dense/kernel
|
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes
:	@ђ*
dtype0
Е
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense/kernel/*
dtype0*
shape:	@ђ*$
shared_nameAdam/m/dense/kernel
|
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes
:	@ђ*
dtype0
╬
!Adam/v/batch_normalization_9/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_9/beta/*
dtype0*
shape:@*2
shared_name#!Adam/v/batch_normalization_9/beta
Њ
5Adam/v/batch_normalization_9/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_9/beta*
_output_shapes
:@*
dtype0
╬
!Adam/m/batch_normalization_9/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_9/beta/*
dtype0*
shape:@*2
shared_name#!Adam/m/batch_normalization_9/beta
Њ
5Adam/m/batch_normalization_9/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_9/beta*
_output_shapes
:@*
dtype0
Л
"Adam/v/batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_9/gamma/*
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_9/gamma
Ћ
6Adam/v/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_9/gamma*
_output_shapes
:@*
dtype0
Л
"Adam/m/batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_9/gamma/*
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_9/gamma
Ћ
6Adam/m/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_9/gamma*
_output_shapes
:@*
dtype0
ф
Adam/v/conv2d_13/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_13/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_13/bias
{
)Adam/v/conv2d_13/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_13/bias*
_output_shapes
:@*
dtype0
ф
Adam/m/conv2d_13/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_13/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_13/bias
{
)Adam/m/conv2d_13/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_13/bias*
_output_shapes
:@*
dtype0
╝
Adam/v/conv2d_13/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_13/kernel/*
dtype0*
shape: @*(
shared_nameAdam/v/conv2d_13/kernel
І
+Adam/v/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_13/kernel*&
_output_shapes
: @*
dtype0
╝
Adam/m/conv2d_13/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_13/kernel/*
dtype0*
shape: @*(
shared_nameAdam/m/conv2d_13/kernel
І
+Adam/m/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_13/kernel*&
_output_shapes
: @*
dtype0
╬
!Adam/v/batch_normalization_8/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_8/beta/*
dtype0*
shape: *2
shared_name#!Adam/v/batch_normalization_8/beta
Њ
5Adam/v/batch_normalization_8/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_8/beta*
_output_shapes
: *
dtype0
╬
!Adam/m/batch_normalization_8/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_8/beta/*
dtype0*
shape: *2
shared_name#!Adam/m/batch_normalization_8/beta
Њ
5Adam/m/batch_normalization_8/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_8/beta*
_output_shapes
: *
dtype0
Л
"Adam/v/batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_8/gamma/*
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_8/gamma
Ћ
6Adam/v/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_8/gamma*
_output_shapes
: *
dtype0
Л
"Adam/m/batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_8/gamma/*
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_8/gamma
Ћ
6Adam/m/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_8/gamma*
_output_shapes
: *
dtype0
ф
Adam/v/conv2d_12/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_12/bias/*
dtype0*
shape: *&
shared_nameAdam/v/conv2d_12/bias
{
)Adam/v/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/bias*
_output_shapes
: *
dtype0
ф
Adam/m/conv2d_12/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_12/bias/*
dtype0*
shape: *&
shared_nameAdam/m/conv2d_12/bias
{
)Adam/m/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/bias*
_output_shapes
: *
dtype0
╝
Adam/v/conv2d_12/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_12/kernel/*
dtype0*
shape:  *(
shared_nameAdam/v/conv2d_12/kernel
І
+Adam/v/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/kernel*&
_output_shapes
:  *
dtype0
╝
Adam/m/conv2d_12/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_12/kernel/*
dtype0*
shape:  *(
shared_nameAdam/m/conv2d_12/kernel
І
+Adam/m/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/kernel*&
_output_shapes
:  *
dtype0
╬
!Adam/v/batch_normalization_7/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_7/beta/*
dtype0*
shape: *2
shared_name#!Adam/v/batch_normalization_7/beta
Њ
5Adam/v/batch_normalization_7/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_7/beta*
_output_shapes
: *
dtype0
╬
!Adam/m/batch_normalization_7/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_7/beta/*
dtype0*
shape: *2
shared_name#!Adam/m/batch_normalization_7/beta
Њ
5Adam/m/batch_normalization_7/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_7/beta*
_output_shapes
: *
dtype0
Л
"Adam/v/batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_7/gamma/*
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_7/gamma
Ћ
6Adam/v/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_7/gamma*
_output_shapes
: *
dtype0
Л
"Adam/m/batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_7/gamma/*
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_7/gamma
Ћ
6Adam/m/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_7/gamma*
_output_shapes
: *
dtype0
ф
Adam/v/conv2d_11/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_11/bias/*
dtype0*
shape: *&
shared_nameAdam/v/conv2d_11/bias
{
)Adam/v/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/bias*
_output_shapes
: *
dtype0
ф
Adam/m/conv2d_11/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_11/bias/*
dtype0*
shape: *&
shared_nameAdam/m/conv2d_11/bias
{
)Adam/m/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/bias*
_output_shapes
: *
dtype0
╝
Adam/v/conv2d_11/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_11/kernel/*
dtype0*
shape:  *(
shared_nameAdam/v/conv2d_11/kernel
І
+Adam/v/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/kernel*&
_output_shapes
:  *
dtype0
╝
Adam/m/conv2d_11/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_11/kernel/*
dtype0*
shape:  *(
shared_nameAdam/m/conv2d_11/kernel
І
+Adam/m/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/kernel*&
_output_shapes
:  *
dtype0
╬
!Adam/v/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_6/beta/*
dtype0*
shape: *2
shared_name#!Adam/v/batch_normalization_6/beta
Њ
5Adam/v/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_6/beta*
_output_shapes
: *
dtype0
╬
!Adam/m/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_6/beta/*
dtype0*
shape: *2
shared_name#!Adam/m/batch_normalization_6/beta
Њ
5Adam/m/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_6/beta*
_output_shapes
: *
dtype0
Л
"Adam/v/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_6/gamma/*
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_6/gamma
Ћ
6Adam/v/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_6/gamma*
_output_shapes
: *
dtype0
Л
"Adam/m/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_6/gamma/*
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_6/gamma
Ћ
6Adam/m/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_6/gamma*
_output_shapes
: *
dtype0
ф
Adam/v/conv2d_10/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_10/bias/*
dtype0*
shape: *&
shared_nameAdam/v/conv2d_10/bias
{
)Adam/v/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/bias*
_output_shapes
: *
dtype0
ф
Adam/m/conv2d_10/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_10/bias/*
dtype0*
shape: *&
shared_nameAdam/m/conv2d_10/bias
{
)Adam/m/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/bias*
_output_shapes
: *
dtype0
╝
Adam/v/conv2d_10/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_10/kernel/*
dtype0*
shape: *(
shared_nameAdam/v/conv2d_10/kernel
І
+Adam/v/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/kernel*&
_output_shapes
: *
dtype0
╝
Adam/m/conv2d_10/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_10/kernel/*
dtype0*
shape: *(
shared_nameAdam/m/conv2d_10/kernel
І
+Adam/m/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/kernel*&
_output_shapes
: *
dtype0
ј
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
ѓ
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
љ
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:ю*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:ю*
dtype0
Џ
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape:
ђю*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
ђю*
dtype0
я
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_10/moving_variance/*
dtype0*
shape:ђ*7
shared_name(&batch_normalization_10/moving_variance
ъ
:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes	
:ђ*
dtype0
м
"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_10/moving_mean/*
dtype0*
shape:ђ*3
shared_name$"batch_normalization_10/moving_mean
ќ
6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes	
:ђ*
dtype0
й
batch_normalization_10/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_10/beta/*
dtype0*
shape:ђ*,
shared_namebatch_normalization_10/beta
ѕ
/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes	
:ђ*
dtype0
└
batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_10/gamma/*
dtype0*
shape:ђ*-
shared_namebatch_normalization_10/gamma
і
0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes	
:ђ*
dtype0
і

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:ђ*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:ђ*
dtype0
ћ
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape:	@ђ*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@ђ*
dtype0
┌
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_9/moving_variance/*
dtype0*
shape:@*6
shared_name'%batch_normalization_9/moving_variance
Џ
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes
:@*
dtype0
╬
!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_9/moving_mean/*
dtype0*
shape:@*2
shared_name#!batch_normalization_9/moving_mean
Њ
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes
:@*
dtype0
╣
batch_normalization_9/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_9/beta/*
dtype0*
shape:@*+
shared_namebatch_normalization_9/beta
Ё
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes
:@*
dtype0
╝
batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_9/gamma/*
dtype0*
shape:@*,
shared_namebatch_normalization_9/gamma
Є
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes
:@*
dtype0
Ћ
conv2d_13/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_13/bias/*
dtype0*
shape:@*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:@*
dtype0
Д
conv2d_13/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_13/kernel/*
dtype0*
shape: @*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
: @*
dtype0
┌
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_8/moving_variance/*
dtype0*
shape: *6
shared_name'%batch_normalization_8/moving_variance
Џ
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
: *
dtype0
╬
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_8/moving_mean/*
dtype0*
shape: *2
shared_name#!batch_normalization_8/moving_mean
Њ
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
: *
dtype0
╣
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_8/beta/*
dtype0*
shape: *+
shared_namebatch_normalization_8/beta
Ё
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
: *
dtype0
╝
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_8/gamma/*
dtype0*
shape: *,
shared_namebatch_normalization_8/gamma
Є
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
: *
dtype0
Ћ
conv2d_12/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_12/bias/*
dtype0*
shape: *
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
: *
dtype0
Д
conv2d_12/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_12/kernel/*
dtype0*
shape:  *!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
:  *
dtype0
┌
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_7/moving_variance/*
dtype0*
shape: *6
shared_name'%batch_normalization_7/moving_variance
Џ
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
: *
dtype0
╬
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_7/moving_mean/*
dtype0*
shape: *2
shared_name#!batch_normalization_7/moving_mean
Њ
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
: *
dtype0
╣
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_7/beta/*
dtype0*
shape: *+
shared_namebatch_normalization_7/beta
Ё
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
: *
dtype0
╝
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_7/gamma/*
dtype0*
shape: *,
shared_namebatch_normalization_7/gamma
Є
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
: *
dtype0
Ћ
conv2d_11/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_11/bias/*
dtype0*
shape: *
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
: *
dtype0
Д
conv2d_11/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_11/kernel/*
dtype0*
shape:  *!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:  *
dtype0
┌
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_6/moving_variance/*
dtype0*
shape: *6
shared_name'%batch_normalization_6/moving_variance
Џ
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes
: *
dtype0
╬
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_6/moving_mean/*
dtype0*
shape: *2
shared_name#!batch_normalization_6/moving_mean
Њ
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
: *
dtype0
╣
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_6/beta/*
dtype0*
shape: *+
shared_namebatch_normalization_6/beta
Ё
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes
: *
dtype0
╝
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_6/gamma/*
dtype0*
shape: *,
shared_namebatch_normalization_6/gamma
Є
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes
: *
dtype0
Ћ
conv2d_10/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_10/bias/*
dtype0*
shape: *
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
: *
dtype0
Д
conv2d_10/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_10/kernel/*
dtype0*
shape: *!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
: *
dtype0
њ
serving_default_conv2d_10_inputPlaceholder*/
_output_shapes
:         *
dtype0*$
shape:         
╬	
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_10_inputconv2d_10/kernelconv2d_10/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_11/kernelconv2d_11/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_12/kernelconv2d_12/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_variancedense/kernel
dense/bias&batch_normalization_10/moving_variancebatch_normalization_10/gamma"batch_normalization_10/moving_meanbatch_normalization_10/betadense_1/kerneldense_1/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ю*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8ѓ *-
f(R&
$__inference_signature_wrapper_330210

NoOpNoOp
їИ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ки
value╗иBии B»и
щ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias
 &_jit_compiled_convolution_op*
Н
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-axis
	.gamma
/beta
0moving_mean
1moving_variance*
ј
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses* 
Ц
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses
>_random_generator* 
╚
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias
 G_jit_compiled_convolution_op*
Н
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
Naxis
	Ogamma
Pbeta
Qmoving_mean
Rmoving_variance*
ј
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses* 
Ц
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
__random_generator* 
╚
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

fkernel
gbias
 h_jit_compiled_convolution_op*
Н
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
oaxis
	pgamma
qbeta
rmoving_mean
smoving_variance*
ј
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses* 
д
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
ђ_random_generator* 
Л
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
ё	keras_api
Ё__call__
+є&call_and_return_all_conditional_losses
Єkernel
	ѕbias
!Ѕ_jit_compiled_convolution_op*
Я
і	variables
Іtrainable_variables
їregularization_losses
Ї	keras_api
ј__call__
+Ј&call_and_return_all_conditional_losses
	љaxis

Љgamma
	њbeta
Њmoving_mean
ћmoving_variance*
ћ
Ћ	variables
ќtrainable_variables
Ќregularization_losses
ў	keras_api
Ў__call__
+џ&call_and_return_all_conditional_losses* 
г
Џ	variables
юtrainable_variables
Юregularization_losses
ъ	keras_api
Ъ__call__
+а&call_and_return_all_conditional_losses
А_random_generator* 
ћ
б	variables
Бtrainable_variables
цregularization_losses
Ц	keras_api
д__call__
+Д&call_and_return_all_conditional_losses* 
«
е	variables
Еtrainable_variables
фregularization_losses
Ф	keras_api
г__call__
+Г&call_and_return_all_conditional_losses
«kernel
	»bias*
Я
░	variables
▒trainable_variables
▓regularization_losses
│	keras_api
┤__call__
+х&call_and_return_all_conditional_losses
	Хaxis

иgamma
	Иbeta
╣moving_mean
║moving_variance*
«
╗	variables
╝trainable_variables
йregularization_losses
Й	keras_api
┐__call__
+└&call_and_return_all_conditional_losses
┴kernel
	┬bias*
ѕ
$0
%1
.2
/3
04
15
E6
F7
O8
P9
Q10
R11
f12
g13
p14
q15
r16
s17
Є18
ѕ19
Љ20
њ21
Њ22
ћ23
«24
»25
и26
И27
╣28
║29
┴30
┬31*
┤
$0
%1
.2
/3
E4
F5
O6
P7
f8
g9
p10
q11
Є12
ѕ13
Љ14
њ15
«16
»17
и18
И19
┴20
┬21*
* 
х
├non_trainable_variables
─layers
┼metrics
 кlayer_regularization_losses
Кlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

╚trace_0
╔trace_1* 

╩trace_0
╦trace_1* 
* 
ѕ
╠
_variables
═_iterations
╬_learning_rate
¤_index_dict
л
_momentums
Л_velocities
м_update_step_xla*

Мserving_default* 

$0
%1*

$0
%1*
* 
ў
нnon_trainable_variables
Нlayers
оmetrics
 Оlayer_regularization_losses
пlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

┘trace_0* 

┌trace_0* 
`Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
.0
/1
02
13*

.0
/1*
* 
ў
█non_trainable_variables
▄layers
Пmetrics
 яlayer_regularization_losses
▀layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

Яtrace_0
рtrace_1* 

Рtrace_0
сtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
Сnon_trainable_variables
тlayers
Тmetrics
 уlayer_regularization_losses
Уlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 

жtrace_0* 

Жtrace_0* 
* 
* 
* 
ќ
вnon_trainable_variables
Вlayers
ьmetrics
 Ьlayer_regularization_losses
№layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 

­trace_0
ыtrace_1* 

Ыtrace_0
зtrace_1* 
* 

E0
F1*

E0
F1*
* 
ў
Зnon_trainable_variables
шlayers
Шmetrics
 эlayer_regularization_losses
Эlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

щtrace_0* 

Щtrace_0* 
`Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
O0
P1
Q2
R3*

O0
P1*
* 
ў
чnon_trainable_variables
Чlayers
§metrics
 ■layer_regularization_losses
 layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

ђtrace_0
Ђtrace_1* 

ѓtrace_0
Ѓtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
ёnon_trainable_variables
Ёlayers
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 

Ѕtrace_0* 

іtrace_0* 
* 
* 
* 
ќ
Іnon_trainable_variables
їlayers
Їmetrics
 јlayer_regularization_losses
Јlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses* 

љtrace_0
Љtrace_1* 

њtrace_0
Њtrace_1* 
* 

f0
g1*

f0
g1*
* 
ў
ћnon_trainable_variables
Ћlayers
ќmetrics
 Ќlayer_regularization_losses
ўlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*

Ўtrace_0* 

џtrace_0* 
`Z
VARIABLE_VALUEconv2d_12/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_12/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
p0
q1
r2
s3*

p0
q1*
* 
ў
Џnon_trainable_variables
юlayers
Юmetrics
 ъlayer_regularization_losses
Ъlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

аtrace_0
Аtrace_1* 

бtrace_0
Бtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
цnon_trainable_variables
Цlayers
дmetrics
 Дlayer_regularization_losses
еlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 

Еtrace_0* 

фtrace_0* 
* 
* 
* 
ќ
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

░trace_0
▒trace_1* 

▓trace_0
│trace_1* 
* 

Є0
ѕ1*

Є0
ѕ1*
* 
ъ
┤non_trainable_variables
хlayers
Хmetrics
 иlayer_regularization_losses
Иlayer_metrics
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
Ё__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses*

╣trace_0* 

║trace_0* 
`Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
Љ0
њ1
Њ2
ћ3*

Љ0
њ1*
* 
ъ
╗non_trainable_variables
╝layers
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
і	variables
Іtrainable_variables
їregularization_losses
ј__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses*

└trace_0
┴trace_1* 

┬trace_0
├trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_9/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_9/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_9/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_9/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ю
─non_trainable_variables
┼layers
кmetrics
 Кlayer_regularization_losses
╚layer_metrics
Ћ	variables
ќtrainable_variables
Ќregularization_losses
Ў__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses* 

╔trace_0* 

╩trace_0* 
* 
* 
* 
ю
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
¤layer_metrics
Џ	variables
юtrainable_variables
Юregularization_losses
Ъ__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses* 

лtrace_0
Лtrace_1* 

мtrace_0
Мtrace_1* 
* 
* 
* 
* 
ю
нnon_trainable_variables
Нlayers
оmetrics
 Оlayer_regularization_losses
пlayer_metrics
б	variables
Бtrainable_variables
цregularization_losses
д__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses* 

┘trace_0* 

┌trace_0* 

«0
»1*

«0
»1*
* 
ъ
█non_trainable_variables
▄layers
Пmetrics
 яlayer_regularization_losses
▀layer_metrics
е	variables
Еtrainable_variables
фregularization_losses
г__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses*

Яtrace_0* 

рtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
$
и0
И1
╣2
║3*

и0
И1*
* 
ъ
Рnon_trainable_variables
сlayers
Сmetrics
 тlayer_regularization_losses
Тlayer_metrics
░	variables
▒trainable_variables
▓regularization_losses
┤__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses*

уtrace_0
Уtrace_1* 

жtrace_0
Жtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

┴0
┬1*

┴0
┬1*
* 
ъ
вnon_trainable_variables
Вlayers
ьmetrics
 Ьlayer_regularization_losses
№layer_metrics
╗	variables
╝trainable_variables
йregularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses*

­trace_0* 

ыtrace_0* 
_Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_1/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
N
00
11
Q2
R3
r4
s5
Њ6
ћ7
╣8
║9*
џ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19*

Ы0
з1*
* 
* 
* 
* 
* 
* 
Ј
═0
З1
ш2
Ш3
э4
Э5
щ6
Щ7
ч8
Ч9
§10
■11
 12
ђ13
Ђ14
ѓ15
Ѓ16
ё17
Ё18
є19
Є20
ѕ21
Ѕ22
і23
І24
ї25
Ї26
ј27
Ј28
љ29
Љ30
њ31
Њ32
ћ33
Ћ34
ќ35
Ќ36
ў37
Ў38
џ39
Џ40
ю41
Ю42
ъ43
Ъ44*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
└
З0
Ш1
Э2
Щ3
Ч4
■5
ђ6
ѓ7
ё8
є9
ѕ10
і11
ї12
ј13
љ14
њ15
ћ16
ќ17
ў18
џ19
ю20
ъ21*
└
ш0
э1
щ2
ч3
§4
 5
Ђ6
Ѓ7
Ё8
Є9
Ѕ10
І11
Ї12
Ј13
Љ14
Њ15
Ћ16
Ќ17
Ў18
Џ19
Ю20
Ъ21*
* 
* 
* 
* 
* 
* 
* 
* 
* 

00
11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Q0
R1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

r0
s1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Њ0
ћ1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

╣0
║1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
а	variables
А	keras_api

бtotal

Бcount*
M
ц	variables
Ц	keras_api

дtotal

Дcount
е
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_10/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_10/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_10/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_10/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_6/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_6/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/batch_normalization_6/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/v/batch_normalization_6/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_11/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_11/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_11/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_11/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_7/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_7/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_7/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_7/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_12/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_12/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_12/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_12/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_8/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_8/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_8/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_8/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_13/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_13/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_13/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_13/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_9/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_9/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_9/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_9/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/dense/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_10/gamma2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_10/gamma2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_10/beta2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_10/beta2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*

б0
Б1*

а	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

д0
Д1*

ц	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
В
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_10/kernelconv2d_10/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_11/kernelconv2d_11/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_12/kernelconv2d_12/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_variancedense/kernel
dense/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_variancedense_1/kerneldense_1/bias	iterationlearning_rateAdam/m/conv2d_10/kernelAdam/v/conv2d_10/kernelAdam/m/conv2d_10/biasAdam/v/conv2d_10/bias"Adam/m/batch_normalization_6/gamma"Adam/v/batch_normalization_6/gamma!Adam/m/batch_normalization_6/beta!Adam/v/batch_normalization_6/betaAdam/m/conv2d_11/kernelAdam/v/conv2d_11/kernelAdam/m/conv2d_11/biasAdam/v/conv2d_11/bias"Adam/m/batch_normalization_7/gamma"Adam/v/batch_normalization_7/gamma!Adam/m/batch_normalization_7/beta!Adam/v/batch_normalization_7/betaAdam/m/conv2d_12/kernelAdam/v/conv2d_12/kernelAdam/m/conv2d_12/biasAdam/v/conv2d_12/bias"Adam/m/batch_normalization_8/gamma"Adam/v/batch_normalization_8/gamma!Adam/m/batch_normalization_8/beta!Adam/v/batch_normalization_8/betaAdam/m/conv2d_13/kernelAdam/v/conv2d_13/kernelAdam/m/conv2d_13/biasAdam/v/conv2d_13/bias"Adam/m/batch_normalization_9/gamma"Adam/v/batch_normalization_9/gamma!Adam/m/batch_normalization_9/beta!Adam/v/batch_normalization_9/betaAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/bias#Adam/m/batch_normalization_10/gamma#Adam/v/batch_normalization_10/gamma"Adam/m/batch_normalization_10/beta"Adam/v/batch_normalization_10/betaAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotal_1count_1totalcountConst*_
TinX
V2T*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference__traced_save_331331
у
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_10/kernelconv2d_10/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_11/kernelconv2d_11/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_12/kernelconv2d_12/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_variancedense/kernel
dense/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_variancedense_1/kerneldense_1/bias	iterationlearning_rateAdam/m/conv2d_10/kernelAdam/v/conv2d_10/kernelAdam/m/conv2d_10/biasAdam/v/conv2d_10/bias"Adam/m/batch_normalization_6/gamma"Adam/v/batch_normalization_6/gamma!Adam/m/batch_normalization_6/beta!Adam/v/batch_normalization_6/betaAdam/m/conv2d_11/kernelAdam/v/conv2d_11/kernelAdam/m/conv2d_11/biasAdam/v/conv2d_11/bias"Adam/m/batch_normalization_7/gamma"Adam/v/batch_normalization_7/gamma!Adam/m/batch_normalization_7/beta!Adam/v/batch_normalization_7/betaAdam/m/conv2d_12/kernelAdam/v/conv2d_12/kernelAdam/m/conv2d_12/biasAdam/v/conv2d_12/bias"Adam/m/batch_normalization_8/gamma"Adam/v/batch_normalization_8/gamma!Adam/m/batch_normalization_8/beta!Adam/v/batch_normalization_8/betaAdam/m/conv2d_13/kernelAdam/v/conv2d_13/kernelAdam/m/conv2d_13/biasAdam/v/conv2d_13/bias"Adam/m/batch_normalization_9/gamma"Adam/v/batch_normalization_9/gamma!Adam/m/batch_normalization_9/beta!Adam/v/batch_normalization_9/betaAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/bias#Adam/m/batch_normalization_10/gamma#Adam/v/batch_normalization_10/gamma"Adam/m/batch_normalization_10/beta"Adam/v/batch_normalization_10/betaAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotal_1count_1totalcount*^
TinW
U2S*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__traced_restore_331586ЄБ
┤
■
E__inference_conv2d_10_layer_call_and_return_conditional_losses_330230

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_329284

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
л
ю
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_330649

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ў
Ъ
*__inference_conv2d_12_layer_call_fn_330457

inputs!
unknown:  
	unknown_0: 
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_329676w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330453:&"
 
_user_specified_name330451:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Ф
D
(__inference_flatten_layer_call_fn_330691

inputs
identity«
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_329749`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Л

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_330443

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:          i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
І

Л
6__inference_batch_normalization_7_layer_call_fn_330362

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_329307Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330358:&"
 
_user_specified_name330356:&"
 
_user_specified_name330354:&"
 
_user_specified_name330352:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_330540

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
І

Л
6__inference_batch_normalization_6_layer_call_fn_330243

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_329235Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330239:&"
 
_user_specified_name330237:&"
 
_user_specified_name330235:&"
 
_user_specified_name330233:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Л

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_329625

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:          i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
»n
В
H__inference_sequential_4_layer_call_and_return_conditional_losses_329793
conv2d_10_input*
conv2d_10_329599: 
conv2d_10_329601: *
batch_normalization_6_329604: *
batch_normalization_6_329606: *
batch_normalization_6_329608: *
batch_normalization_6_329610: *
conv2d_11_329638:  
conv2d_11_329640: *
batch_normalization_7_329643: *
batch_normalization_7_329645: *
batch_normalization_7_329647: *
batch_normalization_7_329649: *
conv2d_12_329677:  
conv2d_12_329679: *
batch_normalization_8_329682: *
batch_normalization_8_329684: *
batch_normalization_8_329686: *
batch_normalization_8_329688: *
conv2d_13_329716: @
conv2d_13_329718:@*
batch_normalization_9_329721:@*
batch_normalization_9_329723:@*
batch_normalization_9_329725:@*
batch_normalization_9_329727:@
dense_329762:	@ђ
dense_329764:	ђ,
batch_normalization_10_329767:	ђ,
batch_normalization_10_329769:	ђ,
batch_normalization_10_329771:	ђ,
batch_normalization_10_329773:	ђ"
dense_1_329787:
ђю
dense_1_329789:	ю
identityѕб.batch_normalization_10/StatefulPartitionedCallб-batch_normalization_6/StatefulPartitionedCallб-batch_normalization_7/StatefulPartitionedCallб-batch_normalization_8/StatefulPartitionedCallб-batch_normalization_9/StatefulPartitionedCallб!conv2d_10/StatefulPartitionedCallб!conv2d_11/StatefulPartitionedCallб!conv2d_12/StatefulPartitionedCallб!conv2d_13/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallб!dropout_6/StatefulPartitionedCallб!dropout_7/StatefulPartitionedCallб!dropout_8/StatefulPartitionedCallб!dropout_9/StatefulPartitionedCallЁ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputconv2d_10_329599conv2d_10_329601*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_329598ј
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_6_329604batch_normalization_6_329606batch_normalization_6_329608batch_normalization_6_329610*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_329235■
max_pooling2d_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_329284З
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_329625а
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv2d_11_329638conv2d_11_329640*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_329637ј
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_7_329643batch_normalization_7_329645batch_normalization_7_329647batch_normalization_7_329649*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_329307■
max_pooling2d_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_329356ў
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_329664а
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0conv2d_12_329677conv2d_12_329679*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_329676ј
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_8_329682batch_normalization_8_329684batch_normalization_8_329686batch_normalization_8_329688*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_329379■
max_pooling2d_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_329428ў
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_329703а
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0conv2d_13_329716conv2d_13_329718*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_329715ј
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_9_329721batch_normalization_9_329723batch_normalization_9_329725batch_normalization_9_329727*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_329451■
max_pooling2d_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_329500ў
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_329742┌
flatten/PartitionedCallPartitionedCall*dropout_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_329749 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_329762dense_329764*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_329761Ѕ
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_10_329767batch_normalization_10_329769batch_normalization_10_329771batch_normalization_10_329773*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_329539ъ
dense_1/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_1_329787dense_1_329789*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ю*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_329786x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         юш
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:         : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:& "
 
_user_specified_name329789:&"
 
_user_specified_name329787:&"
 
_user_specified_name329773:&"
 
_user_specified_name329771:&"
 
_user_specified_name329769:&"
 
_user_specified_name329767:&"
 
_user_specified_name329764:&"
 
_user_specified_name329762:&"
 
_user_specified_name329727:&"
 
_user_specified_name329725:&"
 
_user_specified_name329723:&"
 
_user_specified_name329721:&"
 
_user_specified_name329718:&"
 
_user_specified_name329716:&"
 
_user_specified_name329688:&"
 
_user_specified_name329686:&"
 
_user_specified_name329684:&"
 
_user_specified_name329682:&"
 
_user_specified_name329679:&"
 
_user_specified_name329677:&"
 
_user_specified_name329649:&"
 
_user_specified_name329647:&
"
 
_user_specified_name329645:&	"
 
_user_specified_name329643:&"
 
_user_specified_name329640:&"
 
_user_specified_name329638:&"
 
_user_specified_name329610:&"
 
_user_specified_name329608:&"
 
_user_specified_name329606:&"
 
_user_specified_name329604:&"
 
_user_specified_name329601:&"
 
_user_specified_name329599:` \
/
_output_shapes
:         
)
_user_specified_nameconv2d_10_input
т
х
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_329559

inputs0
!batchnorm_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ2
#batchnorm_readvariableop_1_resource:	ђ2
#batchnorm_readvariableop_2_resource:	ђ
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         ђ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ђќ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Э
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_329878

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ь
c
*__inference_dropout_7_layer_call_fn_330426

inputs
identityѕбStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_329664w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┐
F
*__inference_dropout_7_layer_call_fn_330431

inputs
identityИ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_329836h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
і
└
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_329307

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┤
■
E__inference_conv2d_13_layer_call_and_return_conditional_losses_329715

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
і
└
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_329379

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
л
ю
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_329253

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
г	
о
7__inference_batch_normalization_10_layer_call_fn_330730

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_329539p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330726:&"
 
_user_specified_name330724:&"
 
_user_specified_name330722:&"
 
_user_specified_name330720:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Л

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_329703

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:          i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Л

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_330324

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:          i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
ь
c
*__inference_dropout_9_layer_call_fn_330664

inputs
identityѕбStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_329742w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
█

э
C__inference_dense_1_layer_call_and_return_conditional_losses_330817

inputs2
matmul_readvariableop_resource:
ђю.
biasadd_readvariableop_resource:	ю
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђю*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         юs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ю*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         юW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:         юa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:         юS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
жЂ
К6
"__inference__traced_restore_331586
file_prefix;
!assignvariableop_conv2d_10_kernel: /
!assignvariableop_1_conv2d_10_bias: <
.assignvariableop_2_batch_normalization_6_gamma: ;
-assignvariableop_3_batch_normalization_6_beta: B
4assignvariableop_4_batch_normalization_6_moving_mean: F
8assignvariableop_5_batch_normalization_6_moving_variance: =
#assignvariableop_6_conv2d_11_kernel:  /
!assignvariableop_7_conv2d_11_bias: <
.assignvariableop_8_batch_normalization_7_gamma: ;
-assignvariableop_9_batch_normalization_7_beta: C
5assignvariableop_10_batch_normalization_7_moving_mean: G
9assignvariableop_11_batch_normalization_7_moving_variance: >
$assignvariableop_12_conv2d_12_kernel:  0
"assignvariableop_13_conv2d_12_bias: =
/assignvariableop_14_batch_normalization_8_gamma: <
.assignvariableop_15_batch_normalization_8_beta: C
5assignvariableop_16_batch_normalization_8_moving_mean: G
9assignvariableop_17_batch_normalization_8_moving_variance: >
$assignvariableop_18_conv2d_13_kernel: @0
"assignvariableop_19_conv2d_13_bias:@=
/assignvariableop_20_batch_normalization_9_gamma:@<
.assignvariableop_21_batch_normalization_9_beta:@C
5assignvariableop_22_batch_normalization_9_moving_mean:@G
9assignvariableop_23_batch_normalization_9_moving_variance:@3
 assignvariableop_24_dense_kernel:	@ђ-
assignvariableop_25_dense_bias:	ђ?
0assignvariableop_26_batch_normalization_10_gamma:	ђ>
/assignvariableop_27_batch_normalization_10_beta:	ђE
6assignvariableop_28_batch_normalization_10_moving_mean:	ђI
:assignvariableop_29_batch_normalization_10_moving_variance:	ђ6
"assignvariableop_30_dense_1_kernel:
ђю/
 assignvariableop_31_dense_1_bias:	ю'
assignvariableop_32_iteration:	 +
!assignvariableop_33_learning_rate: E
+assignvariableop_34_adam_m_conv2d_10_kernel: E
+assignvariableop_35_adam_v_conv2d_10_kernel: 7
)assignvariableop_36_adam_m_conv2d_10_bias: 7
)assignvariableop_37_adam_v_conv2d_10_bias: D
6assignvariableop_38_adam_m_batch_normalization_6_gamma: D
6assignvariableop_39_adam_v_batch_normalization_6_gamma: C
5assignvariableop_40_adam_m_batch_normalization_6_beta: C
5assignvariableop_41_adam_v_batch_normalization_6_beta: E
+assignvariableop_42_adam_m_conv2d_11_kernel:  E
+assignvariableop_43_adam_v_conv2d_11_kernel:  7
)assignvariableop_44_adam_m_conv2d_11_bias: 7
)assignvariableop_45_adam_v_conv2d_11_bias: D
6assignvariableop_46_adam_m_batch_normalization_7_gamma: D
6assignvariableop_47_adam_v_batch_normalization_7_gamma: C
5assignvariableop_48_adam_m_batch_normalization_7_beta: C
5assignvariableop_49_adam_v_batch_normalization_7_beta: E
+assignvariableop_50_adam_m_conv2d_12_kernel:  E
+assignvariableop_51_adam_v_conv2d_12_kernel:  7
)assignvariableop_52_adam_m_conv2d_12_bias: 7
)assignvariableop_53_adam_v_conv2d_12_bias: D
6assignvariableop_54_adam_m_batch_normalization_8_gamma: D
6assignvariableop_55_adam_v_batch_normalization_8_gamma: C
5assignvariableop_56_adam_m_batch_normalization_8_beta: C
5assignvariableop_57_adam_v_batch_normalization_8_beta: E
+assignvariableop_58_adam_m_conv2d_13_kernel: @E
+assignvariableop_59_adam_v_conv2d_13_kernel: @7
)assignvariableop_60_adam_m_conv2d_13_bias:@7
)assignvariableop_61_adam_v_conv2d_13_bias:@D
6assignvariableop_62_adam_m_batch_normalization_9_gamma:@D
6assignvariableop_63_adam_v_batch_normalization_9_gamma:@C
5assignvariableop_64_adam_m_batch_normalization_9_beta:@C
5assignvariableop_65_adam_v_batch_normalization_9_beta:@:
'assignvariableop_66_adam_m_dense_kernel:	@ђ:
'assignvariableop_67_adam_v_dense_kernel:	@ђ4
%assignvariableop_68_adam_m_dense_bias:	ђ4
%assignvariableop_69_adam_v_dense_bias:	ђF
7assignvariableop_70_adam_m_batch_normalization_10_gamma:	ђF
7assignvariableop_71_adam_v_batch_normalization_10_gamma:	ђE
6assignvariableop_72_adam_m_batch_normalization_10_beta:	ђE
6assignvariableop_73_adam_v_batch_normalization_10_beta:	ђ=
)assignvariableop_74_adam_m_dense_1_kernel:
ђю=
)assignvariableop_75_adam_v_dense_1_kernel:
ђю6
'assignvariableop_76_adam_m_dense_1_bias:	ю6
'assignvariableop_77_adam_v_dense_1_bias:	ю%
assignvariableop_78_total_1: %
assignvariableop_79_count_1: #
assignvariableop_80_total: #
assignvariableop_81_count: 
identity_83ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_48бAssignVariableOp_49бAssignVariableOp_5бAssignVariableOp_50бAssignVariableOp_51бAssignVariableOp_52бAssignVariableOp_53бAssignVariableOp_54бAssignVariableOp_55бAssignVariableOp_56бAssignVariableOp_57бAssignVariableOp_58бAssignVariableOp_59бAssignVariableOp_6бAssignVariableOp_60бAssignVariableOp_61бAssignVariableOp_62бAssignVariableOp_63бAssignVariableOp_64бAssignVariableOp_65бAssignVariableOp_66бAssignVariableOp_67бAssignVariableOp_68бAssignVariableOp_69бAssignVariableOp_7бAssignVariableOp_70бAssignVariableOp_71бAssignVariableOp_72бAssignVariableOp_73бAssignVariableOp_74бAssignVariableOp_75бAssignVariableOp_76бAssignVariableOp_77бAssignVariableOp_78бAssignVariableOp_79бAssignVariableOp_8бAssignVariableOp_80бAssignVariableOp_81бAssignVariableOp_9Я#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*є#
valueЧ"Bщ"SB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЎ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*╗
value▒B«SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B └
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Р
_output_shapes¤
╠:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*a
dtypesW
U2S	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_10_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_10_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_6_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_6_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_6_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_6_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_11_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_11_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_7_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_7_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_7_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_7_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_12_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_12_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_8_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_8_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_8_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_8_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_13_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_13_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_9_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_9_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_9_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_9_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_24AssignVariableOp assignvariableop_24_dense_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_25AssignVariableOpassignvariableop_25_dense_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_10_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_10_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_10_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_10_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_30AssignVariableOp"assignvariableop_30_dense_1_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_31AssignVariableOp assignvariableop_31_dense_1_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:Х
AssignVariableOp_32AssignVariableOpassignvariableop_32_iterationIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_33AssignVariableOp!assignvariableop_33_learning_rateIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_m_conv2d_10_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_v_conv2d_10_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_m_conv2d_10_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_v_conv2d_10_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adam_m_batch_normalization_6_gammaIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_v_batch_normalization_6_gammaIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_40AssignVariableOp5assignvariableop_40_adam_m_batch_normalization_6_betaIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_41AssignVariableOp5assignvariableop_41_adam_v_batch_normalization_6_betaIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_m_conv2d_11_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_v_conv2d_11_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_m_conv2d_11_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_v_conv2d_11_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_m_batch_normalization_7_gammaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_v_batch_normalization_7_gammaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_48AssignVariableOp5assignvariableop_48_adam_m_batch_normalization_7_betaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adam_v_batch_normalization_7_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_m_conv2d_12_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_v_conv2d_12_kernelIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_m_conv2d_12_biasIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_v_conv2d_12_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_m_batch_normalization_8_gammaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_v_batch_normalization_8_gammaIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_m_batch_normalization_8_betaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_57AssignVariableOp5assignvariableop_57_adam_v_batch_normalization_8_betaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_58AssignVariableOp+assignvariableop_58_adam_m_conv2d_13_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_v_conv2d_13_kernelIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_m_conv2d_13_biasIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_v_conv2d_13_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_m_batch_normalization_9_gammaIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_v_batch_normalization_9_gammaIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_64AssignVariableOp5assignvariableop_64_adam_m_batch_normalization_9_betaIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_65AssignVariableOp5assignvariableop_65_adam_v_batch_normalization_9_betaIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_66AssignVariableOp'assignvariableop_66_adam_m_dense_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_67AssignVariableOp'assignvariableop_67_adam_v_dense_kernelIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_68AssignVariableOp%assignvariableop_68_adam_m_dense_biasIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_69AssignVariableOp%assignvariableop_69_adam_v_dense_biasIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_70AssignVariableOp7assignvariableop_70_adam_m_batch_normalization_10_gammaIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_71AssignVariableOp7assignvariableop_71_adam_v_batch_normalization_10_gammaIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_72AssignVariableOp6assignvariableop_72_adam_m_batch_normalization_10_betaIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_73AssignVariableOp6assignvariableop_73_adam_v_batch_normalization_10_betaIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_m_dense_1_kernelIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_75AssignVariableOp)assignvariableop_75_adam_v_dense_1_kernelIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_76AssignVariableOp'assignvariableop_76_adam_m_dense_1_biasIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_77AssignVariableOp'assignvariableop_77_adam_v_dense_1_biasIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_78AssignVariableOpassignvariableop_78_total_1Identity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_79AssignVariableOpassignvariableop_79_count_1Identity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_80AssignVariableOpassignvariableop_80_totalIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_81AssignVariableOpassignvariableop_81_countIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 █
Identity_82Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_83IdentityIdentity_82:output:0^NoOp_1*
T0*
_output_shapes
: ц
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9*
_output_shapes
 "#
identity_83Identity_83:output:0*(
_construction_contextkEagerRuntime*╗
_input_shapesЕ
д: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%R!

_user_specified_namecount:%Q!

_user_specified_nametotal:'P#
!
_user_specified_name	count_1:'O#
!
_user_specified_name	total_1:3N/
-
_user_specified_nameAdam/v/dense_1/bias:3M/
-
_user_specified_nameAdam/m/dense_1/bias:5L1
/
_user_specified_nameAdam/v/dense_1/kernel:5K1
/
_user_specified_nameAdam/m/dense_1/kernel:BJ>
<
_user_specified_name$"Adam/v/batch_normalization_10/beta:BI>
<
_user_specified_name$"Adam/m/batch_normalization_10/beta:CH?
=
_user_specified_name%#Adam/v/batch_normalization_10/gamma:CG?
=
_user_specified_name%#Adam/m/batch_normalization_10/gamma:1F-
+
_user_specified_nameAdam/v/dense/bias:1E-
+
_user_specified_nameAdam/m/dense/bias:3D/
-
_user_specified_nameAdam/v/dense/kernel:3C/
-
_user_specified_nameAdam/m/dense/kernel:AB=
;
_user_specified_name#!Adam/v/batch_normalization_9/beta:AA=
;
_user_specified_name#!Adam/m/batch_normalization_9/beta:B@>
<
_user_specified_name$"Adam/v/batch_normalization_9/gamma:B?>
<
_user_specified_name$"Adam/m/batch_normalization_9/gamma:5>1
/
_user_specified_nameAdam/v/conv2d_13/bias:5=1
/
_user_specified_nameAdam/m/conv2d_13/bias:7<3
1
_user_specified_nameAdam/v/conv2d_13/kernel:7;3
1
_user_specified_nameAdam/m/conv2d_13/kernel:A:=
;
_user_specified_name#!Adam/v/batch_normalization_8/beta:A9=
;
_user_specified_name#!Adam/m/batch_normalization_8/beta:B8>
<
_user_specified_name$"Adam/v/batch_normalization_8/gamma:B7>
<
_user_specified_name$"Adam/m/batch_normalization_8/gamma:561
/
_user_specified_nameAdam/v/conv2d_12/bias:551
/
_user_specified_nameAdam/m/conv2d_12/bias:743
1
_user_specified_nameAdam/v/conv2d_12/kernel:733
1
_user_specified_nameAdam/m/conv2d_12/kernel:A2=
;
_user_specified_name#!Adam/v/batch_normalization_7/beta:A1=
;
_user_specified_name#!Adam/m/batch_normalization_7/beta:B0>
<
_user_specified_name$"Adam/v/batch_normalization_7/gamma:B/>
<
_user_specified_name$"Adam/m/batch_normalization_7/gamma:5.1
/
_user_specified_nameAdam/v/conv2d_11/bias:5-1
/
_user_specified_nameAdam/m/conv2d_11/bias:7,3
1
_user_specified_nameAdam/v/conv2d_11/kernel:7+3
1
_user_specified_nameAdam/m/conv2d_11/kernel:A*=
;
_user_specified_name#!Adam/v/batch_normalization_6/beta:A)=
;
_user_specified_name#!Adam/m/batch_normalization_6/beta:B(>
<
_user_specified_name$"Adam/v/batch_normalization_6/gamma:B'>
<
_user_specified_name$"Adam/m/batch_normalization_6/gamma:5&1
/
_user_specified_nameAdam/v/conv2d_10/bias:5%1
/
_user_specified_nameAdam/m/conv2d_10/bias:7$3
1
_user_specified_nameAdam/v/conv2d_10/kernel:7#3
1
_user_specified_nameAdam/m/conv2d_10/kernel:-")
'
_user_specified_namelearning_rate:)!%
#
_user_specified_name	iteration:, (
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:FB
@
_user_specified_name(&batch_normalization_10/moving_variance:B>
<
_user_specified_name$"batch_normalization_10/moving_mean:;7
5
_user_specified_namebatch_normalization_10/beta:<8
6
_user_specified_namebatch_normalization_10/gamma:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:EA
?
_user_specified_name'%batch_normalization_9/moving_variance:A=
;
_user_specified_name#!batch_normalization_9/moving_mean::6
4
_user_specified_namebatch_normalization_9/beta:;7
5
_user_specified_namebatch_normalization_9/gamma:.*
(
_user_specified_nameconv2d_13/bias:0,
*
_user_specified_nameconv2d_13/kernel:EA
?
_user_specified_name'%batch_normalization_8/moving_variance:A=
;
_user_specified_name#!batch_normalization_8/moving_mean::6
4
_user_specified_namebatch_normalization_8/beta:;7
5
_user_specified_namebatch_normalization_8/gamma:.*
(
_user_specified_nameconv2d_12/bias:0,
*
_user_specified_nameconv2d_12/kernel:EA
?
_user_specified_name'%batch_normalization_7/moving_variance:A=
;
_user_specified_name#!batch_normalization_7/moving_mean::
6
4
_user_specified_namebatch_normalization_7/beta:;	7
5
_user_specified_namebatch_normalization_7/gamma:.*
(
_user_specified_nameconv2d_11/bias:0,
*
_user_specified_nameconv2d_11/kernel:EA
?
_user_specified_name'%batch_normalization_6/moving_variance:A=
;
_user_specified_name#!batch_normalization_6/moving_mean::6
4
_user_specified_namebatch_normalization_6/beta:;7
5
_user_specified_namebatch_normalization_6/gamma:.*
(
_user_specified_nameconv2d_10/bias:0,
*
_user_specified_nameconv2d_10/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ї

Л
6__inference_batch_normalization_8_layer_call_fn_330494

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_329397Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330490:&"
 
_user_specified_name330488:&"
 
_user_specified_name330486:&"
 
_user_specified_name330484:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┤
■
E__inference_conv2d_12_layer_call_and_return_conditional_losses_330468

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┐
F
*__inference_dropout_9_layer_call_fn_330669

inputs
identityИ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_329878h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
і
└
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_330393

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Э
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_330329

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:          c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
І

Л
6__inference_batch_normalization_9_layer_call_fn_330600

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_329451Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330596:&"
 
_user_specified_name330594:&"
 
_user_specified_name330592:&"
 
_user_specified_name330590:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Л

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_330562

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:          i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
і
└
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_330274

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
И
L
0__inference_max_pooling2d_6_layer_call_fn_330297

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_329284Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
█

э
C__inference_dense_1_layer_call_and_return_conditional_losses_329786

inputs2
matmul_readvariableop_resource:
ђю.
biasadd_readvariableop_resource:	ю
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђю*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         юs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ю*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         юW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:         юa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:         юS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
┤
■
E__inference_conv2d_10_layer_call_and_return_conditional_losses_329598

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
л
ю
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_330292

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
І

Л
6__inference_batch_normalization_8_layer_call_fn_330481

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_329379Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330477:&"
 
_user_specified_name330475:&"
 
_user_specified_name330473:&"
 
_user_specified_name330471:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Ж
с
-__inference_sequential_4_layer_call_fn_330039
conv2d_10_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11:  

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17: @

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:	@ђ

unknown_24:	ђ

unknown_25:	ђ

unknown_26:	ђ

unknown_27:	ђ

unknown_28:	ђ

unknown_29:
ђю

unknown_30:	ю
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ю*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_329901p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ю<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:         : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_name330035:&"
 
_user_specified_name330033:&"
 
_user_specified_name330031:&"
 
_user_specified_name330029:&"
 
_user_specified_name330027:&"
 
_user_specified_name330025:&"
 
_user_specified_name330023:&"
 
_user_specified_name330021:&"
 
_user_specified_name330019:&"
 
_user_specified_name330017:&"
 
_user_specified_name330015:&"
 
_user_specified_name330013:&"
 
_user_specified_name330011:&"
 
_user_specified_name330009:&"
 
_user_specified_name330007:&"
 
_user_specified_name330005:&"
 
_user_specified_name330003:&"
 
_user_specified_name330001:&"
 
_user_specified_name329999:&"
 
_user_specified_name329997:&"
 
_user_specified_name329995:&"
 
_user_specified_name329993:&
"
 
_user_specified_name329991:&	"
 
_user_specified_name329989:&"
 
_user_specified_name329987:&"
 
_user_specified_name329985:&"
 
_user_specified_name329983:&"
 
_user_specified_name329981:&"
 
_user_specified_name329979:&"
 
_user_specified_name329977:&"
 
_user_specified_name329975:&"
 
_user_specified_name329973:` \
/
_output_shapes
:         
)
_user_specified_nameconv2d_10_input
├
_
C__inference_flatten_layer_call_and_return_conditional_losses_329749

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    @   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         @X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Э
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_330448

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:          c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_329356

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
з
ў
(__inference_dense_1_layer_call_fn_330806

inputs
unknown:
ђю
	unknown_0:	ю
identityѕбStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ю*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_329786p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ю<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330802:&"
 
_user_specified_name330800:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_330659

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ў
Ъ
*__inference_conv2d_10_layer_call_fn_330219

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_329598w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330215:&"
 
_user_specified_name330213:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Гh
▄
H__inference_sequential_4_layer_call_and_return_conditional_losses_329901
conv2d_10_input*
conv2d_10_329796: 
conv2d_10_329798: *
batch_normalization_6_329801: *
batch_normalization_6_329803: *
batch_normalization_6_329805: *
batch_normalization_6_329807: *
conv2d_11_329817:  
conv2d_11_329819: *
batch_normalization_7_329822: *
batch_normalization_7_329824: *
batch_normalization_7_329826: *
batch_normalization_7_329828: *
conv2d_12_329838:  
conv2d_12_329840: *
batch_normalization_8_329843: *
batch_normalization_8_329845: *
batch_normalization_8_329847: *
batch_normalization_8_329849: *
conv2d_13_329859: @
conv2d_13_329861:@*
batch_normalization_9_329864:@*
batch_normalization_9_329866:@*
batch_normalization_9_329868:@*
batch_normalization_9_329870:@
dense_329881:	@ђ
dense_329883:	ђ,
batch_normalization_10_329886:	ђ,
batch_normalization_10_329888:	ђ,
batch_normalization_10_329890:	ђ,
batch_normalization_10_329892:	ђ"
dense_1_329895:
ђю
dense_1_329897:	ю
identityѕб.batch_normalization_10/StatefulPartitionedCallб-batch_normalization_6/StatefulPartitionedCallб-batch_normalization_7/StatefulPartitionedCallб-batch_normalization_8/StatefulPartitionedCallб-batch_normalization_9/StatefulPartitionedCallб!conv2d_10/StatefulPartitionedCallб!conv2d_11/StatefulPartitionedCallб!conv2d_12/StatefulPartitionedCallб!conv2d_13/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallЁ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputconv2d_10_329796conv2d_10_329798*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_329598љ
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_6_329801batch_normalization_6_329803batch_normalization_6_329805batch_normalization_6_329807*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_329253■
max_pooling2d_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_329284С
dropout_6/PartitionedCallPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_329815ў
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv2d_11_329817conv2d_11_329819*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_329637љ
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_7_329822batch_normalization_7_329824batch_normalization_7_329826batch_normalization_7_329828*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_329325■
max_pooling2d_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_329356С
dropout_7/PartitionedCallPartitionedCall(max_pooling2d_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_329836ў
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0conv2d_12_329838conv2d_12_329840*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_329676љ
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_8_329843batch_normalization_8_329845batch_normalization_8_329847batch_normalization_8_329849*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_329397■
max_pooling2d_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_329428С
dropout_8/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_329857ў
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0conv2d_13_329859conv2d_13_329861*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_329715љ
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_9_329864batch_normalization_9_329866batch_normalization_9_329868batch_normalization_9_329870*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_329469■
max_pooling2d_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_329500С
dropout_9/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_329878м
flatten/PartitionedCallPartitionedCall"dropout_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_329749 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_329881dense_329883*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_329761І
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_10_329886batch_normalization_10_329888batch_normalization_10_329890batch_normalization_10_329892*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_329559ъ
dense_1/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_1_329895dense_1_329897*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ю*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_329786x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ют
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:         : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:& "
 
_user_specified_name329897:&"
 
_user_specified_name329895:&"
 
_user_specified_name329892:&"
 
_user_specified_name329890:&"
 
_user_specified_name329888:&"
 
_user_specified_name329886:&"
 
_user_specified_name329883:&"
 
_user_specified_name329881:&"
 
_user_specified_name329870:&"
 
_user_specified_name329868:&"
 
_user_specified_name329866:&"
 
_user_specified_name329864:&"
 
_user_specified_name329861:&"
 
_user_specified_name329859:&"
 
_user_specified_name329849:&"
 
_user_specified_name329847:&"
 
_user_specified_name329845:&"
 
_user_specified_name329843:&"
 
_user_specified_name329840:&"
 
_user_specified_name329838:&"
 
_user_specified_name329828:&"
 
_user_specified_name329826:&
"
 
_user_specified_name329824:&	"
 
_user_specified_name329822:&"
 
_user_specified_name329819:&"
 
_user_specified_name329817:&"
 
_user_specified_name329807:&"
 
_user_specified_name329805:&"
 
_user_specified_name329803:&"
 
_user_specified_name329801:&"
 
_user_specified_name329798:&"
 
_user_specified_name329796:` \
/
_output_shapes
:         
)
_user_specified_nameconv2d_10_input
В
Ћ
&__inference_dense_layer_call_fn_330706

inputs
unknown:	@ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_329761p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330702:&"
 
_user_specified_name330700:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
і
└
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_329451

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Э
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_329836

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:          c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
И
L
0__inference_max_pooling2d_7_layer_call_fn_330416

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_329356Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ь
c
*__inference_dropout_8_layer_call_fn_330545

inputs
identityѕбStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_329703w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
і
└
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_330512

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┤&
№
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_329539

inputs6
'assignmovingavg_readvariableop_resource:	ђ8
)assignmovingavg_1_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ0
!batchnorm_readvariableop_resource:	ђ
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ђ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ђ*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ђѕ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         ђl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ъ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ђ*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Ѓ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђг
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Є
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѕ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         ђi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ђк
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Л

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_330681

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
«	
о
7__inference_batch_normalization_10_layer_call_fn_330743

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_329559p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330739:&"
 
_user_specified_name330737:&"
 
_user_specified_name330735:&"
 
_user_specified_name330733:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Й╠
я"
!__inference__wrapped_model_329217
conv2d_10_inputO
5sequential_4_conv2d_10_conv2d_readvariableop_resource: D
6sequential_4_conv2d_10_biasadd_readvariableop_resource: H
:sequential_4_batch_normalization_6_readvariableop_resource: J
<sequential_4_batch_normalization_6_readvariableop_1_resource: Y
Ksequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource: [
Msequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: O
5sequential_4_conv2d_11_conv2d_readvariableop_resource:  D
6sequential_4_conv2d_11_biasadd_readvariableop_resource: H
:sequential_4_batch_normalization_7_readvariableop_resource: J
<sequential_4_batch_normalization_7_readvariableop_1_resource: Y
Ksequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource: [
Msequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource: O
5sequential_4_conv2d_12_conv2d_readvariableop_resource:  D
6sequential_4_conv2d_12_biasadd_readvariableop_resource: H
:sequential_4_batch_normalization_8_readvariableop_resource: J
<sequential_4_batch_normalization_8_readvariableop_1_resource: Y
Ksequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource: [
Msequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource: O
5sequential_4_conv2d_13_conv2d_readvariableop_resource: @D
6sequential_4_conv2d_13_biasadd_readvariableop_resource:@H
:sequential_4_batch_normalization_9_readvariableop_resource:@J
<sequential_4_batch_normalization_9_readvariableop_1_resource:@Y
Ksequential_4_batch_normalization_9_fusedbatchnormv3_readvariableop_resource:@[
Msequential_4_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:@D
1sequential_4_dense_matmul_readvariableop_resource:	@ђA
2sequential_4_dense_biasadd_readvariableop_resource:	ђT
Esequential_4_batch_normalization_10_batchnorm_readvariableop_resource:	ђX
Isequential_4_batch_normalization_10_batchnorm_mul_readvariableop_resource:	ђV
Gsequential_4_batch_normalization_10_batchnorm_readvariableop_1_resource:	ђV
Gsequential_4_batch_normalization_10_batchnorm_readvariableop_2_resource:	ђG
3sequential_4_dense_1_matmul_readvariableop_resource:
ђюC
4sequential_4_dense_1_biasadd_readvariableop_resource:	ю
identityѕб<sequential_4/batch_normalization_10/batchnorm/ReadVariableOpб>sequential_4/batch_normalization_10/batchnorm/ReadVariableOp_1б>sequential_4/batch_normalization_10/batchnorm/ReadVariableOp_2б@sequential_4/batch_normalization_10/batchnorm/mul/ReadVariableOpбBsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpбDsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1б1sequential_4/batch_normalization_6/ReadVariableOpб3sequential_4/batch_normalization_6/ReadVariableOp_1бBsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpбDsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1б1sequential_4/batch_normalization_7/ReadVariableOpб3sequential_4/batch_normalization_7/ReadVariableOp_1бBsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpбDsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1б1sequential_4/batch_normalization_8/ReadVariableOpб3sequential_4/batch_normalization_8/ReadVariableOp_1бBsequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOpбDsequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1б1sequential_4/batch_normalization_9/ReadVariableOpб3sequential_4/batch_normalization_9/ReadVariableOp_1б-sequential_4/conv2d_10/BiasAdd/ReadVariableOpб,sequential_4/conv2d_10/Conv2D/ReadVariableOpб-sequential_4/conv2d_11/BiasAdd/ReadVariableOpб,sequential_4/conv2d_11/Conv2D/ReadVariableOpб-sequential_4/conv2d_12/BiasAdd/ReadVariableOpб,sequential_4/conv2d_12/Conv2D/ReadVariableOpб-sequential_4/conv2d_13/BiasAdd/ReadVariableOpб,sequential_4/conv2d_13/Conv2D/ReadVariableOpб)sequential_4/dense/BiasAdd/ReadVariableOpб(sequential_4/dense/MatMul/ReadVariableOpб+sequential_4/dense_1/BiasAdd/ReadVariableOpб*sequential_4/dense_1/MatMul/ReadVariableOpф
,sequential_4/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0л
sequential_4/conv2d_10/Conv2DConv2Dconv2d_10_input4sequential_4/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
а
-sequential_4/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┬
sequential_4/conv2d_10/BiasAddBiasAdd&sequential_4/conv2d_10/Conv2D:output:05sequential_4/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          є
sequential_4/conv2d_10/ReluRelu'sequential_4/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:          е
1sequential_4/batch_normalization_6/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype0г
3sequential_4/batch_normalization_6/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype0╩
Bsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0╬
Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ѕ
3sequential_4/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3)sequential_4/conv2d_10/Relu:activations:09sequential_4/batch_normalization_6/ReadVariableOp:value:0;sequential_4/batch_normalization_6/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oЃ:*
is_training( Н
$sequential_4/max_pooling2d_6/MaxPoolMaxPool7sequential_4/batch_normalization_6/FusedBatchNormV3:y:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
ћ
sequential_4/dropout_6/IdentityIdentity-sequential_4/max_pooling2d_6/MaxPool:output:0*
T0*/
_output_shapes
:          ф
,sequential_4/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0ж
sequential_4/conv2d_11/Conv2DConv2D(sequential_4/dropout_6/Identity:output:04sequential_4/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
а
-sequential_4/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┬
sequential_4/conv2d_11/BiasAddBiasAdd&sequential_4/conv2d_11/Conv2D:output:05sequential_4/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          є
sequential_4/conv2d_11/ReluRelu'sequential_4/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:          е
1sequential_4/batch_normalization_7/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_7_readvariableop_resource*
_output_shapes
: *
dtype0г
3sequential_4/batch_normalization_7/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_7_readvariableop_1_resource*
_output_shapes
: *
dtype0╩
Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0╬
Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ѕ
3sequential_4/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3)sequential_4/conv2d_11/Relu:activations:09sequential_4/batch_normalization_7/ReadVariableOp:value:0;sequential_4/batch_normalization_7/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oЃ:*
is_training( Н
$sequential_4/max_pooling2d_7/MaxPoolMaxPool7sequential_4/batch_normalization_7/FusedBatchNormV3:y:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
ћ
sequential_4/dropout_7/IdentityIdentity-sequential_4/max_pooling2d_7/MaxPool:output:0*
T0*/
_output_shapes
:          ф
,sequential_4/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0ж
sequential_4/conv2d_12/Conv2DConv2D(sequential_4/dropout_7/Identity:output:04sequential_4/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
а
-sequential_4/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┬
sequential_4/conv2d_12/BiasAddBiasAdd&sequential_4/conv2d_12/Conv2D:output:05sequential_4/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          є
sequential_4/conv2d_12/ReluRelu'sequential_4/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:          е
1sequential_4/batch_normalization_8/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_8_readvariableop_resource*
_output_shapes
: *
dtype0г
3sequential_4/batch_normalization_8/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_8_readvariableop_1_resource*
_output_shapes
: *
dtype0╩
Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0╬
Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ѕ
3sequential_4/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3)sequential_4/conv2d_12/Relu:activations:09sequential_4/batch_normalization_8/ReadVariableOp:value:0;sequential_4/batch_normalization_8/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oЃ:*
is_training( Н
$sequential_4/max_pooling2d_8/MaxPoolMaxPool7sequential_4/batch_normalization_8/FusedBatchNormV3:y:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
ћ
sequential_4/dropout_8/IdentityIdentity-sequential_4/max_pooling2d_8/MaxPool:output:0*
T0*/
_output_shapes
:          ф
,sequential_4/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ж
sequential_4/conv2d_13/Conv2DConv2D(sequential_4/dropout_8/Identity:output:04sequential_4/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
а
-sequential_4/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_4/conv2d_13/BiasAddBiasAdd&sequential_4/conv2d_13/Conv2D:output:05sequential_4/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @є
sequential_4/conv2d_13/ReluRelu'sequential_4/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:         @е
1sequential_4/batch_normalization_9/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_9_readvariableop_resource*
_output_shapes
:@*
dtype0г
3sequential_4/batch_normalization_9/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_9_readvariableop_1_resource*
_output_shapes
:@*
dtype0╩
Bsequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0╬
Dsequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ѕ
3sequential_4/batch_normalization_9/FusedBatchNormV3FusedBatchNormV3)sequential_4/conv2d_13/Relu:activations:09sequential_4/batch_normalization_9/ReadVariableOp:value:0;sequential_4/batch_normalization_9/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oЃ:*
is_training( Н
$sequential_4/max_pooling2d_9/MaxPoolMaxPool7sequential_4/batch_normalization_9/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
ћ
sequential_4/dropout_9/IdentityIdentity-sequential_4/max_pooling2d_9/MaxPool:output:0*
T0*/
_output_shapes
:         @k
sequential_4/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    @   е
sequential_4/flatten/ReshapeReshape(sequential_4/dropout_9/Identity:output:0#sequential_4/flatten/Const:output:0*
T0*'
_output_shapes
:         @Џ
(sequential_4/dense/MatMul/ReadVariableOpReadVariableOp1sequential_4_dense_matmul_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0»
sequential_4/dense/MatMulMatMul%sequential_4/flatten/Reshape:output:00sequential_4/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЎ
)sequential_4/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_4_dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0░
sequential_4/dense/BiasAddBiasAdd#sequential_4/dense/MatMul:product:01sequential_4/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђw
sequential_4/dense/ReluRelu#sequential_4/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ┐
<sequential_4/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOpEsequential_4_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype0x
3sequential_4/batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:С
1sequential_4/batch_normalization_10/batchnorm/addAddV2Dsequential_4/batch_normalization_10/batchnorm/ReadVariableOp:value:0<sequential_4/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђЎ
3sequential_4/batch_normalization_10/batchnorm/RsqrtRsqrt5sequential_4/batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:ђК
@sequential_4/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_4_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype0р
1sequential_4/batch_normalization_10/batchnorm/mulMul7sequential_4/batch_normalization_10/batchnorm/Rsqrt:y:0Hsequential_4/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ╦
3sequential_4/batch_normalization_10/batchnorm/mul_1Mul%sequential_4/dense/Relu:activations:05sequential_4/batch_normalization_10/batchnorm/mul:z:0*
T0*(
_output_shapes
:         ђ├
>sequential_4/batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_4_batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0▀
3sequential_4/batch_normalization_10/batchnorm/mul_2MulFsequential_4/batch_normalization_10/batchnorm/ReadVariableOp_1:value:05sequential_4/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ├
>sequential_4/batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_4_batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ*
dtype0▀
1sequential_4/batch_normalization_10/batchnorm/subSubFsequential_4/batch_normalization_10/batchnorm/ReadVariableOp_2:value:07sequential_4/batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ▀
3sequential_4/batch_normalization_10/batchnorm/add_1AddV27sequential_4/batch_normalization_10/batchnorm/mul_1:z:05sequential_4/batch_normalization_10/batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђа
*sequential_4/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ђю*
dtype0┼
sequential_4/dense_1/MatMulMatMul7sequential_4/batch_normalization_10/batchnorm/add_1:z:02sequential_4/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         юЮ
+sequential_4/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ю*
dtype0Х
sequential_4/dense_1/BiasAddBiasAdd%sequential_4/dense_1/MatMul:product:03sequential_4/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         юЂ
sequential_4/dense_1/SoftmaxSoftmax%sequential_4/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         юv
IdentityIdentity&sequential_4/dense_1/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:         юг
NoOpNoOp=^sequential_4/batch_normalization_10/batchnorm/ReadVariableOp?^sequential_4/batch_normalization_10/batchnorm/ReadVariableOp_1?^sequential_4/batch_normalization_10/batchnorm/ReadVariableOp_2A^sequential_4/batch_normalization_10/batchnorm/mul/ReadVariableOpC^sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12^sequential_4/batch_normalization_6/ReadVariableOp4^sequential_4/batch_normalization_6/ReadVariableOp_1C^sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12^sequential_4/batch_normalization_7/ReadVariableOp4^sequential_4/batch_normalization_7/ReadVariableOp_1C^sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12^sequential_4/batch_normalization_8/ReadVariableOp4^sequential_4/batch_normalization_8/ReadVariableOp_1C^sequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12^sequential_4/batch_normalization_9/ReadVariableOp4^sequential_4/batch_normalization_9/ReadVariableOp_1.^sequential_4/conv2d_10/BiasAdd/ReadVariableOp-^sequential_4/conv2d_10/Conv2D/ReadVariableOp.^sequential_4/conv2d_11/BiasAdd/ReadVariableOp-^sequential_4/conv2d_11/Conv2D/ReadVariableOp.^sequential_4/conv2d_12/BiasAdd/ReadVariableOp-^sequential_4/conv2d_12/Conv2D/ReadVariableOp.^sequential_4/conv2d_13/BiasAdd/ReadVariableOp-^sequential_4/conv2d_13/Conv2D/ReadVariableOp*^sequential_4/dense/BiasAdd/ReadVariableOp)^sequential_4/dense/MatMul/ReadVariableOp,^sequential_4/dense_1/BiasAdd/ReadVariableOp+^sequential_4/dense_1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:         : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2ђ
>sequential_4/batch_normalization_10/batchnorm/ReadVariableOp_1>sequential_4/batch_normalization_10/batchnorm/ReadVariableOp_12ђ
>sequential_4/batch_normalization_10/batchnorm/ReadVariableOp_2>sequential_4/batch_normalization_10/batchnorm/ReadVariableOp_22|
<sequential_4/batch_normalization_10/batchnorm/ReadVariableOp<sequential_4/batch_normalization_10/batchnorm/ReadVariableOp2ё
@sequential_4/batch_normalization_10/batchnorm/mul/ReadVariableOp@sequential_4/batch_normalization_10/batchnorm/mul/ReadVariableOp2ї
Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12ѕ
Bsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2j
3sequential_4/batch_normalization_6/ReadVariableOp_13sequential_4/batch_normalization_6/ReadVariableOp_12f
1sequential_4/batch_normalization_6/ReadVariableOp1sequential_4/batch_normalization_6/ReadVariableOp2ї
Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12ѕ
Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2j
3sequential_4/batch_normalization_7/ReadVariableOp_13sequential_4/batch_normalization_7/ReadVariableOp_12f
1sequential_4/batch_normalization_7/ReadVariableOp1sequential_4/batch_normalization_7/ReadVariableOp2ї
Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12ѕ
Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2j
3sequential_4/batch_normalization_8/ReadVariableOp_13sequential_4/batch_normalization_8/ReadVariableOp_12f
1sequential_4/batch_normalization_8/ReadVariableOp1sequential_4/batch_normalization_8/ReadVariableOp2ї
Dsequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12ѕ
Bsequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2j
3sequential_4/batch_normalization_9/ReadVariableOp_13sequential_4/batch_normalization_9/ReadVariableOp_12f
1sequential_4/batch_normalization_9/ReadVariableOp1sequential_4/batch_normalization_9/ReadVariableOp2^
-sequential_4/conv2d_10/BiasAdd/ReadVariableOp-sequential_4/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_10/Conv2D/ReadVariableOp,sequential_4/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_11/BiasAdd/ReadVariableOp-sequential_4/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_11/Conv2D/ReadVariableOp,sequential_4/conv2d_11/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_12/BiasAdd/ReadVariableOp-sequential_4/conv2d_12/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_12/Conv2D/ReadVariableOp,sequential_4/conv2d_12/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_13/BiasAdd/ReadVariableOp-sequential_4/conv2d_13/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_13/Conv2D/ReadVariableOp,sequential_4/conv2d_13/Conv2D/ReadVariableOp2V
)sequential_4/dense/BiasAdd/ReadVariableOp)sequential_4/dense/BiasAdd/ReadVariableOp2T
(sequential_4/dense/MatMul/ReadVariableOp(sequential_4/dense/MatMul/ReadVariableOp2Z
+sequential_4/dense_1/BiasAdd/ReadVariableOp+sequential_4/dense_1/BiasAdd/ReadVariableOp2X
*sequential_4/dense_1/MatMul/ReadVariableOp*sequential_4/dense_1/MatMul/ReadVariableOp:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:` \
/
_output_shapes
:         
)
_user_specified_nameconv2d_10_input
Л

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_329742

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ў
Ъ
*__inference_conv2d_13_layer_call_fn_330576

inputs!
unknown: @
	unknown_0:@
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_329715w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330572:&"
 
_user_specified_name330570:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Э
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_330686

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
л
ю
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_329469

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
х
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_330797

inputs0
!batchnorm_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ2
#batchnorm_readvariableop_1_resource:	ђ2
#batchnorm_readvariableop_2_resource:	ђ
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         ђ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ђќ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Э
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_330567

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:          c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
л
ю
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_329397

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
л

З
A__inference_dense_layer_call_and_return_conditional_losses_330717

inputs1
matmul_readvariableop_resource:	@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╬з
║N
__inference__traced_save_331331
file_prefixA
'read_disablecopyonread_conv2d_10_kernel: 5
'read_1_disablecopyonread_conv2d_10_bias: B
4read_2_disablecopyonread_batch_normalization_6_gamma: A
3read_3_disablecopyonread_batch_normalization_6_beta: H
:read_4_disablecopyonread_batch_normalization_6_moving_mean: L
>read_5_disablecopyonread_batch_normalization_6_moving_variance: C
)read_6_disablecopyonread_conv2d_11_kernel:  5
'read_7_disablecopyonread_conv2d_11_bias: B
4read_8_disablecopyonread_batch_normalization_7_gamma: A
3read_9_disablecopyonread_batch_normalization_7_beta: I
;read_10_disablecopyonread_batch_normalization_7_moving_mean: M
?read_11_disablecopyonread_batch_normalization_7_moving_variance: D
*read_12_disablecopyonread_conv2d_12_kernel:  6
(read_13_disablecopyonread_conv2d_12_bias: C
5read_14_disablecopyonread_batch_normalization_8_gamma: B
4read_15_disablecopyonread_batch_normalization_8_beta: I
;read_16_disablecopyonread_batch_normalization_8_moving_mean: M
?read_17_disablecopyonread_batch_normalization_8_moving_variance: D
*read_18_disablecopyonread_conv2d_13_kernel: @6
(read_19_disablecopyonread_conv2d_13_bias:@C
5read_20_disablecopyonread_batch_normalization_9_gamma:@B
4read_21_disablecopyonread_batch_normalization_9_beta:@I
;read_22_disablecopyonread_batch_normalization_9_moving_mean:@M
?read_23_disablecopyonread_batch_normalization_9_moving_variance:@9
&read_24_disablecopyonread_dense_kernel:	@ђ3
$read_25_disablecopyonread_dense_bias:	ђE
6read_26_disablecopyonread_batch_normalization_10_gamma:	ђD
5read_27_disablecopyonread_batch_normalization_10_beta:	ђK
<read_28_disablecopyonread_batch_normalization_10_moving_mean:	ђO
@read_29_disablecopyonread_batch_normalization_10_moving_variance:	ђ<
(read_30_disablecopyonread_dense_1_kernel:
ђю5
&read_31_disablecopyonread_dense_1_bias:	ю-
#read_32_disablecopyonread_iteration:	 1
'read_33_disablecopyonread_learning_rate: K
1read_34_disablecopyonread_adam_m_conv2d_10_kernel: K
1read_35_disablecopyonread_adam_v_conv2d_10_kernel: =
/read_36_disablecopyonread_adam_m_conv2d_10_bias: =
/read_37_disablecopyonread_adam_v_conv2d_10_bias: J
<read_38_disablecopyonread_adam_m_batch_normalization_6_gamma: J
<read_39_disablecopyonread_adam_v_batch_normalization_6_gamma: I
;read_40_disablecopyonread_adam_m_batch_normalization_6_beta: I
;read_41_disablecopyonread_adam_v_batch_normalization_6_beta: K
1read_42_disablecopyonread_adam_m_conv2d_11_kernel:  K
1read_43_disablecopyonread_adam_v_conv2d_11_kernel:  =
/read_44_disablecopyonread_adam_m_conv2d_11_bias: =
/read_45_disablecopyonread_adam_v_conv2d_11_bias: J
<read_46_disablecopyonread_adam_m_batch_normalization_7_gamma: J
<read_47_disablecopyonread_adam_v_batch_normalization_7_gamma: I
;read_48_disablecopyonread_adam_m_batch_normalization_7_beta: I
;read_49_disablecopyonread_adam_v_batch_normalization_7_beta: K
1read_50_disablecopyonread_adam_m_conv2d_12_kernel:  K
1read_51_disablecopyonread_adam_v_conv2d_12_kernel:  =
/read_52_disablecopyonread_adam_m_conv2d_12_bias: =
/read_53_disablecopyonread_adam_v_conv2d_12_bias: J
<read_54_disablecopyonread_adam_m_batch_normalization_8_gamma: J
<read_55_disablecopyonread_adam_v_batch_normalization_8_gamma: I
;read_56_disablecopyonread_adam_m_batch_normalization_8_beta: I
;read_57_disablecopyonread_adam_v_batch_normalization_8_beta: K
1read_58_disablecopyonread_adam_m_conv2d_13_kernel: @K
1read_59_disablecopyonread_adam_v_conv2d_13_kernel: @=
/read_60_disablecopyonread_adam_m_conv2d_13_bias:@=
/read_61_disablecopyonread_adam_v_conv2d_13_bias:@J
<read_62_disablecopyonread_adam_m_batch_normalization_9_gamma:@J
<read_63_disablecopyonread_adam_v_batch_normalization_9_gamma:@I
;read_64_disablecopyonread_adam_m_batch_normalization_9_beta:@I
;read_65_disablecopyonread_adam_v_batch_normalization_9_beta:@@
-read_66_disablecopyonread_adam_m_dense_kernel:	@ђ@
-read_67_disablecopyonread_adam_v_dense_kernel:	@ђ:
+read_68_disablecopyonread_adam_m_dense_bias:	ђ:
+read_69_disablecopyonread_adam_v_dense_bias:	ђL
=read_70_disablecopyonread_adam_m_batch_normalization_10_gamma:	ђL
=read_71_disablecopyonread_adam_v_batch_normalization_10_gamma:	ђK
<read_72_disablecopyonread_adam_m_batch_normalization_10_beta:	ђK
<read_73_disablecopyonread_adam_v_batch_normalization_10_beta:	ђC
/read_74_disablecopyonread_adam_m_dense_1_kernel:
ђюC
/read_75_disablecopyonread_adam_v_dense_1_kernel:
ђю<
-read_76_disablecopyonread_adam_m_dense_1_bias:	ю<
-read_77_disablecopyonread_adam_v_dense_1_bias:	ю+
!read_78_disablecopyonread_total_1: +
!read_79_disablecopyonread_count_1: )
read_80_disablecopyonread_total: )
read_81_disablecopyonread_count: 
savev2_const
identity_165ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_19/DisableCopyOnReadбRead_19/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_20/DisableCopyOnReadбRead_20/ReadVariableOpбRead_21/DisableCopyOnReadбRead_21/ReadVariableOpбRead_22/DisableCopyOnReadбRead_22/ReadVariableOpбRead_23/DisableCopyOnReadбRead_23/ReadVariableOpбRead_24/DisableCopyOnReadбRead_24/ReadVariableOpбRead_25/DisableCopyOnReadбRead_25/ReadVariableOpбRead_26/DisableCopyOnReadбRead_26/ReadVariableOpбRead_27/DisableCopyOnReadбRead_27/ReadVariableOpбRead_28/DisableCopyOnReadбRead_28/ReadVariableOpбRead_29/DisableCopyOnReadбRead_29/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_30/DisableCopyOnReadбRead_30/ReadVariableOpбRead_31/DisableCopyOnReadбRead_31/ReadVariableOpбRead_32/DisableCopyOnReadбRead_32/ReadVariableOpбRead_33/DisableCopyOnReadбRead_33/ReadVariableOpбRead_34/DisableCopyOnReadбRead_34/ReadVariableOpбRead_35/DisableCopyOnReadбRead_35/ReadVariableOpбRead_36/DisableCopyOnReadбRead_36/ReadVariableOpбRead_37/DisableCopyOnReadбRead_37/ReadVariableOpбRead_38/DisableCopyOnReadбRead_38/ReadVariableOpбRead_39/DisableCopyOnReadбRead_39/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_40/DisableCopyOnReadбRead_40/ReadVariableOpбRead_41/DisableCopyOnReadбRead_41/ReadVariableOpбRead_42/DisableCopyOnReadбRead_42/ReadVariableOpбRead_43/DisableCopyOnReadбRead_43/ReadVariableOpбRead_44/DisableCopyOnReadбRead_44/ReadVariableOpбRead_45/DisableCopyOnReadбRead_45/ReadVariableOpбRead_46/DisableCopyOnReadбRead_46/ReadVariableOpбRead_47/DisableCopyOnReadбRead_47/ReadVariableOpбRead_48/DisableCopyOnReadбRead_48/ReadVariableOpбRead_49/DisableCopyOnReadбRead_49/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_50/DisableCopyOnReadбRead_50/ReadVariableOpбRead_51/DisableCopyOnReadбRead_51/ReadVariableOpбRead_52/DisableCopyOnReadбRead_52/ReadVariableOpбRead_53/DisableCopyOnReadбRead_53/ReadVariableOpбRead_54/DisableCopyOnReadбRead_54/ReadVariableOpбRead_55/DisableCopyOnReadбRead_55/ReadVariableOpбRead_56/DisableCopyOnReadбRead_56/ReadVariableOpбRead_57/DisableCopyOnReadбRead_57/ReadVariableOpбRead_58/DisableCopyOnReadбRead_58/ReadVariableOpбRead_59/DisableCopyOnReadбRead_59/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_60/DisableCopyOnReadбRead_60/ReadVariableOpбRead_61/DisableCopyOnReadбRead_61/ReadVariableOpбRead_62/DisableCopyOnReadбRead_62/ReadVariableOpбRead_63/DisableCopyOnReadбRead_63/ReadVariableOpбRead_64/DisableCopyOnReadбRead_64/ReadVariableOpбRead_65/DisableCopyOnReadбRead_65/ReadVariableOpбRead_66/DisableCopyOnReadбRead_66/ReadVariableOpбRead_67/DisableCopyOnReadбRead_67/ReadVariableOpбRead_68/DisableCopyOnReadбRead_68/ReadVariableOpбRead_69/DisableCopyOnReadбRead_69/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_70/DisableCopyOnReadбRead_70/ReadVariableOpбRead_71/DisableCopyOnReadбRead_71/ReadVariableOpбRead_72/DisableCopyOnReadбRead_72/ReadVariableOpбRead_73/DisableCopyOnReadбRead_73/ReadVariableOpбRead_74/DisableCopyOnReadбRead_74/ReadVariableOpбRead_75/DisableCopyOnReadбRead_75/ReadVariableOpбRead_76/DisableCopyOnReadбRead_76/ReadVariableOpбRead_77/DisableCopyOnReadбRead_77/ReadVariableOpбRead_78/DisableCopyOnReadбRead_78/ReadVariableOpбRead_79/DisableCopyOnReadбRead_79/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_80/DisableCopyOnReadбRead_80/ReadVariableOpбRead_81/DisableCopyOnReadбRead_81/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 Ф
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_10_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_10_bias"/device:CPU:0*
_output_shapes
 Б
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_10_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: ѕ
Read_2/DisableCopyOnReadDisableCopyOnRead4read_2_disablecopyonread_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 ░
Read_2/ReadVariableOpReadVariableOp4read_2_disablecopyonread_batch_normalization_6_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
: Є
Read_3/DisableCopyOnReadDisableCopyOnRead3read_3_disablecopyonread_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 »
Read_3/ReadVariableOpReadVariableOp3read_3_disablecopyonread_batch_normalization_6_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: ј
Read_4/DisableCopyOnReadDisableCopyOnRead:read_4_disablecopyonread_batch_normalization_6_moving_mean"/device:CPU:0*
_output_shapes
 Х
Read_4/ReadVariableOpReadVariableOp:read_4_disablecopyonread_batch_normalization_6_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: њ
Read_5/DisableCopyOnReadDisableCopyOnRead>read_5_disablecopyonread_batch_normalization_6_moving_variance"/device:CPU:0*
_output_shapes
 ║
Read_5/ReadVariableOpReadVariableOp>read_5_disablecopyonread_batch_normalization_6_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_11_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:  {
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_11_bias"/device:CPU:0*
_output_shapes
 Б
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_11_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: ѕ
Read_8/DisableCopyOnReadDisableCopyOnRead4read_8_disablecopyonread_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 ░
Read_8/ReadVariableOpReadVariableOp4read_8_disablecopyonread_batch_normalization_7_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: Є
Read_9/DisableCopyOnReadDisableCopyOnRead3read_9_disablecopyonread_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 »
Read_9/ReadVariableOpReadVariableOp3read_9_disablecopyonread_batch_normalization_7_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: љ
Read_10/DisableCopyOnReadDisableCopyOnRead;read_10_disablecopyonread_batch_normalization_7_moving_mean"/device:CPU:0*
_output_shapes
 ╣
Read_10/ReadVariableOpReadVariableOp;read_10_disablecopyonread_batch_normalization_7_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: ћ
Read_11/DisableCopyOnReadDisableCopyOnRead?read_11_disablecopyonread_batch_normalization_7_moving_variance"/device:CPU:0*
_output_shapes
 й
Read_11/ReadVariableOpReadVariableOp?read_11_disablecopyonread_batch_normalization_7_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_12/DisableCopyOnReadDisableCopyOnRead*read_12_disablecopyonread_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_12/ReadVariableOpReadVariableOp*read_12_disablecopyonread_conv2d_12_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
:  }
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_conv2d_12_bias"/device:CPU:0*
_output_shapes
 д
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_conv2d_12_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: і
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_batch_normalization_8_gamma"/device:CPU:0*
_output_shapes
 │
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_batch_normalization_8_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: Ѕ
Read_15/DisableCopyOnReadDisableCopyOnRead4read_15_disablecopyonread_batch_normalization_8_beta"/device:CPU:0*
_output_shapes
 ▓
Read_15/ReadVariableOpReadVariableOp4read_15_disablecopyonread_batch_normalization_8_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: љ
Read_16/DisableCopyOnReadDisableCopyOnRead;read_16_disablecopyonread_batch_normalization_8_moving_mean"/device:CPU:0*
_output_shapes
 ╣
Read_16/ReadVariableOpReadVariableOp;read_16_disablecopyonread_batch_normalization_8_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: ћ
Read_17/DisableCopyOnReadDisableCopyOnRead?read_17_disablecopyonread_batch_normalization_8_moving_variance"/device:CPU:0*
_output_shapes
 й
Read_17/ReadVariableOpReadVariableOp?read_17_disablecopyonread_batch_normalization_8_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_18/DisableCopyOnReadDisableCopyOnRead*read_18_disablecopyonread_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_18/ReadVariableOpReadVariableOp*read_18_disablecopyonread_conv2d_13_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: @}
Read_19/DisableCopyOnReadDisableCopyOnRead(read_19_disablecopyonread_conv2d_13_bias"/device:CPU:0*
_output_shapes
 д
Read_19/ReadVariableOpReadVariableOp(read_19_disablecopyonread_conv2d_13_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@і
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_batch_normalization_9_gamma"/device:CPU:0*
_output_shapes
 │
Read_20/ReadVariableOpReadVariableOp5read_20_disablecopyonread_batch_normalization_9_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ѕ
Read_21/DisableCopyOnReadDisableCopyOnRead4read_21_disablecopyonread_batch_normalization_9_beta"/device:CPU:0*
_output_shapes
 ▓
Read_21/ReadVariableOpReadVariableOp4read_21_disablecopyonread_batch_normalization_9_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@љ
Read_22/DisableCopyOnReadDisableCopyOnRead;read_22_disablecopyonread_batch_normalization_9_moving_mean"/device:CPU:0*
_output_shapes
 ╣
Read_22/ReadVariableOpReadVariableOp;read_22_disablecopyonread_batch_normalization_9_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@ћ
Read_23/DisableCopyOnReadDisableCopyOnRead?read_23_disablecopyonread_batch_normalization_9_moving_variance"/device:CPU:0*
_output_shapes
 й
Read_23/ReadVariableOpReadVariableOp?read_23_disablecopyonread_batch_normalization_9_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_24/DisableCopyOnReadDisableCopyOnRead&read_24_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 Е
Read_24/ReadVariableOpReadVariableOp&read_24_disablecopyonread_dense_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@ђ*
dtype0p
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@ђf
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:	@ђy
Read_25/DisableCopyOnReadDisableCopyOnRead$read_25_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 Б
Read_25/ReadVariableOpReadVariableOp$read_25_disablecopyonread_dense_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђІ
Read_26/DisableCopyOnReadDisableCopyOnRead6read_26_disablecopyonread_batch_normalization_10_gamma"/device:CPU:0*
_output_shapes
 х
Read_26/ReadVariableOpReadVariableOp6read_26_disablecopyonread_batch_normalization_10_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђі
Read_27/DisableCopyOnReadDisableCopyOnRead5read_27_disablecopyonread_batch_normalization_10_beta"/device:CPU:0*
_output_shapes
 ┤
Read_27/ReadVariableOpReadVariableOp5read_27_disablecopyonread_batch_normalization_10_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЉ
Read_28/DisableCopyOnReadDisableCopyOnRead<read_28_disablecopyonread_batch_normalization_10_moving_mean"/device:CPU:0*
_output_shapes
 ╗
Read_28/ReadVariableOpReadVariableOp<read_28_disablecopyonread_batch_normalization_10_moving_mean^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЋ
Read_29/DisableCopyOnReadDisableCopyOnRead@read_29_disablecopyonread_batch_normalization_10_moving_variance"/device:CPU:0*
_output_shapes
 ┐
Read_29/ReadVariableOpReadVariableOp@read_29_disablecopyonread_batch_normalization_10_moving_variance^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ}
Read_30/DisableCopyOnReadDisableCopyOnRead(read_30_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 г
Read_30/ReadVariableOpReadVariableOp(read_30_disablecopyonread_dense_1_kernel^Read_30/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђю*
dtype0q
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђюg
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђю{
Read_31/DisableCopyOnReadDisableCopyOnRead&read_31_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 Ц
Read_31/ReadVariableOpReadVariableOp&read_31_disablecopyonread_dense_1_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ю*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:юb
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:юx
Read_32/DisableCopyOnReadDisableCopyOnRead#read_32_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ю
Read_32/ReadVariableOpReadVariableOp#read_32_disablecopyonread_iteration^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_33/DisableCopyOnReadDisableCopyOnRead'read_33_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 А
Read_33/ReadVariableOpReadVariableOp'read_33_disablecopyonread_learning_rate^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: є
Read_34/DisableCopyOnReadDisableCopyOnRead1read_34_disablecopyonread_adam_m_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_34/ReadVariableOpReadVariableOp1read_34_disablecopyonread_adam_m_conv2d_10_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*&
_output_shapes
: є
Read_35/DisableCopyOnReadDisableCopyOnRead1read_35_disablecopyonread_adam_v_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_35/ReadVariableOpReadVariableOp1read_35_disablecopyonread_adam_v_conv2d_10_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*&
_output_shapes
: ё
Read_36/DisableCopyOnReadDisableCopyOnRead/read_36_disablecopyonread_adam_m_conv2d_10_bias"/device:CPU:0*
_output_shapes
 Г
Read_36/ReadVariableOpReadVariableOp/read_36_disablecopyonread_adam_m_conv2d_10_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
: ё
Read_37/DisableCopyOnReadDisableCopyOnRead/read_37_disablecopyonread_adam_v_conv2d_10_bias"/device:CPU:0*
_output_shapes
 Г
Read_37/ReadVariableOpReadVariableOp/read_37_disablecopyonread_adam_v_conv2d_10_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
: Љ
Read_38/DisableCopyOnReadDisableCopyOnRead<read_38_disablecopyonread_adam_m_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 ║
Read_38/ReadVariableOpReadVariableOp<read_38_disablecopyonread_adam_m_batch_normalization_6_gamma^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: Љ
Read_39/DisableCopyOnReadDisableCopyOnRead<read_39_disablecopyonread_adam_v_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 ║
Read_39/ReadVariableOpReadVariableOp<read_39_disablecopyonread_adam_v_batch_normalization_6_gamma^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: љ
Read_40/DisableCopyOnReadDisableCopyOnRead;read_40_disablecopyonread_adam_m_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 ╣
Read_40/ReadVariableOpReadVariableOp;read_40_disablecopyonread_adam_m_batch_normalization_6_beta^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: љ
Read_41/DisableCopyOnReadDisableCopyOnRead;read_41_disablecopyonread_adam_v_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 ╣
Read_41/ReadVariableOpReadVariableOp;read_41_disablecopyonread_adam_v_batch_normalization_6_beta^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: є
Read_42/DisableCopyOnReadDisableCopyOnRead1read_42_disablecopyonread_adam_m_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_42/ReadVariableOpReadVariableOp1read_42_disablecopyonread_adam_m_conv2d_11_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*&
_output_shapes
:  є
Read_43/DisableCopyOnReadDisableCopyOnRead1read_43_disablecopyonread_adam_v_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_43/ReadVariableOpReadVariableOp1read_43_disablecopyonread_adam_v_conv2d_11_kernel^Read_43/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*&
_output_shapes
:  ё
Read_44/DisableCopyOnReadDisableCopyOnRead/read_44_disablecopyonread_adam_m_conv2d_11_bias"/device:CPU:0*
_output_shapes
 Г
Read_44/ReadVariableOpReadVariableOp/read_44_disablecopyonread_adam_m_conv2d_11_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: ё
Read_45/DisableCopyOnReadDisableCopyOnRead/read_45_disablecopyonread_adam_v_conv2d_11_bias"/device:CPU:0*
_output_shapes
 Г
Read_45/ReadVariableOpReadVariableOp/read_45_disablecopyonread_adam_v_conv2d_11_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: Љ
Read_46/DisableCopyOnReadDisableCopyOnRead<read_46_disablecopyonread_adam_m_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 ║
Read_46/ReadVariableOpReadVariableOp<read_46_disablecopyonread_adam_m_batch_normalization_7_gamma^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
: Љ
Read_47/DisableCopyOnReadDisableCopyOnRead<read_47_disablecopyonread_adam_v_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 ║
Read_47/ReadVariableOpReadVariableOp<read_47_disablecopyonread_adam_v_batch_normalization_7_gamma^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
: љ
Read_48/DisableCopyOnReadDisableCopyOnRead;read_48_disablecopyonread_adam_m_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 ╣
Read_48/ReadVariableOpReadVariableOp;read_48_disablecopyonread_adam_m_batch_normalization_7_beta^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
: љ
Read_49/DisableCopyOnReadDisableCopyOnRead;read_49_disablecopyonread_adam_v_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 ╣
Read_49/ReadVariableOpReadVariableOp;read_49_disablecopyonread_adam_v_batch_normalization_7_beta^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
: є
Read_50/DisableCopyOnReadDisableCopyOnRead1read_50_disablecopyonread_adam_m_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_50/ReadVariableOpReadVariableOp1read_50_disablecopyonread_adam_m_conv2d_12_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0x
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*&
_output_shapes
:  є
Read_51/DisableCopyOnReadDisableCopyOnRead1read_51_disablecopyonread_adam_v_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_51/ReadVariableOpReadVariableOp1read_51_disablecopyonread_adam_v_conv2d_12_kernel^Read_51/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0x
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*&
_output_shapes
:  ё
Read_52/DisableCopyOnReadDisableCopyOnRead/read_52_disablecopyonread_adam_m_conv2d_12_bias"/device:CPU:0*
_output_shapes
 Г
Read_52/ReadVariableOpReadVariableOp/read_52_disablecopyonread_adam_m_conv2d_12_bias^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
: ё
Read_53/DisableCopyOnReadDisableCopyOnRead/read_53_disablecopyonread_adam_v_conv2d_12_bias"/device:CPU:0*
_output_shapes
 Г
Read_53/ReadVariableOpReadVariableOp/read_53_disablecopyonread_adam_v_conv2d_12_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
: Љ
Read_54/DisableCopyOnReadDisableCopyOnRead<read_54_disablecopyonread_adam_m_batch_normalization_8_gamma"/device:CPU:0*
_output_shapes
 ║
Read_54/ReadVariableOpReadVariableOp<read_54_disablecopyonread_adam_m_batch_normalization_8_gamma^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
: Љ
Read_55/DisableCopyOnReadDisableCopyOnRead<read_55_disablecopyonread_adam_v_batch_normalization_8_gamma"/device:CPU:0*
_output_shapes
 ║
Read_55/ReadVariableOpReadVariableOp<read_55_disablecopyonread_adam_v_batch_normalization_8_gamma^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
: љ
Read_56/DisableCopyOnReadDisableCopyOnRead;read_56_disablecopyonread_adam_m_batch_normalization_8_beta"/device:CPU:0*
_output_shapes
 ╣
Read_56/ReadVariableOpReadVariableOp;read_56_disablecopyonread_adam_m_batch_normalization_8_beta^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
: љ
Read_57/DisableCopyOnReadDisableCopyOnRead;read_57_disablecopyonread_adam_v_batch_normalization_8_beta"/device:CPU:0*
_output_shapes
 ╣
Read_57/ReadVariableOpReadVariableOp;read_57_disablecopyonread_adam_v_batch_normalization_8_beta^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
: є
Read_58/DisableCopyOnReadDisableCopyOnRead1read_58_disablecopyonread_adam_m_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_58/ReadVariableOpReadVariableOp1read_58_disablecopyonread_adam_m_conv2d_13_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*&
_output_shapes
: @є
Read_59/DisableCopyOnReadDisableCopyOnRead1read_59_disablecopyonread_adam_v_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_59/ReadVariableOpReadVariableOp1read_59_disablecopyonread_adam_v_conv2d_13_kernel^Read_59/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*&
_output_shapes
: @ё
Read_60/DisableCopyOnReadDisableCopyOnRead/read_60_disablecopyonread_adam_m_conv2d_13_bias"/device:CPU:0*
_output_shapes
 Г
Read_60/ReadVariableOpReadVariableOp/read_60_disablecopyonread_adam_m_conv2d_13_bias^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:@ё
Read_61/DisableCopyOnReadDisableCopyOnRead/read_61_disablecopyonread_adam_v_conv2d_13_bias"/device:CPU:0*
_output_shapes
 Г
Read_61/ReadVariableOpReadVariableOp/read_61_disablecopyonread_adam_v_conv2d_13_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:@Љ
Read_62/DisableCopyOnReadDisableCopyOnRead<read_62_disablecopyonread_adam_m_batch_normalization_9_gamma"/device:CPU:0*
_output_shapes
 ║
Read_62/ReadVariableOpReadVariableOp<read_62_disablecopyonread_adam_m_batch_normalization_9_gamma^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:@Љ
Read_63/DisableCopyOnReadDisableCopyOnRead<read_63_disablecopyonread_adam_v_batch_normalization_9_gamma"/device:CPU:0*
_output_shapes
 ║
Read_63/ReadVariableOpReadVariableOp<read_63_disablecopyonread_adam_v_batch_normalization_9_gamma^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:@љ
Read_64/DisableCopyOnReadDisableCopyOnRead;read_64_disablecopyonread_adam_m_batch_normalization_9_beta"/device:CPU:0*
_output_shapes
 ╣
Read_64/ReadVariableOpReadVariableOp;read_64_disablecopyonread_adam_m_batch_normalization_9_beta^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:@љ
Read_65/DisableCopyOnReadDisableCopyOnRead;read_65_disablecopyonread_adam_v_batch_normalization_9_beta"/device:CPU:0*
_output_shapes
 ╣
Read_65/ReadVariableOpReadVariableOp;read_65_disablecopyonread_adam_v_batch_normalization_9_beta^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:@ѓ
Read_66/DisableCopyOnReadDisableCopyOnRead-read_66_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 ░
Read_66/ReadVariableOpReadVariableOp-read_66_disablecopyonread_adam_m_dense_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@ђ*
dtype0q
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@ђh
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:	@ђѓ
Read_67/DisableCopyOnReadDisableCopyOnRead-read_67_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 ░
Read_67/ReadVariableOpReadVariableOp-read_67_disablecopyonread_adam_v_dense_kernel^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@ђ*
dtype0q
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@ђh
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:	@ђђ
Read_68/DisableCopyOnReadDisableCopyOnRead+read_68_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 ф
Read_68/ReadVariableOpReadVariableOp+read_68_disablecopyonread_adam_m_dense_bias^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0m
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђd
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђђ
Read_69/DisableCopyOnReadDisableCopyOnRead+read_69_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 ф
Read_69/ReadVariableOpReadVariableOp+read_69_disablecopyonread_adam_v_dense_bias^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0m
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђd
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђњ
Read_70/DisableCopyOnReadDisableCopyOnRead=read_70_disablecopyonread_adam_m_batch_normalization_10_gamma"/device:CPU:0*
_output_shapes
 ╝
Read_70/ReadVariableOpReadVariableOp=read_70_disablecopyonread_adam_m_batch_normalization_10_gamma^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0m
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђd
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђњ
Read_71/DisableCopyOnReadDisableCopyOnRead=read_71_disablecopyonread_adam_v_batch_normalization_10_gamma"/device:CPU:0*
_output_shapes
 ╝
Read_71/ReadVariableOpReadVariableOp=read_71_disablecopyonread_adam_v_batch_normalization_10_gamma^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0m
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђd
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЉ
Read_72/DisableCopyOnReadDisableCopyOnRead<read_72_disablecopyonread_adam_m_batch_normalization_10_beta"/device:CPU:0*
_output_shapes
 ╗
Read_72/ReadVariableOpReadVariableOp<read_72_disablecopyonread_adam_m_batch_normalization_10_beta^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0m
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђd
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЉ
Read_73/DisableCopyOnReadDisableCopyOnRead<read_73_disablecopyonread_adam_v_batch_normalization_10_beta"/device:CPU:0*
_output_shapes
 ╗
Read_73/ReadVariableOpReadVariableOp<read_73_disablecopyonread_adam_v_batch_normalization_10_beta^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0m
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђd
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђё
Read_74/DisableCopyOnReadDisableCopyOnRead/read_74_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 │
Read_74/ReadVariableOpReadVariableOp/read_74_disablecopyonread_adam_m_dense_1_kernel^Read_74/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђю*
dtype0r
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђюi
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђюё
Read_75/DisableCopyOnReadDisableCopyOnRead/read_75_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 │
Read_75/ReadVariableOpReadVariableOp/read_75_disablecopyonread_adam_v_dense_1_kernel^Read_75/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђю*
dtype0r
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђюi
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђюѓ
Read_76/DisableCopyOnReadDisableCopyOnRead-read_76_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 г
Read_76/ReadVariableOpReadVariableOp-read_76_disablecopyonread_adam_m_dense_1_bias^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ю*
dtype0m
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:юd
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes	
:юѓ
Read_77/DisableCopyOnReadDisableCopyOnRead-read_77_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 г
Read_77/ReadVariableOpReadVariableOp-read_77_disablecopyonread_adam_v_dense_1_bias^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ю*
dtype0m
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:юd
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes	
:юv
Read_78/DisableCopyOnReadDisableCopyOnRead!read_78_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Џ
Read_78/ReadVariableOpReadVariableOp!read_78_disablecopyonread_total_1^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_79/DisableCopyOnReadDisableCopyOnRead!read_79_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Џ
Read_79/ReadVariableOpReadVariableOp!read_79_disablecopyonread_count_1^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_80/DisableCopyOnReadDisableCopyOnReadread_80_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_80/ReadVariableOpReadVariableOpread_80_disablecopyonread_total^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_81/DisableCopyOnReadDisableCopyOnReadread_81_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_81/ReadVariableOpReadVariableOpread_81_disablecopyonread_count^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes
: П#
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*є#
valueЧ"Bщ"SB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHќ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*╗
value▒B«SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Л
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *a
dtypesW
U2S	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_164Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_165IdentityIdentity_164:output:0^NoOp*
T0*
_output_shapes
: Ў"
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_165Identity_165:output:0*(
_construction_contextkEagerRuntime*й
_input_shapesФ
е: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=S9

_output_shapes
: 

_user_specified_nameConst:%R!

_user_specified_namecount:%Q!

_user_specified_nametotal:'P#
!
_user_specified_name	count_1:'O#
!
_user_specified_name	total_1:3N/
-
_user_specified_nameAdam/v/dense_1/bias:3M/
-
_user_specified_nameAdam/m/dense_1/bias:5L1
/
_user_specified_nameAdam/v/dense_1/kernel:5K1
/
_user_specified_nameAdam/m/dense_1/kernel:BJ>
<
_user_specified_name$"Adam/v/batch_normalization_10/beta:BI>
<
_user_specified_name$"Adam/m/batch_normalization_10/beta:CH?
=
_user_specified_name%#Adam/v/batch_normalization_10/gamma:CG?
=
_user_specified_name%#Adam/m/batch_normalization_10/gamma:1F-
+
_user_specified_nameAdam/v/dense/bias:1E-
+
_user_specified_nameAdam/m/dense/bias:3D/
-
_user_specified_nameAdam/v/dense/kernel:3C/
-
_user_specified_nameAdam/m/dense/kernel:AB=
;
_user_specified_name#!Adam/v/batch_normalization_9/beta:AA=
;
_user_specified_name#!Adam/m/batch_normalization_9/beta:B@>
<
_user_specified_name$"Adam/v/batch_normalization_9/gamma:B?>
<
_user_specified_name$"Adam/m/batch_normalization_9/gamma:5>1
/
_user_specified_nameAdam/v/conv2d_13/bias:5=1
/
_user_specified_nameAdam/m/conv2d_13/bias:7<3
1
_user_specified_nameAdam/v/conv2d_13/kernel:7;3
1
_user_specified_nameAdam/m/conv2d_13/kernel:A:=
;
_user_specified_name#!Adam/v/batch_normalization_8/beta:A9=
;
_user_specified_name#!Adam/m/batch_normalization_8/beta:B8>
<
_user_specified_name$"Adam/v/batch_normalization_8/gamma:B7>
<
_user_specified_name$"Adam/m/batch_normalization_8/gamma:561
/
_user_specified_nameAdam/v/conv2d_12/bias:551
/
_user_specified_nameAdam/m/conv2d_12/bias:743
1
_user_specified_nameAdam/v/conv2d_12/kernel:733
1
_user_specified_nameAdam/m/conv2d_12/kernel:A2=
;
_user_specified_name#!Adam/v/batch_normalization_7/beta:A1=
;
_user_specified_name#!Adam/m/batch_normalization_7/beta:B0>
<
_user_specified_name$"Adam/v/batch_normalization_7/gamma:B/>
<
_user_specified_name$"Adam/m/batch_normalization_7/gamma:5.1
/
_user_specified_nameAdam/v/conv2d_11/bias:5-1
/
_user_specified_nameAdam/m/conv2d_11/bias:7,3
1
_user_specified_nameAdam/v/conv2d_11/kernel:7+3
1
_user_specified_nameAdam/m/conv2d_11/kernel:A*=
;
_user_specified_name#!Adam/v/batch_normalization_6/beta:A)=
;
_user_specified_name#!Adam/m/batch_normalization_6/beta:B(>
<
_user_specified_name$"Adam/v/batch_normalization_6/gamma:B'>
<
_user_specified_name$"Adam/m/batch_normalization_6/gamma:5&1
/
_user_specified_nameAdam/v/conv2d_10/bias:5%1
/
_user_specified_nameAdam/m/conv2d_10/bias:7$3
1
_user_specified_nameAdam/v/conv2d_10/kernel:7#3
1
_user_specified_nameAdam/m/conv2d_10/kernel:-")
'
_user_specified_namelearning_rate:)!%
#
_user_specified_name	iteration:, (
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:FB
@
_user_specified_name(&batch_normalization_10/moving_variance:B>
<
_user_specified_name$"batch_normalization_10/moving_mean:;7
5
_user_specified_namebatch_normalization_10/beta:<8
6
_user_specified_namebatch_normalization_10/gamma:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:EA
?
_user_specified_name'%batch_normalization_9/moving_variance:A=
;
_user_specified_name#!batch_normalization_9/moving_mean::6
4
_user_specified_namebatch_normalization_9/beta:;7
5
_user_specified_namebatch_normalization_9/gamma:.*
(
_user_specified_nameconv2d_13/bias:0,
*
_user_specified_nameconv2d_13/kernel:EA
?
_user_specified_name'%batch_normalization_8/moving_variance:A=
;
_user_specified_name#!batch_normalization_8/moving_mean::6
4
_user_specified_namebatch_normalization_8/beta:;7
5
_user_specified_namebatch_normalization_8/gamma:.*
(
_user_specified_nameconv2d_12/bias:0,
*
_user_specified_nameconv2d_12/kernel:EA
?
_user_specified_name'%batch_normalization_7/moving_variance:A=
;
_user_specified_name#!batch_normalization_7/moving_mean::
6
4
_user_specified_namebatch_normalization_7/beta:;	7
5
_user_specified_namebatch_normalization_7/gamma:.*
(
_user_specified_nameconv2d_11/bias:0,
*
_user_specified_nameconv2d_11/kernel:EA
?
_user_specified_name'%batch_normalization_6/moving_variance:A=
;
_user_specified_name#!batch_normalization_6/moving_mean::6
4
_user_specified_namebatch_normalization_6/beta:;7
5
_user_specified_namebatch_normalization_6/gamma:.*
(
_user_specified_nameconv2d_10/bias:0,
*
_user_specified_nameconv2d_10/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ї

Л
6__inference_batch_normalization_9_layer_call_fn_330613

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_329469Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330609:&"
 
_user_specified_name330607:&"
 
_user_specified_name330605:&"
 
_user_specified_name330603:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Я
с
-__inference_sequential_4_layer_call_fn_329970
conv2d_10_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11:  

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17: @

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:	@ђ

unknown_24:	ђ

unknown_25:	ђ

unknown_26:	ђ

unknown_27:	ђ

unknown_28:	ђ

unknown_29:
ђю

unknown_30:	ю
identityѕбStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ю*8
_read_only_resource_inputs
	
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_329793p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ю<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:         : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_name329966:&"
 
_user_specified_name329964:&"
 
_user_specified_name329962:&"
 
_user_specified_name329960:&"
 
_user_specified_name329958:&"
 
_user_specified_name329956:&"
 
_user_specified_name329954:&"
 
_user_specified_name329952:&"
 
_user_specified_name329950:&"
 
_user_specified_name329948:&"
 
_user_specified_name329946:&"
 
_user_specified_name329944:&"
 
_user_specified_name329942:&"
 
_user_specified_name329940:&"
 
_user_specified_name329938:&"
 
_user_specified_name329936:&"
 
_user_specified_name329934:&"
 
_user_specified_name329932:&"
 
_user_specified_name329930:&"
 
_user_specified_name329928:&"
 
_user_specified_name329926:&"
 
_user_specified_name329924:&
"
 
_user_specified_name329922:&	"
 
_user_specified_name329920:&"
 
_user_specified_name329918:&"
 
_user_specified_name329916:&"
 
_user_specified_name329914:&"
 
_user_specified_name329912:&"
 
_user_specified_name329910:&"
 
_user_specified_name329908:&"
 
_user_specified_name329906:&"
 
_user_specified_name329904:` \
/
_output_shapes
:         
)
_user_specified_nameconv2d_10_input
┐
F
*__inference_dropout_8_layer_call_fn_330550

inputs
identityИ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_329857h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
И
L
0__inference_max_pooling2d_8_layer_call_fn_330535

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_329428Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
И
L
0__inference_max_pooling2d_9_layer_call_fn_330654

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_329500Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_329428

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ї

Л
6__inference_batch_normalization_7_layer_call_fn_330375

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_329325Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330371:&"
 
_user_specified_name330369:&"
 
_user_specified_name330367:&"
 
_user_specified_name330365:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Л

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_329664

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:          i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
║
┌
$__inference_signature_wrapper_330210
conv2d_10_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11:  

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17: @

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:	@ђ

unknown_24:	ђ

unknown_25:	ђ

unknown_26:	ђ

unknown_27:	ђ

unknown_28:	ђ

unknown_29:
ђю

unknown_30:	ю
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ю*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__wrapped_model_329217p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ю<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:         : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_name330206:&"
 
_user_specified_name330204:&"
 
_user_specified_name330202:&"
 
_user_specified_name330200:&"
 
_user_specified_name330198:&"
 
_user_specified_name330196:&"
 
_user_specified_name330194:&"
 
_user_specified_name330192:&"
 
_user_specified_name330190:&"
 
_user_specified_name330188:&"
 
_user_specified_name330186:&"
 
_user_specified_name330184:&"
 
_user_specified_name330182:&"
 
_user_specified_name330180:&"
 
_user_specified_name330178:&"
 
_user_specified_name330176:&"
 
_user_specified_name330174:&"
 
_user_specified_name330172:&"
 
_user_specified_name330170:&"
 
_user_specified_name330168:&"
 
_user_specified_name330166:&"
 
_user_specified_name330164:&
"
 
_user_specified_name330162:&	"
 
_user_specified_name330160:&"
 
_user_specified_name330158:&"
 
_user_specified_name330156:&"
 
_user_specified_name330154:&"
 
_user_specified_name330152:&"
 
_user_specified_name330150:&"
 
_user_specified_name330148:&"
 
_user_specified_name330146:&"
 
_user_specified_name330144:` \
/
_output_shapes
:         
)
_user_specified_nameconv2d_10_input
і
└
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_330631

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
├
_
C__inference_flatten_layer_call_and_return_conditional_losses_330697

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    @   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         @X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Э
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_329815

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:          c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Э
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_329857

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:          c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┤&
№
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_330777

inputs6
'assignmovingavg_readvariableop_resource:	ђ8
)assignmovingavg_1_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ0
!batchnorm_readvariableop_resource:	ђ
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ђ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ђ*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ђѕ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         ђl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ъ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ђ*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Ѓ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђг
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Є
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѕ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         ђi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ђк
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
┐
F
*__inference_dropout_6_layer_call_fn_330312

inputs
identityИ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_329815h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
і
└
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_329235

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
л
ю
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_330530

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
л
ю
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_329325

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
л
ю
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_330411

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_329500

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_330421

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ў
Ъ
*__inference_conv2d_11_layer_call_fn_330338

inputs!
unknown:  
	unknown_0: 
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_329637w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330334:&"
 
_user_specified_name330332:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┤
■
E__inference_conv2d_13_layer_call_and_return_conditional_losses_330587

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┤
■
E__inference_conv2d_11_layer_call_and_return_conditional_losses_330349

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
ь
c
*__inference_dropout_6_layer_call_fn_330307

inputs
identityѕбStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_329625w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
л

З
A__inference_dense_layer_call_and_return_conditional_losses_329761

inputs1
matmul_readvariableop_resource:	@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ї

Л
6__inference_batch_normalization_6_layer_call_fn_330256

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_329253Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name330252:&"
 
_user_specified_name330250:&"
 
_user_specified_name330248:&"
 
_user_specified_name330246:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┤
■
E__inference_conv2d_12_layer_call_and_return_conditional_losses_329676

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┤
■
E__inference_conv2d_11_layer_call_and_return_conditional_losses_329637

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_330302

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"ьL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*├
serving_default»
S
conv2d_10_input@
!serving_default_conv2d_10_input:0         <
dense_11
StatefulPartitionedCall:0         юtensorflow/serving/predict:вђ
Њ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
П
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias
 &_jit_compiled_convolution_op"
_tf_keras_layer
Ж
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-axis
	.gamma
/beta
0moving_mean
1moving_variance"
_tf_keras_layer
Ц
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses
>_random_generator"
_tf_keras_layer
П
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias
 G_jit_compiled_convolution_op"
_tf_keras_layer
Ж
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
Naxis
	Ogamma
Pbeta
Qmoving_mean
Rmoving_variance"
_tf_keras_layer
Ц
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
__random_generator"
_tf_keras_layer
П
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

fkernel
gbias
 h_jit_compiled_convolution_op"
_tf_keras_layer
Ж
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
oaxis
	pgamma
qbeta
rmoving_mean
smoving_variance"
_tf_keras_layer
Ц
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
й
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
ђ_random_generator"
_tf_keras_layer
Т
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
ё	keras_api
Ё__call__
+є&call_and_return_all_conditional_losses
Єkernel
	ѕbias
!Ѕ_jit_compiled_convolution_op"
_tf_keras_layer
ш
і	variables
Іtrainable_variables
їregularization_losses
Ї	keras_api
ј__call__
+Ј&call_and_return_all_conditional_losses
	љaxis

Љgamma
	њbeta
Њmoving_mean
ћmoving_variance"
_tf_keras_layer
Ф
Ћ	variables
ќtrainable_variables
Ќregularization_losses
ў	keras_api
Ў__call__
+џ&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Џ	variables
юtrainable_variables
Юregularization_losses
ъ	keras_api
Ъ__call__
+а&call_and_return_all_conditional_losses
А_random_generator"
_tf_keras_layer
Ф
б	variables
Бtrainable_variables
цregularization_losses
Ц	keras_api
д__call__
+Д&call_and_return_all_conditional_losses"
_tf_keras_layer
├
е	variables
Еtrainable_variables
фregularization_losses
Ф	keras_api
г__call__
+Г&call_and_return_all_conditional_losses
«kernel
	»bias"
_tf_keras_layer
ш
░	variables
▒trainable_variables
▓regularization_losses
│	keras_api
┤__call__
+х&call_and_return_all_conditional_losses
	Хaxis

иgamma
	Иbeta
╣moving_mean
║moving_variance"
_tf_keras_layer
├
╗	variables
╝trainable_variables
йregularization_losses
Й	keras_api
┐__call__
+└&call_and_return_all_conditional_losses
┴kernel
	┬bias"
_tf_keras_layer
ц
$0
%1
.2
/3
04
15
E6
F7
O8
P9
Q10
R11
f12
g13
p14
q15
r16
s17
Є18
ѕ19
Љ20
њ21
Њ22
ћ23
«24
»25
и26
И27
╣28
║29
┴30
┬31"
trackable_list_wrapper
л
$0
%1
.2
/3
E4
F5
O6
P7
f8
g9
p10
q11
Є12
ѕ13
Љ14
њ15
«16
»17
и18
И19
┴20
┬21"
trackable_list_wrapper
 "
trackable_list_wrapper
¤
├non_trainable_variables
─layers
┼metrics
 кlayer_regularization_losses
Кlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Л
╚trace_0
╔trace_12ќ
-__inference_sequential_4_layer_call_fn_329970
-__inference_sequential_4_layer_call_fn_330039х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╚trace_0z╔trace_1
Є
╩trace_0
╦trace_12╠
H__inference_sequential_4_layer_call_and_return_conditional_losses_329793
H__inference_sequential_4_layer_call_and_return_conditional_losses_329901х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╩trace_0z╦trace_1
нBЛ
!__inference__wrapped_model_329217conv2d_10_input"ў
Љ▓Ї
FullArgSpec
argsџ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Б
╠
_variables
═_iterations
╬_learning_rate
¤_index_dict
л
_momentums
Л_velocities
м_update_step_xla"
experimentalOptimizer
-
Мserving_default"
signature_map
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
нnon_trainable_variables
Нlayers
оmetrics
 Оlayer_regularization_losses
пlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
Т
┘trace_02К
*__inference_conv2d_10_layer_call_fn_330219ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┘trace_0
Ђ
┌trace_02Р
E__inference_conv2d_10_layer_call_and_return_conditional_losses_330230ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┌trace_0
*:( 2conv2d_10/kernel
: 2conv2d_10/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
.0
/1
02
13"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
█non_trainable_variables
▄layers
Пmetrics
 яlayer_regularization_losses
▀layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
с
Яtrace_0
рtrace_12е
6__inference_batch_normalization_6_layer_call_fn_330243
6__inference_batch_normalization_6_layer_call_fn_330256х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЯtrace_0zрtrace_1
Ў
Рtrace_0
сtrace_12я
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_330274
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_330292х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zРtrace_0zсtrace_1
 "
trackable_list_wrapper
):' 2batch_normalization_6/gamma
(:& 2batch_normalization_6/beta
1:/  (2!batch_normalization_6/moving_mean
5:3  (2%batch_normalization_6/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Сnon_trainable_variables
тlayers
Тmetrics
 уlayer_regularization_losses
Уlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
В
жtrace_02═
0__inference_max_pooling2d_6_layer_call_fn_330297ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zжtrace_0
Є
Жtrace_02У
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_330302ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЖtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
вnon_trainable_variables
Вlayers
ьmetrics
 Ьlayer_regularization_losses
№layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
┐
­trace_0
ыtrace_12ё
*__inference_dropout_6_layer_call_fn_330307
*__inference_dropout_6_layer_call_fn_330312Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z­trace_0zыtrace_1
ш
Ыtrace_0
зtrace_12║
E__inference_dropout_6_layer_call_and_return_conditional_losses_330324
E__inference_dropout_6_layer_call_and_return_conditional_losses_330329Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЫtrace_0zзtrace_1
"
_generic_user_object
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Зnon_trainable_variables
шlayers
Шmetrics
 эlayer_regularization_losses
Эlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
Т
щtrace_02К
*__inference_conv2d_11_layer_call_fn_330338ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zщtrace_0
Ђ
Щtrace_02Р
E__inference_conv2d_11_layer_call_and_return_conditional_losses_330349ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЩtrace_0
*:(  2conv2d_11/kernel
: 2conv2d_11/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
O0
P1
Q2
R3"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
чnon_trainable_variables
Чlayers
§metrics
 ■layer_regularization_losses
 layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
с
ђtrace_0
Ђtrace_12е
6__inference_batch_normalization_7_layer_call_fn_330362
6__inference_batch_normalization_7_layer_call_fn_330375х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zђtrace_0zЂtrace_1
Ў
ѓtrace_0
Ѓtrace_12я
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_330393
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_330411х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zѓtrace_0zЃtrace_1
 "
trackable_list_wrapper
):' 2batch_normalization_7/gamma
(:& 2batch_normalization_7/beta
1:/  (2!batch_normalization_7/moving_mean
5:3  (2%batch_normalization_7/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ёnon_trainable_variables
Ёlayers
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
В
Ѕtrace_02═
0__inference_max_pooling2d_7_layer_call_fn_330416ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЅtrace_0
Є
іtrace_02У
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_330421ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zіtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Іnon_trainable_variables
їlayers
Їmetrics
 јlayer_regularization_losses
Јlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
┐
љtrace_0
Љtrace_12ё
*__inference_dropout_7_layer_call_fn_330426
*__inference_dropout_7_layer_call_fn_330431Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zљtrace_0zЉtrace_1
ш
њtrace_0
Њtrace_12║
E__inference_dropout_7_layer_call_and_return_conditional_losses_330443
E__inference_dropout_7_layer_call_and_return_conditional_losses_330448Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zњtrace_0zЊtrace_1
"
_generic_user_object
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ћnon_trainable_variables
Ћlayers
ќmetrics
 Ќlayer_regularization_losses
ўlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
Т
Ўtrace_02К
*__inference_conv2d_12_layer_call_fn_330457ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЎtrace_0
Ђ
џtrace_02Р
E__inference_conv2d_12_layer_call_and_return_conditional_losses_330468ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zџtrace_0
*:(  2conv2d_12/kernel
: 2conv2d_12/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
p0
q1
r2
s3"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Џnon_trainable_variables
юlayers
Юmetrics
 ъlayer_regularization_losses
Ъlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
с
аtrace_0
Аtrace_12е
6__inference_batch_normalization_8_layer_call_fn_330481
6__inference_batch_normalization_8_layer_call_fn_330494х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zаtrace_0zАtrace_1
Ў
бtrace_0
Бtrace_12я
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_330512
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_330530х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zбtrace_0zБtrace_1
 "
trackable_list_wrapper
):' 2batch_normalization_8/gamma
(:& 2batch_normalization_8/beta
1:/  (2!batch_normalization_8/moving_mean
5:3  (2%batch_normalization_8/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
цnon_trainable_variables
Цlayers
дmetrics
 Дlayer_regularization_losses
еlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
В
Еtrace_02═
0__inference_max_pooling2d_8_layer_call_fn_330535ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЕtrace_0
Є
фtrace_02У
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_330540ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zфtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
┐
░trace_0
▒trace_12ё
*__inference_dropout_8_layer_call_fn_330545
*__inference_dropout_8_layer_call_fn_330550Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z░trace_0z▒trace_1
ш
▓trace_0
│trace_12║
E__inference_dropout_8_layer_call_and_return_conditional_losses_330562
E__inference_dropout_8_layer_call_and_return_conditional_losses_330567Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▓trace_0z│trace_1
"
_generic_user_object
0
Є0
ѕ1"
trackable_list_wrapper
0
Є0
ѕ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
┤non_trainable_variables
хlayers
Хmetrics
 иlayer_regularization_losses
Иlayer_metrics
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
Ё__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
Т
╣trace_02К
*__inference_conv2d_13_layer_call_fn_330576ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╣trace_0
Ђ
║trace_02Р
E__inference_conv2d_13_layer_call_and_return_conditional_losses_330587ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z║trace_0
*:( @2conv2d_13/kernel
:@2conv2d_13/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
@
Љ0
њ1
Њ2
ћ3"
trackable_list_wrapper
0
Љ0
њ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
╗non_trainable_variables
╝layers
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
і	variables
Іtrainable_variables
їregularization_losses
ј__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
с
└trace_0
┴trace_12е
6__inference_batch_normalization_9_layer_call_fn_330600
6__inference_batch_normalization_9_layer_call_fn_330613х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z└trace_0z┴trace_1
Ў
┬trace_0
├trace_12я
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_330631
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_330649х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┬trace_0z├trace_1
 "
trackable_list_wrapper
):'@2batch_normalization_9/gamma
(:&@2batch_normalization_9/beta
1:/@ (2!batch_normalization_9/moving_mean
5:3@ (2%batch_normalization_9/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
─non_trainable_variables
┼layers
кmetrics
 Кlayer_regularization_losses
╚layer_metrics
Ћ	variables
ќtrainable_variables
Ќregularization_losses
Ў__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
В
╔trace_02═
0__inference_max_pooling2d_9_layer_call_fn_330654ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╔trace_0
Є
╩trace_02У
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_330659ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╩trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
¤layer_metrics
Џ	variables
юtrainable_variables
Юregularization_losses
Ъ__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
┐
лtrace_0
Лtrace_12ё
*__inference_dropout_9_layer_call_fn_330664
*__inference_dropout_9_layer_call_fn_330669Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zлtrace_0zЛtrace_1
ш
мtrace_0
Мtrace_12║
E__inference_dropout_9_layer_call_and_return_conditional_losses_330681
E__inference_dropout_9_layer_call_and_return_conditional_losses_330686Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zмtrace_0zМtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
нnon_trainable_variables
Нlayers
оmetrics
 Оlayer_regularization_losses
пlayer_metrics
б	variables
Бtrainable_variables
цregularization_losses
д__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
С
┘trace_02┼
(__inference_flatten_layer_call_fn_330691ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┘trace_0
 
┌trace_02Я
C__inference_flatten_layer_call_and_return_conditional_losses_330697ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┌trace_0
0
«0
»1"
trackable_list_wrapper
0
«0
»1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
█non_trainable_variables
▄layers
Пmetrics
 яlayer_regularization_losses
▀layer_metrics
е	variables
Еtrainable_variables
фregularization_losses
г__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
Р
Яtrace_02├
&__inference_dense_layer_call_fn_330706ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЯtrace_0
§
рtrace_02я
A__inference_dense_layer_call_and_return_conditional_losses_330717ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zрtrace_0
:	@ђ2dense/kernel
:ђ2
dense/bias
@
и0
И1
╣2
║3"
trackable_list_wrapper
0
и0
И1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Рnon_trainable_variables
сlayers
Сmetrics
 тlayer_regularization_losses
Тlayer_metrics
░	variables
▒trainable_variables
▓regularization_losses
┤__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
т
уtrace_0
Уtrace_12ф
7__inference_batch_normalization_10_layer_call_fn_330730
7__inference_batch_normalization_10_layer_call_fn_330743х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zуtrace_0zУtrace_1
Џ
жtrace_0
Жtrace_12Я
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_330777
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_330797х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zжtrace_0zЖtrace_1
 "
trackable_list_wrapper
+:)ђ2batch_normalization_10/gamma
*:(ђ2batch_normalization_10/beta
3:1ђ (2"batch_normalization_10/moving_mean
7:5ђ (2&batch_normalization_10/moving_variance
0
┴0
┬1"
trackable_list_wrapper
0
┴0
┬1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
вnon_trainable_variables
Вlayers
ьmetrics
 Ьlayer_regularization_losses
№layer_metrics
╗	variables
╝trainable_variables
йregularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
С
­trace_02┼
(__inference_dense_1_layer_call_fn_330806ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z­trace_0
 
ыtrace_02Я
C__inference_dense_1_layer_call_and_return_conditional_losses_330817ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zыtrace_0
": 
ђю2dense_1/kernel
:ю2dense_1/bias
j
00
11
Q2
R3
r4
s5
Њ6
ћ7
╣8
║9"
trackable_list_wrapper
Х
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19"
trackable_list_wrapper
0
Ы0
з1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЗBы
-__inference_sequential_4_layer_call_fn_329970conv2d_10_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
-__inference_sequential_4_layer_call_fn_330039conv2d_10_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
H__inference_sequential_4_layer_call_and_return_conditional_losses_329793conv2d_10_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
H__inference_sequential_4_layer_call_and_return_conditional_losses_329901conv2d_10_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ф
═0
З1
ш2
Ш3
э4
Э5
щ6
Щ7
ч8
Ч9
§10
■11
 12
ђ13
Ђ14
ѓ15
Ѓ16
ё17
Ё18
є19
Є20
ѕ21
Ѕ22
і23
І24
ї25
Ї26
ј27
Ј28
љ29
Љ30
њ31
Њ32
ћ33
Ћ34
ќ35
Ќ36
ў37
Ў38
џ39
Џ40
ю41
Ю42
ъ43
Ъ44"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
▄
З0
Ш1
Э2
Щ3
Ч4
■5
ђ6
ѓ7
ё8
є9
ѕ10
і11
ї12
ј13
љ14
њ15
ћ16
ќ17
ў18
џ19
ю20
ъ21"
trackable_list_wrapper
▄
ш0
э1
щ2
ч3
§4
 5
Ђ6
Ѓ7
Ё8
Є9
Ѕ10
І11
Ї12
Ј13
Љ14
Њ15
Ћ16
Ќ17
Ў18
Џ19
Ю20
Ъ21"
trackable_list_wrapper
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
ЯBП
$__inference_signature_wrapper_330210conv2d_10_input"А
џ▓ќ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 $

kwonlyargsџ
jconv2d_10_input
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
нBЛ
*__inference_conv2d_10_layer_call_fn_330219inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№BВ
E__inference_conv2d_10_layer_call_and_return_conditional_losses_330230inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЗBы
6__inference_batch_normalization_6_layer_call_fn_330243inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
6__inference_batch_normalization_6_layer_call_fn_330256inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_330274inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_330292inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌BО
0__inference_max_pooling2d_6_layer_call_fn_330297inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
шBЫ
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_330302inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBП
*__inference_dropout_6_layer_call_fn_330307inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЯBП
*__inference_dropout_6_layer_call_fn_330312inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
E__inference_dropout_6_layer_call_and_return_conditional_losses_330324inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
E__inference_dropout_6_layer_call_and_return_conditional_losses_330329inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
нBЛ
*__inference_conv2d_11_layer_call_fn_330338inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№BВ
E__inference_conv2d_11_layer_call_and_return_conditional_losses_330349inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЗBы
6__inference_batch_normalization_7_layer_call_fn_330362inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
6__inference_batch_normalization_7_layer_call_fn_330375inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_330393inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_330411inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌BО
0__inference_max_pooling2d_7_layer_call_fn_330416inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
шBЫ
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_330421inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBП
*__inference_dropout_7_layer_call_fn_330426inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЯBП
*__inference_dropout_7_layer_call_fn_330431inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
E__inference_dropout_7_layer_call_and_return_conditional_losses_330443inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
E__inference_dropout_7_layer_call_and_return_conditional_losses_330448inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
нBЛ
*__inference_conv2d_12_layer_call_fn_330457inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№BВ
E__inference_conv2d_12_layer_call_and_return_conditional_losses_330468inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЗBы
6__inference_batch_normalization_8_layer_call_fn_330481inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
6__inference_batch_normalization_8_layer_call_fn_330494inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_330512inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_330530inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌BО
0__inference_max_pooling2d_8_layer_call_fn_330535inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
шBЫ
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_330540inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBП
*__inference_dropout_8_layer_call_fn_330545inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЯBП
*__inference_dropout_8_layer_call_fn_330550inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
E__inference_dropout_8_layer_call_and_return_conditional_losses_330562inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
E__inference_dropout_8_layer_call_and_return_conditional_losses_330567inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
нBЛ
*__inference_conv2d_13_layer_call_fn_330576inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№BВ
E__inference_conv2d_13_layer_call_and_return_conditional_losses_330587inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
Њ0
ћ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЗBы
6__inference_batch_normalization_9_layer_call_fn_330600inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
6__inference_batch_normalization_9_layer_call_fn_330613inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_330631inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_330649inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌BО
0__inference_max_pooling2d_9_layer_call_fn_330654inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
шBЫ
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_330659inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBП
*__inference_dropout_9_layer_call_fn_330664inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЯBП
*__inference_dropout_9_layer_call_fn_330669inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
E__inference_dropout_9_layer_call_and_return_conditional_losses_330681inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
E__inference_dropout_9_layer_call_and_return_conditional_losses_330686inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мB¤
(__inference_flatten_layer_call_fn_330691inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_flatten_layer_call_and_return_conditional_losses_330697inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
лB═
&__inference_dense_layer_call_fn_330706inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
вBУ
A__inference_dense_layer_call_and_return_conditional_losses_330717inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
╣0
║1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
шBЫ
7__inference_batch_normalization_10_layer_call_fn_330730inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
шBЫ
7__inference_batch_normalization_10_layer_call_fn_330743inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
љBЇ
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_330777inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
љBЇ
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_330797inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мB¤
(__inference_dense_1_layer_call_fn_330806inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_dense_1_layer_call_and_return_conditional_losses_330817inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
а	variables
А	keras_api

бtotal

Бcount"
_tf_keras_metric
c
ц	variables
Ц	keras_api

дtotal

Дcount
е
_fn_kwargs"
_tf_keras_metric
/:- 2Adam/m/conv2d_10/kernel
/:- 2Adam/v/conv2d_10/kernel
!: 2Adam/m/conv2d_10/bias
!: 2Adam/v/conv2d_10/bias
.:, 2"Adam/m/batch_normalization_6/gamma
.:, 2"Adam/v/batch_normalization_6/gamma
-:+ 2!Adam/m/batch_normalization_6/beta
-:+ 2!Adam/v/batch_normalization_6/beta
/:-  2Adam/m/conv2d_11/kernel
/:-  2Adam/v/conv2d_11/kernel
!: 2Adam/m/conv2d_11/bias
!: 2Adam/v/conv2d_11/bias
.:, 2"Adam/m/batch_normalization_7/gamma
.:, 2"Adam/v/batch_normalization_7/gamma
-:+ 2!Adam/m/batch_normalization_7/beta
-:+ 2!Adam/v/batch_normalization_7/beta
/:-  2Adam/m/conv2d_12/kernel
/:-  2Adam/v/conv2d_12/kernel
!: 2Adam/m/conv2d_12/bias
!: 2Adam/v/conv2d_12/bias
.:, 2"Adam/m/batch_normalization_8/gamma
.:, 2"Adam/v/batch_normalization_8/gamma
-:+ 2!Adam/m/batch_normalization_8/beta
-:+ 2!Adam/v/batch_normalization_8/beta
/:- @2Adam/m/conv2d_13/kernel
/:- @2Adam/v/conv2d_13/kernel
!:@2Adam/m/conv2d_13/bias
!:@2Adam/v/conv2d_13/bias
.:,@2"Adam/m/batch_normalization_9/gamma
.:,@2"Adam/v/batch_normalization_9/gamma
-:+@2!Adam/m/batch_normalization_9/beta
-:+@2!Adam/v/batch_normalization_9/beta
$:"	@ђ2Adam/m/dense/kernel
$:"	@ђ2Adam/v/dense/kernel
:ђ2Adam/m/dense/bias
:ђ2Adam/v/dense/bias
0:.ђ2#Adam/m/batch_normalization_10/gamma
0:.ђ2#Adam/v/batch_normalization_10/gamma
/:-ђ2"Adam/m/batch_normalization_10/beta
/:-ђ2"Adam/v/batch_normalization_10/beta
':%
ђю2Adam/m/dense_1/kernel
':%
ђю2Adam/v/dense_1/kernel
 :ю2Adam/m/dense_1/bias
 :ю2Adam/v/dense_1/bias
0
б0
Б1"
trackable_list_wrapper
.
а	variables"
_generic_user_object
:  (2total
:  (2count
0
д0
Д1"
trackable_list_wrapper
.
ц	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper╠
!__inference__wrapped_model_329217д.$%./01EFOPQRfgpqrsЄѕЉњЊћ«»║и╣И┴┬@б=
6б3
1і.
conv2d_10_input         
ф "2ф/
-
dense_1"і
dense_1         ю╔
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_330777s╣║иИ8б5
.б+
!і
inputs         ђ
p

 
ф "-б*
#і 
tensor_0         ђ
џ ╔
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_330797s║и╣И8б5
.б+
!і
inputs         ђ
p 

 
ф "-б*
#і 
tensor_0         ђ
џ Б
7__inference_batch_normalization_10_layer_call_fn_330730h╣║иИ8б5
.б+
!і
inputs         ђ
p

 
ф ""і
unknown         ђБ
7__inference_batch_normalization_10_layer_call_fn_330743h║и╣И8б5
.б+
!і
inputs         ђ
p 

 
ф ""і
unknown         ђэ
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_330274А./01QбN
GбD
:і7
inputs+                            
p

 
ф "FбC
<і9
tensor_0+                            
џ э
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_330292А./01QбN
GбD
:і7
inputs+                            
p 

 
ф "FбC
<і9
tensor_0+                            
џ Л
6__inference_batch_normalization_6_layer_call_fn_330243ќ./01QбN
GбD
:і7
inputs+                            
p

 
ф ";і8
unknown+                            Л
6__inference_batch_normalization_6_layer_call_fn_330256ќ./01QбN
GбD
:і7
inputs+                            
p 

 
ф ";і8
unknown+                            э
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_330393АOPQRQбN
GбD
:і7
inputs+                            
p

 
ф "FбC
<і9
tensor_0+                            
џ э
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_330411АOPQRQбN
GбD
:і7
inputs+                            
p 

 
ф "FбC
<і9
tensor_0+                            
џ Л
6__inference_batch_normalization_7_layer_call_fn_330362ќOPQRQбN
GбD
:і7
inputs+                            
p

 
ф ";і8
unknown+                            Л
6__inference_batch_normalization_7_layer_call_fn_330375ќOPQRQбN
GбD
:і7
inputs+                            
p 

 
ф ";і8
unknown+                            э
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_330512АpqrsQбN
GбD
:і7
inputs+                            
p

 
ф "FбC
<і9
tensor_0+                            
џ э
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_330530АpqrsQбN
GбD
:і7
inputs+                            
p 

 
ф "FбC
<і9
tensor_0+                            
џ Л
6__inference_batch_normalization_8_layer_call_fn_330481ќpqrsQбN
GбD
:і7
inputs+                            
p

 
ф ";і8
unknown+                            Л
6__inference_batch_normalization_8_layer_call_fn_330494ќpqrsQбN
GбD
:і7
inputs+                            
p 

 
ф ";і8
unknown+                            ч
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_330631ЦЉњЊћQбN
GбD
:і7
inputs+                           @
p

 
ф "FбC
<і9
tensor_0+                           @
џ ч
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_330649ЦЉњЊћQбN
GбD
:і7
inputs+                           @
p 

 
ф "FбC
<і9
tensor_0+                           @
џ Н
6__inference_batch_normalization_9_layer_call_fn_330600џЉњЊћQбN
GбD
:і7
inputs+                           @
p

 
ф ";і8
unknown+                           @Н
6__inference_batch_normalization_9_layer_call_fn_330613џЉњЊћQбN
GбD
:і7
inputs+                           @
p 

 
ф ";і8
unknown+                           @╝
E__inference_conv2d_10_layer_call_and_return_conditional_losses_330230s$%7б4
-б*
(і%
inputs         
ф "4б1
*і'
tensor_0          
џ ќ
*__inference_conv2d_10_layer_call_fn_330219h$%7б4
-б*
(і%
inputs         
ф ")і&
unknown          ╝
E__inference_conv2d_11_layer_call_and_return_conditional_losses_330349sEF7б4
-б*
(і%
inputs          
ф "4б1
*і'
tensor_0          
џ ќ
*__inference_conv2d_11_layer_call_fn_330338hEF7б4
-б*
(і%
inputs          
ф ")і&
unknown          ╝
E__inference_conv2d_12_layer_call_and_return_conditional_losses_330468sfg7б4
-б*
(і%
inputs          
ф "4б1
*і'
tensor_0          
џ ќ
*__inference_conv2d_12_layer_call_fn_330457hfg7б4
-б*
(і%
inputs          
ф ")і&
unknown          Й
E__inference_conv2d_13_layer_call_and_return_conditional_losses_330587uЄѕ7б4
-б*
(і%
inputs          
ф "4б1
*і'
tensor_0         @
џ ў
*__inference_conv2d_13_layer_call_fn_330576jЄѕ7б4
-б*
(і%
inputs          
ф ")і&
unknown         @«
C__inference_dense_1_layer_call_and_return_conditional_losses_330817g┴┬0б-
&б#
!і
inputs         ђ
ф "-б*
#і 
tensor_0         ю
џ ѕ
(__inference_dense_1_layer_call_fn_330806\┴┬0б-
&б#
!і
inputs         ђ
ф ""і
unknown         юФ
A__inference_dense_layer_call_and_return_conditional_losses_330717f«»/б,
%б"
 і
inputs         @
ф "-б*
#і 
tensor_0         ђ
џ Ё
&__inference_dense_layer_call_fn_330706[«»/б,
%б"
 і
inputs         @
ф ""і
unknown         ђ╝
E__inference_dropout_6_layer_call_and_return_conditional_losses_330324s;б8
1б.
(і%
inputs          
p
ф "4б1
*і'
tensor_0          
џ ╝
E__inference_dropout_6_layer_call_and_return_conditional_losses_330329s;б8
1б.
(і%
inputs          
p 
ф "4б1
*і'
tensor_0          
џ ќ
*__inference_dropout_6_layer_call_fn_330307h;б8
1б.
(і%
inputs          
p
ф ")і&
unknown          ќ
*__inference_dropout_6_layer_call_fn_330312h;б8
1б.
(і%
inputs          
p 
ф ")і&
unknown          ╝
E__inference_dropout_7_layer_call_and_return_conditional_losses_330443s;б8
1б.
(і%
inputs          
p
ф "4б1
*і'
tensor_0          
џ ╝
E__inference_dropout_7_layer_call_and_return_conditional_losses_330448s;б8
1б.
(і%
inputs          
p 
ф "4б1
*і'
tensor_0          
џ ќ
*__inference_dropout_7_layer_call_fn_330426h;б8
1б.
(і%
inputs          
p
ф ")і&
unknown          ќ
*__inference_dropout_7_layer_call_fn_330431h;б8
1б.
(і%
inputs          
p 
ф ")і&
unknown          ╝
E__inference_dropout_8_layer_call_and_return_conditional_losses_330562s;б8
1б.
(і%
inputs          
p
ф "4б1
*і'
tensor_0          
џ ╝
E__inference_dropout_8_layer_call_and_return_conditional_losses_330567s;б8
1б.
(і%
inputs          
p 
ф "4б1
*і'
tensor_0          
џ ќ
*__inference_dropout_8_layer_call_fn_330545h;б8
1б.
(і%
inputs          
p
ф ")і&
unknown          ќ
*__inference_dropout_8_layer_call_fn_330550h;б8
1б.
(і%
inputs          
p 
ф ")і&
unknown          ╝
E__inference_dropout_9_layer_call_and_return_conditional_losses_330681s;б8
1б.
(і%
inputs         @
p
ф "4б1
*і'
tensor_0         @
џ ╝
E__inference_dropout_9_layer_call_and_return_conditional_losses_330686s;б8
1б.
(і%
inputs         @
p 
ф "4б1
*і'
tensor_0         @
џ ќ
*__inference_dropout_9_layer_call_fn_330664h;б8
1б.
(і%
inputs         @
p
ф ")і&
unknown         @ќ
*__inference_dropout_9_layer_call_fn_330669h;б8
1б.
(і%
inputs         @
p 
ф ")і&
unknown         @«
C__inference_flatten_layer_call_and_return_conditional_losses_330697g7б4
-б*
(і%
inputs         @
ф ",б)
"і
tensor_0         @
џ ѕ
(__inference_flatten_layer_call_fn_330691\7б4
-б*
(і%
inputs         @
ф "!і
unknown         @ш
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_330302ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ¤
0__inference_max_pooling2d_6_layer_call_fn_330297џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    ш
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_330421ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ¤
0__inference_max_pooling2d_7_layer_call_fn_330416џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    ш
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_330540ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ¤
0__inference_max_pooling2d_8_layer_call_fn_330535џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    ш
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_330659ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ¤
0__inference_max_pooling2d_9_layer_call_fn_330654џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    Ш
H__inference_sequential_4_layer_call_and_return_conditional_losses_329793Е.$%./01EFOPQRfgpqrsЄѕЉњЊћ«»╣║иИ┴┬HбE
>б;
1і.
conv2d_10_input         
p

 
ф "-б*
#і 
tensor_0         ю
џ Ш
H__inference_sequential_4_layer_call_and_return_conditional_losses_329901Е.$%./01EFOPQRfgpqrsЄѕЉњЊћ«»║и╣И┴┬HбE
>б;
1і.
conv2d_10_input         
p 

 
ф "-б*
#і 
tensor_0         ю
џ л
-__inference_sequential_4_layer_call_fn_329970ъ.$%./01EFOPQRfgpqrsЄѕЉњЊћ«»╣║иИ┴┬HбE
>б;
1і.
conv2d_10_input         
p

 
ф ""і
unknown         юл
-__inference_sequential_4_layer_call_fn_330039ъ.$%./01EFOPQRfgpqrsЄѕЉњЊћ«»║и╣И┴┬HбE
>б;
1і.
conv2d_10_input         
p 

 
ф ""і
unknown         юР
$__inference_signature_wrapper_330210╣.$%./01EFOPQRfgpqrsЄѕЉњЊћ«»║и╣И┴┬SбP
б 
IфF
D
conv2d_10_input1і.
conv2d_10_input         "2ф/
-
dense_1"і
dense_1         ю