ì

nC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\Data\AppDbContext.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Data! %
{		 
public

 

class

 
AppDbContext

 
:

 
IdentityDbContext

  1
<

1 2
ApplicationUser

2 A
>

A B
{ 
public 
AppDbContext 
( 
DbContextOptions ,
<, -
AppDbContext- 9
>9 :
options; B
)B C
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< "
Where_is_my_Fluffymoon +
.+ ,
Models, 2
.2 3
Pet3 6
>6 7
Pet8 ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
DbSet 
< "
Where_is_my_Fluffymoon +
.+ ,
Models, 2
.2 3
Comment3 :
>: ;
Comment< C
{D E
getF I
;I J
setK N
;N O
}P Q
} 
} ç
qC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\Data\ApplicationUser.cs
	namespace		 	"
Where_is_my_Fluffymoon		
  
.		  !
Areas		! &
.		& '
Identity		' /
.		/ 0
Data		0 4
{

 
public 

class 
ApplicationUser  
:! "
IdentityUser# /
{ 
public 
ApplicationUser 
( 
)  
{ 	
this 
. 
Pets 
= 
new 
HashSet #
<# $
Pet$ '
>' (
(( )
)) *
;* +
this 
. 
Comments 
= 
new 
HashSet  '
<' (
Comment( /
>/ 0
(0 1
)1 2
;2 3
} 	
[ 	
PersonalData	 
] 
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
PersonalData	 
] 
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
ICollection 
< 
Pet 
> 
Pets  $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
ICollection 
< 
Comment "
>" #
Comments$ ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
}   ø
sC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\IdentityHostingStartup.cs
[ 
assembly 	
:	 

HostingStartup 
( 
typeof  
(  !"
Where_is_my_Fluffymoon! 7
.7 8
Areas8 =
.= >
Identity> F
.F G"
IdentityHostingStartupG ]
)] ^
)^ _
]_ `
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Areas! &
.& '
Identity' /
{ 
public 

class "
IdentityHostingStartup '
:( )
IHostingStartup* 9
{ 
public 
void 
	Configure 
( 
IWebHostBuilder -
builder. 5
)5 6
{ 	
builder 
. 
ConfigureServices %
(% &
(& '
context' .
,. /
services0 8
)8 9
=>: <
{= >
services 
. 
AddDbContext %
<% &
AppDbContext& 2
>2 3
(3 4
options4 ;
=>< >
options 
. 
UseSqlServer (
(( )
context 
.  
Configuration  -
.- .
GetConnectionString. A
(A B
$strB Z
)Z [
)[ \
)\ ]
;] ^
services 
. 
AddDefaultIdentity +
<+ ,
ApplicationUser, ;
>; <
(< =
options= D
=>E G
optionsH O
.O P
SignInP V
.V W#
RequireConfirmedAccountW n
=o p
falseq v
)v w
. $
AddEntityFrameworkStores -
<- .
AppDbContext. :
>: ;
(; <
)< =
;= >
} 
) 
; 
} 	
} 
} Ë=
wC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Areas! &
.& '
Identity' /
./ 0
Pages0 5
.5 6
Account6 =
{ 
[ 
AllowAnonymous 
] 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 

LoginModel 
( 
SignInManager '
<' (
ApplicationUser( 7
>7 8
signInManager9 F
,F G
ILogger 
< 

LoginModel 
> 
logger  &
,& '
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
)4 5
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public   
IList   
<    
AuthenticationScheme   )
>  ) *
ExternalLogins  + 9
{  : ;
get  < ?
;  ? @
set  A D
;  D E
}  F G
public"" 
string"" 
	ReturnUrl"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
[$$ 	
TempData$$	 
]$$ 
public%% 
string%% 
ErrorMessage%% "
{%%# $
get%%% (
;%%( )
set%%* -
;%%- .
}%%/ 0
public'' 
class'' 

InputModel'' 
{(( 	
[)) 
Required)) 
])) 
[** 
EmailAddress** 
]** 
public++ 
string++ 
Email++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
[-- 
Required-- 
]-- 
[.. 
DataType.. 
(.. 
DataType.. 
... 
Password.. '
)..' (
]..( )
public// 
string// 
Password// "
{//# $
get//% (
;//( )
set//* -
;//- .
}/// 0
[11 
Display11 
(11 
Name11 
=11 
$str11 *
)11* +
]11+ ,
public22 
bool22 

RememberMe22 "
{22# $
get22% (
;22( )
set22* -
;22- .
}22/ 0
}33 	
public55 
async55 
Task55 

OnGetAsync55 $
(55$ %
string55% +
	returnUrl55, 5
=556 7
null558 <
)55< =
{66 	
if77 
(77 
User77 
.77 
Identity77 
.77 
IsAuthenticated77 -
)77- .
{88 
Response99 
.99 
Redirect99 !
(99! "
$str99" %
)99% &
;99& '
}:: 
if<< 
(<< 
!<< 
string<< 
.<< 
IsNullOrEmpty<< %
(<<% &
ErrorMessage<<& 2
)<<2 3
)<<3 4
{== 

ModelState>> 
.>> 
AddModelError>> (
(>>( )
string>>) /
.>>/ 0
Empty>>0 5
,>>5 6
ErrorMessage>>7 C
)>>C D
;>>D E
}?? 
	returnUrlAA 
??=AA 
UrlAA 
.AA 
ContentAA %
(AA% &
$strAA& *
)AA* +
;AA+ ,
awaitDD 
HttpContextDD 
.DD 
SignOutAsyncDD *
(DD* +
IdentityConstantsDD+ <
.DD< =
ExternalSchemeDD= K
)DDK L
;DDL M
ExternalLoginsFF 
=FF 
(FF 
awaitFF #
_signInManagerFF$ 2
.FF2 31
%GetExternalAuthenticationSchemesAsyncFF3 X
(FFX Y
)FFY Z
)FFZ [
.FF[ \
ToListFF\ b
(FFb c
)FFc d
;FFd e
	ReturnUrlHH 
=HH 
	returnUrlHH !
;HH! "
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
IActionResultKK '
>KK' (
OnPostAsyncKK) 4
(KK4 5
stringKK5 ;
	returnUrlKK< E
=KKF G
nullKKH L
)KKL M
{LL 	
	returnUrlMM 
??=MM 
UrlMM 
.MM 
ContentMM %
(MM% &
$strMM& *
)MM* +
;MM+ ,
ExternalLoginsOO 
=OO 
(OO 
awaitOO #
_signInManagerOO$ 2
.OO2 31
%GetExternalAuthenticationSchemesAsyncOO3 X
(OOX Y
)OOY Z
)OOZ [
.OO[ \
ToListOO\ b
(OOb c
)OOc d
;OOd e
ifQQ 
(QQ 

ModelStateQQ 
.QQ 
IsValidQQ "
)QQ" #
{RR 
varUU 
resultUU 
=UU 
awaitUU "
_signInManagerUU# 1
.UU1 2
PasswordSignInAsyncUU2 E
(UUE F
InputUUF K
.UUK L
EmailUUL Q
,UUQ R
InputUUS X
.UUX Y
PasswordUUY a
,UUa b
InputUUc h
.UUh i

RememberMeUUi s
,UUs t
lockoutOnFailure	UUu Ö
:
UUÖ Ü
false
UUá å
)
UUå ç
;
UUç é
ifVV 
(VV 
resultVV 
.VV 
	SucceededVV $
)VV$ %
{WW 
_loggerXX 
.XX 
LogInformationXX *
(XX* +
$strXX+ <
)XX< =
;XX= >
returnYY 
LocalRedirectYY (
(YY( )
	returnUrlYY) 2
)YY2 3
;YY3 4
}ZZ 
if[[ 
([[ 
result[[ 
.[[ 
RequiresTwoFactor[[ ,
)[[, -
{\\ 
return]] 
RedirectToPage]] )
(]]) *
$str]]* :
,]]: ;
new]]< ?
{]]@ A
	ReturnUrl]]B K
=]]L M
	returnUrl]]N W
,]]W X

RememberMe]]Y c
=]]d e
Input]]f k
.]]k l

RememberMe]]l v
}]]w x
)]]x y
;]]y z
}^^ 
if__ 
(__ 
result__ 
.__ 
IsLockedOut__ &
)__& '
{`` 
_loggeraa 
.aa 

LogWarningaa &
(aa& '
$straa' A
)aaA B
;aaB C
returnbb 
RedirectToPagebb )
(bb) *
$strbb* 5
)bb5 6
;bb6 7
}cc 
elsedd 
{ee 

ModelStateff 
.ff 
AddModelErrorff ,
(ff, -
stringff- 3
.ff3 4
Emptyff4 9
,ff9 :
$strff; S
)ffS T
;ffT U
returngg 
Pagegg 
(gg  
)gg  !
;gg! "
}hh 
}ii 
returnll 
Pagell 
(ll 
)ll 
;ll 
}mm 	
}nn 
}oo Ú>
áC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\Pages\Account\Manage\ChangePassword.cshtml.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Areas! &
.& '
Identity' /
./ 0
Pages0 5
.5 6
Account6 =
.= >
Manage> D
{ 
public 

class 
ChangePasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
ILogger  
<  !
ChangePasswordModel! 4
>4 5
_logger6 =
;= >
public 
ChangePasswordModel "
(" #
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
,8 9
ILogger 
< 
ChangePasswordModel '
>' (
logger) /
)/ 0
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
[   	
TempData  	 
]   
public!! 
string!! 
StatusMessage!! #
{!!$ %
get!!& )
;!!) *
set!!+ .
;!!. /
}!!0 1
public## 
class## 

InputModel## 
{$$ 	
[%% 
Required%% 
]%% 
[&& 
DataType&& 
(&& 
DataType&& 
.&& 
Password&& '
)&&' (
]&&( )
['' 
Display'' 
('' 
Name'' 
='' 
$str'' .
)''. /
]''/ 0
public(( 
string(( 
OldPassword(( %
{((& '
get((( +
;((+ ,
set((- 0
;((0 1
}((2 3
[** 
Required** 
]** 
[++ 
StringLength++ 
(++ 
$num++ 
,++ 
ErrorMessage++ +
=++, -
$str++. l
,++l m
MinimumLength++n {
=++| }
$num++~ 
)	++ Ä
]
++Ä Å
[,, 
DataType,, 
(,, 
DataType,, 
.,, 
Password,, '
),,' (
],,( )
[-- 
Display-- 
(-- 
Name-- 
=-- 
$str-- *
)--* +
]--+ ,
public.. 
string.. 
NewPassword.. %
{..& '
get..( +
;..+ ,
set..- 0
;..0 1
}..2 3
[00 
DataType00 
(00 
DataType00 
.00 
Password00 '
)00' (
]00( )
[11 
Display11 
(11 
Name11 
=11 
$str11 2
)112 3
]113 4
[22 
Compare22 
(22 
$str22 "
,22" #
ErrorMessage22$ 0
=221 2
$str223 m
)22m n
]22n o
public33 
string33 
ConfirmPassword33 )
{33* +
get33, /
;33/ 0
set331 4
;334 5
}336 7
}44 	
public66 
async66 
Task66 
<66 
IActionResult66 '
>66' (

OnGetAsync66) 3
(663 4
)664 5
{77 	
var88 
user88 
=88 
await88 
_userManager88 )
.88) *
GetUserAsync88* 6
(886 7
User887 ;
)88; <
;88< =
if99 
(99 
user99 
==99 
null99 
)99 
{:: 
return;; 
NotFound;; 
(;;  
$";;  ")
Unable to load user with ID ';;" ?
{;;? @
_userManager;;@ L
.;;L M
	GetUserId;;M V
(;;V W
User;;W [
);;[ \
};;\ ]
'.;;] _
";;_ `
);;` a
;;;a b
}<< 
var>> 
hasPassword>> 
=>> 
await>> #
_userManager>>$ 0
.>>0 1
HasPasswordAsync>>1 A
(>>A B
user>>B F
)>>F G
;>>G H
if?? 
(?? 
!?? 
hasPassword?? 
)?? 
{@@ 
returnAA 
RedirectToPageAA %
(AA% &
$strAA& 5
)AA5 6
;AA6 7
}BB 
returnDD 
PageDD 
(DD 
)DD 
;DD 
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
OnPostAsyncGG) 4
(GG4 5
)GG5 6
{HH 	
ifII 
(II 
!II 

ModelStateII 
.II 
IsValidII #
)II# $
{JJ 
returnKK 
PageKK 
(KK 
)KK 
;KK 
}LL 
varNN 
userNN 
=NN 
awaitNN 
_userManagerNN )
.NN) *
GetUserAsyncNN* 6
(NN6 7
UserNN7 ;
)NN; <
;NN< =
ifOO 
(OO 
userOO 
==OO 
nullOO 
)OO 
{PP 
returnQQ 
NotFoundQQ 
(QQ  
$"QQ  ")
Unable to load user with ID 'QQ" ?
{QQ? @
_userManagerQQ@ L
.QQL M
	GetUserIdQQM V
(QQV W
UserQQW [
)QQ[ \
}QQ\ ]
'.QQ] _
"QQ_ `
)QQ` a
;QQa b
}RR 
varTT  
changePasswordResultTT $
=TT% &
awaitTT' ,
_userManagerTT- 9
.TT9 :
ChangePasswordAsyncTT: M
(TTM N
userTTN R
,TTR S
InputTTT Y
.TTY Z
OldPasswordTTZ e
,TTe f
InputTTg l
.TTl m
NewPasswordTTm x
)TTx y
;TTy z
ifUU 
(UU 
!UU  
changePasswordResultUU %
.UU% &
	SucceededUU& /
)UU/ 0
{VV 
foreachWW 
(WW 
varWW 
errorWW "
inWW# % 
changePasswordResultWW& :
.WW: ;
ErrorsWW; A
)WWA B
{XX 

ModelStateYY 
.YY 
AddModelErrorYY ,
(YY, -
stringYY- 3
.YY3 4
EmptyYY4 9
,YY9 :
errorYY; @
.YY@ A
DescriptionYYA L
)YYL M
;YYM N
}ZZ 
return[[ 
Page[[ 
([[ 
)[[ 
;[[ 
}\\ 
await^^ 
_signInManager^^  
.^^  !
RefreshSignInAsync^^! 3
(^^3 4
user^^4 8
)^^8 9
;^^9 :
_logger__ 
.__ 
LogInformation__ "
(__" #
$str__# N
)__N O
;__O P
StatusMessage`` 
=`` 
$str`` =
;``= >
returnbb 
RedirectToPagebb !
(bb! "
)bb" #
;bb# $
}cc 	
}dd 
}ee §H
~C:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\Pages\Account\Manage\Index.cshtml.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Areas! &
.& '
Identity' /
./ 0
Pages0 5
.5 6
Account6 =
.= >
Manage> D
{ 
public 

partial 
class 

IndexModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
public 

IndexModel 
( 
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
)8 9
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
BindProperty	 
] 
public   

InputModel   
Input   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public"" 
class"" 

InputModel"" 
{## 	
[$$ 
DataType$$ 
($$ 
DataType$$ 
.$$ 
Text$$ #
)$$# $
]$$$ %
[%% 
Display%% 
(%% 
Name%% 
=%% 
$str%% (
)%%( )
]%%) *
public&& 
string&& 
	FirstName&& #
{&&$ %
get&&& )
;&&) *
set&&+ .
;&&. /
}&&0 1
[(( 
DataType(( 
((( 
DataType(( 
.(( 
Text(( #
)((# $
](($ %
[)) 
Display)) 
()) 
Name)) 
=)) 
$str)) '
)))' (
]))( )
public** 
string** 
LastName** "
{**# $
get**% (
;**( )
set*** -
;**- .
}**/ 0
}++ 	
private-- 
async-- 
Task-- 
	LoadAsync-- $
(--$ %
ApplicationUser--% 4
user--5 9
)--9 :
{.. 	
var// 
userName// 
=// 
await//  
_userManager//! -
.//- .
GetUserNameAsync//. >
(//> ?
user//? C
)//C D
;//D E
var00 
phoneNumber00 
=00 
await00 #
_userManager00$ 0
.000 1
GetPhoneNumberAsync001 D
(00D E
user00E I
)00I J
;00J K
var11 
	firstName11 
=11 
_userManager11 (
.11( )
FindByIdAsync11) 6
(116 7
user117 ;
.11; <
Id11< >
)11> ?
.11? @
Result11@ F
.11F G
	FirstName11G P
;11P Q
var22 
lastName22 
=22 
_userManager22 '
.22' (
FindByIdAsync22( 5
(225 6
user226 :
.22: ;
Id22; =
)22= >
.22> ?
Result22? E
.22E F
LastName22F N
;22N O
Username44 
=44 
userName44 
;44  
Input66 
=66 
new66 

InputModel66 "
{77 
	FirstName88 
=88 
	firstName88 %
,88% &
LastName99 
=99 
lastName99 #
}:: 
;:: 
};; 	
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (

OnGetAsync==) 3
(==3 4
)==4 5
{>> 	
var?? 
user?? 
=?? 
await?? 
_userManager?? )
.??) *
GetUserAsync??* 6
(??6 7
User??7 ;
)??; <
;??< =
if@@ 
(@@ 
user@@ 
==@@ 
null@@ 
)@@ 
{AA 
returnBB 
NotFoundBB 
(BB  
$"BB  ")
Unable to load user with ID 'BB" ?
{BB? @
_userManagerBB@ L
.BBL M
	GetUserIdBBM V
(BBV W
UserBBW [
)BB[ \
}BB\ ]
'.BB] _
"BB_ `
)BB` a
;BBa b
}CC 
awaitEE 
	LoadAsyncEE 
(EE 
userEE  
)EE  !
;EE! "
returnFF 
PageFF 
(FF 
)FF 
;FF 
}GG 	
publicII 
asyncII 
TaskII 
<II 
IActionResultII '
>II' (
OnPostAsyncII) 4
(II4 5
)II5 6
{JJ 	
varKK 
userKK 
=KK 
awaitKK 
_userManagerKK )
.KK) *
GetUserAsyncKK* 6
(KK6 7
UserKK7 ;
)KK; <
;KK< =
ifLL 
(LL 
userLL 
==LL 
nullLL 
)LL 
{MM 
returnNN 
NotFoundNN 
(NN  
$"NN  ")
Unable to load user with ID 'NN" ?
{NN? @
_userManagerNN@ L
.NNL M
	GetUserIdNNM V
(NNV W
UserNNW [
)NN[ \
}NN\ ]
'.NN] _
"NN_ `
)NN` a
;NNa b
}OO 
ifQQ 
(QQ 
!QQ 

ModelStateQQ 
.QQ 
IsValidQQ #
)QQ# $
{RR 
awaitSS 
	LoadAsyncSS 
(SS  
userSS  $
)SS$ %
;SS% &
returnTT 
PageTT 
(TT 
)TT 
;TT 
}UU 
varWW 
	firstNameWW 
=WW 
_userManagerWW (
.WW( )
FindByIdAsyncWW) 6
(WW6 7
userWW7 ;
.WW; <
IdWW< >
)WW> ?
.WW? @
ResultWW@ F
.WWF G
	FirstNameWWG P
;WWP Q
ifXX 
(XX 
InputXX 
.XX 
	FirstNameXX 
!=XX  "
	firstNameXX# ,
)XX, -
{YY 
userZZ 
.ZZ 
	FirstNameZZ 
=ZZ  
InputZZ! &
.ZZ& '
	FirstNameZZ' 0
;ZZ0 1
var\\ 
setFirstNameResult\\ &
=\\' (
await\\) .
_userManager\\/ ;
.\\; <
UpdateAsync\\< G
(\\G H
user\\H L
)\\L M
;\\M N
if]] 
(]] 
!]] 
setFirstNameResult]] '
.]]' (
	Succeeded]]( 1
)]]1 2
{^^ 
StatusMessage__ !
=__" #
$str__$ U
;__U V
return`` 
RedirectToPage`` )
(``) *
)``* +
;``+ ,
}aa 
}bb 
vardd 
lastNamedd 
=dd 
_userManagerdd '
.dd' (
FindByIdAsyncdd( 5
(dd5 6
userdd6 :
.dd: ;
Iddd; =
)dd= >
.dd> ?
Resultdd? E
.ddE F
LastNameddF N
;ddN O
ifee 
(ee 
Inputee 
.ee 
LastNameee 
!=ee !
lastNameee" *
)ee* +
{ff 
usergg 
.gg 
LastNamegg 
=gg 
Inputgg  %
.gg% &
LastNamegg& .
;gg. /
varii 
setLastNameResultii %
=ii& '
awaitii( -
_userManagerii. :
.ii: ;
UpdateAsyncii; F
(iiF G
useriiG K
)iiK L
;iiL M
ifjj 
(jj 
!jj 
setLastNameResultjj &
.jj& '
	Succeededjj' 0
)jj0 1
{kk 
StatusMessagell !
=ll" #
$strll$ T
;llT U
returnmm 
RedirectToPagemm )
(mm) *
)mm* +
;mm+ ,
}nn 
}oo 
awaitqq 
_signInManagerqq  
.qq  !
RefreshSignInAsyncqq! 3
(qq3 4
userqq4 8
)qq8 9
;qq9 :
StatusMessagerr 
=rr 
$strrr ;
;rr; <
returnss 
RedirectToPagess !
(ss! "
)ss" #
;ss# $
}tt 	
}uu 
}vv )
ÄC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\Pages\Account\Manage\ManageNavPages.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Areas! &
.& '
Identity' /
./ 0
Pages0 5
.5 6
Account6 =
.= >
Manage> D
{ 
public		 

static		 
class		 
ManageNavPages		 &
{

 
public 
static 
string 
Index "
=># %
$str& -
;- .
public 
static 
string 
Email "
=># %
$str& -
;- .
public 
static 
string 
ChangePassword +
=>, .
$str/ ?
;? @
public 
static 
string  
DownloadPersonalData 1
=>2 4
$str5 K
;K L
public 
static 
string 
DeletePersonalData /
=>0 2
$str3 G
;G H
public 
static 
string 
ExternalLogins +
=>, .
$str/ ?
;? @
public 
static 
string 
PersonalData )
=>* ,
$str- ;
;; <
public 
static 
string #
TwoFactorAuthentication 4
=>5 7
$str8 Q
;Q R
public 
static 
string 
IndexNavClass *
(* +
ViewContext+ 6
viewContext7 B
)B C
=>D F
PageNavClassG S
(S T
viewContextT _
,_ `
Indexa f
)f g
;g h
public 
static 
string 
EmailNavClass *
(* +
ViewContext+ 6
viewContext7 B
)B C
=>D F
PageNavClassG S
(S T
viewContextT _
,_ `
Emaila f
)f g
;g h
public 
static 
string "
ChangePasswordNavClass 3
(3 4
ViewContext4 ?
viewContext@ K
)K L
=>M O
PageNavClassP \
(\ ]
viewContext] h
,h i
ChangePasswordj x
)x y
;y z
public!! 
static!! 
string!! (
DownloadPersonalDataNavClass!! 9
(!!9 :
ViewContext!!: E
viewContext!!F Q
)!!Q R
=>!!S U
PageNavClass!!V b
(!!b c
viewContext!!c n
,!!n o!
DownloadPersonalData	!!p Ñ
)
!!Ñ Ö
;
!!Ö Ü
public## 
static## 
string## &
DeletePersonalDataNavClass## 7
(##7 8
ViewContext##8 C
viewContext##D O
)##O P
=>##Q S
PageNavClass##T `
(##` a
viewContext##a l
,##l m
DeletePersonalData	##n Ä
)
##Ä Å
;
##Å Ç
public%% 
static%% 
string%% "
ExternalLoginsNavClass%% 3
(%%3 4
ViewContext%%4 ?
viewContext%%@ K
)%%K L
=>%%M O
PageNavClass%%P \
(%%\ ]
viewContext%%] h
,%%h i
ExternalLogins%%j x
)%%x y
;%%y z
public'' 
static'' 
string''  
PersonalDataNavClass'' 1
(''1 2
ViewContext''2 =
viewContext''> I
)''I J
=>''K M
PageNavClass''N Z
(''Z [
viewContext''[ f
,''f g
PersonalData''h t
)''t u
;''u v
public)) 
static)) 
string)) +
TwoFactorAuthenticationNavClass)) <
())< =
ViewContext))= H
viewContext))I T
)))T U
=>))V X
PageNavClass))Y e
())e f
viewContext))f q
,))q r$
TwoFactorAuthentication	))s ä
)
))ä ã
;
))ã å
private++ 
static++ 
string++ 
PageNavClass++ *
(++* +
ViewContext+++ 6
viewContext++7 B
,++B C
string++D J
page++K O
)++O P
{,, 	
var-- 

activePage-- 
=-- 
viewContext-- (
.--( )
ViewData--) 1
[--1 2
$str--2 >
]--> ?
as--@ B
string--C I
??.. 
System.. 
... 
IO.. 
... 
Path.. !
...! "'
GetFileNameWithoutExtension.." =
(..= >
viewContext..> I
...I J
ActionDescriptor..J Z
...Z [
DisplayName..[ f
)..f g
;..g h
return// 
string// 
.// 
Equals//  
(//  !

activePage//! +
,//+ ,
page//- 1
,//1 2
StringComparison//3 C
.//C D
OrdinalIgnoreCase//D U
)//U V
?//W X
$str//Y a
://b c
null//d h
;//h i
}00 	
}11 
}22 ÃY
zC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Areas! &
.& '
Identity' /
./ 0
Pages0 5
.5 6
Account6 =
{ 
[ 
AllowAnonymous 
] 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
RegisterModel 
( 
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
,8 9
ILogger 
< 
RegisterModel !
>! "
logger# )
,) *
IEmailSender   
emailSender   $
)  $ %
{!! 	
_userManager"" 
="" 
userManager"" &
;""& '
_signInManager## 
=## 
signInManager## *
;##* +
_logger$$ 
=$$ 
logger$$ 
;$$ 
_emailSender%% 
=%% 
emailSender%% &
;%%& '
}&& 	
[(( 	
BindProperty((	 
](( 
public)) 

InputModel)) 
Input)) 
{))  !
get))" %
;))% &
set))' *
;))* +
})), -
public++ 
string++ 
	ReturnUrl++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
public-- 
IList-- 
<--  
AuthenticationScheme-- )
>--) *
ExternalLogins--+ 9
{--: ;
get--< ?
;--? @
set--A D
;--D E
}--F G
public// 
class// 

InputModel// 
{00 	
[11 
Required11 
]11 
[22 
DataType22 
(22 
DataType22 
.22 
Text22 #
)22# $
]22$ %
[33 
Display33 
(33 
Name33 
=33 
$str33 (
)33( )
]33) *
public44 
string44 
	FirstName44 #
{44$ %
get44& )
;44) *
set44+ .
;44. /
}440 1
[66 
Required66 
]66 
[77 
DataType77 
(77 
DataType77 
.77 
Text77 #
)77# $
]77$ %
[88 
Display88 
(88 
Name88 
=88 
$str88 '
)88' (
]88( )
public99 
string99 
LastName99 "
{99# $
get99% (
;99( )
set99* -
;99- .
}99/ 0
[;; 
Required;; 
];; 
[<< 
EmailAddress<< 
]<< 
[== 
Display== 
(== 
Name== 
=== 
$str== #
)==# $
]==$ %
public>> 
string>> 
Email>> 
{>>  !
get>>" %
;>>% &
set>>' *
;>>* +
}>>, -
[@@ 
Required@@ 
]@@ 
[AA 
StringLengthAA 
(AA 
$numAA 
,AA 
ErrorMessageAA +
=AA, -
$strAA. l
,AAl m
MinimumLengthAAn {
=AA| }
$numAA~ 
)	AA Ä
]
AAÄ Å
[BB 
DataTypeBB 
(BB 
DataTypeBB 
.BB 
PasswordBB '
)BB' (
]BB( )
[CC 
DisplayCC 
(CC 
NameCC 
=CC 
$strCC &
)CC& '
]CC' (
publicDD 
stringDD 
PasswordDD "
{DD# $
getDD% (
;DD( )
setDD* -
;DD- .
}DD/ 0
[FF 
DataTypeFF 
(FF 
DataTypeFF 
.FF 
PasswordFF '
)FF' (
]FF( )
[GG 
DisplayGG 
(GG 
NameGG 
=GG 
$strGG .
)GG. /
]GG/ 0
[HH 
CompareHH 
(HH 
$strHH 
,HH  
ErrorMessageHH! -
=HH. /
$strHH0 f
)HHf g
]HHg h
publicII 
stringII 
ConfirmPasswordII )
{II* +
getII, /
;II/ 0
setII1 4
;II4 5
}II6 7
}JJ 	
publicLL 
asyncLL 
TaskLL 

OnGetAsyncLL $
(LL$ %
stringLL% +
	returnUrlLL, 5
=LL6 7
nullLL8 <
)LL< =
{MM 	
ifNN 
(NN 
UserNN 
.NN 
IdentityNN 
.NN 
IsAuthenticatedNN -
)NN- .
{OO 
ResponsePP 
.PP 
RedirectPP !
(PP! "
$strPP" %
)PP% &
;PP& '
}QQ 
	ReturnUrlSS 
=SS 
	returnUrlSS !
;SS! "
ExternalLoginsTT 
=TT 
(TT 
awaitTT #
_signInManagerTT$ 2
.TT2 31
%GetExternalAuthenticationSchemesAsyncTT3 X
(TTX Y
)TTY Z
)TTZ [
.TT[ \
ToListTT\ b
(TTb c
)TTc d
;TTd e
}UU 	
publicWW 
asyncWW 
TaskWW 
<WW 
IActionResultWW '
>WW' (
OnPostAsyncWW) 4
(WW4 5
stringWW5 ;
	returnUrlWW< E
=WWF G
nullWWH L
)WWL M
{XX 	
	returnUrlYY 
??=YY 
UrlYY 
.YY 
ContentYY %
(YY% &
$strYY& *
)YY* +
;YY+ ,
ExternalLoginsZZ 
=ZZ 
(ZZ 
awaitZZ #
_signInManagerZZ$ 2
.ZZ2 31
%GetExternalAuthenticationSchemesAsyncZZ3 X
(ZZX Y
)ZZY Z
)ZZZ [
.ZZ[ \
ToListZZ\ b
(ZZb c
)ZZc d
;ZZd e
if[[ 
([[ 

ModelState[[ 
.[[ 
IsValid[[ "
)[[" #
{\\ 
var]] 
user]] 
=]] 
new]] 
ApplicationUser]] .
{]]/ 0
UserName]]1 9
=]]: ;
Input]]< A
.]]A B
Email]]B G
,]]G H
Email]]I N
=]]O P
Input]]Q V
.]]V W
Email]]W \
,]]\ ]
	FirstName]]^ g
=]]h i
Input]]j o
.]]o p
	FirstName]]p y
,]]y z
LastName	]]{ É
=
]]Ñ Ö
Input
]]Ü ã
.
]]ã å
LastName
]]å î
}
]]ï ñ
;
]]ñ ó
var^^ 
result^^ 
=^^ 
await^^ "
_userManager^^# /
.^^/ 0
CreateAsync^^0 ;
(^^; <
user^^< @
,^^@ A
Input^^B G
.^^G H
Password^^H P
)^^P Q
;^^Q R
if__ 
(__ 
result__ 
.__ 
	Succeeded__ $
)__$ %
{`` 
_loggeraa 
.aa 
LogInformationaa *
(aa* +
$straa+ V
)aaV W
;aaW X
varcc 
codecc 
=cc 
awaitcc $
_userManagercc% 1
.cc1 2/
#GenerateEmailConfirmationTokenAsynccc2 U
(ccU V
userccV Z
)ccZ [
;cc[ \
codedd 
=dd 
WebEncodersdd &
.dd& '
Base64UrlEncodedd' 6
(dd6 7
Encodingdd7 ?
.dd? @
UTF8dd@ D
.ddD E
GetBytesddE M
(ddM N
codeddN R
)ddR S
)ddS T
;ddT U
varee 
callbackUrlee #
=ee$ %
Urlee& )
.ee) *
Pageee* .
(ee. /
$strff /
,ff/ 0
pageHandlergg #
:gg# $
nullgg% )
,gg) *
valueshh 
:hh 
newhh  #
{hh$ %
areahh& *
=hh+ ,
$strhh- 7
,hh7 8
userIdhh9 ?
=hh@ A
userhhB F
.hhF G
IdhhG I
,hhI J
codehhK O
=hhP Q
codehhR V
,hhV W
	returnUrlhhX a
=hhb c
	returnUrlhhd m
}hhn o
,hho p
protocolii  
:ii  !
Requestii" )
.ii) *
Schemeii* 0
)ii0 1
;ii1 2
awaitkk 
_emailSenderkk &
.kk& '
SendEmailAsynckk' 5
(kk5 6
Inputkk6 ;
.kk; <
Emailkk< A
,kkA B
$strkkC W
,kkW X
$"ll 4
(Please confirm your account by <a href='ll B
{llB C
HtmlEncoderllC N
.llN O
DefaultllO V
.llV W
EncodellW ]
(ll] ^
callbackUrlll^ i
)lli j
}llj k 
'>clicking here</a>.llk 
"	ll Ä
)
llÄ Å
;
llÅ Ç
ifnn 
(nn 
_userManagernn $
.nn$ %
Optionsnn% ,
.nn, -
SignInnn- 3
.nn3 4#
RequireConfirmedAccountnn4 K
)nnK L
{oo 
returnpp 
RedirectToPagepp -
(pp- .
$strpp. D
,ppD E
newppF I
{ppJ K
emailppL Q
=ppR S
InputppT Y
.ppY Z
EmailppZ _
,pp_ `
	returnUrlppa j
=ppk l
	returnUrlppm v
}ppw x
)ppx y
;ppy z
}qq 
elserr 
{ss 
awaittt 
_signInManagertt ,
.tt, -
SignInAsynctt- 8
(tt8 9
usertt9 =
,tt= >
isPersistenttt? K
:ttK L
falsettM R
)ttR S
;ttS T
returnuu 
LocalRedirectuu ,
(uu, -
	returnUrluu- 6
)uu6 7
;uu7 8
}vv 
}ww 
foreachxx 
(xx 
varxx 
errorxx "
inxx# %
resultxx& ,
.xx, -
Errorsxx- 3
)xx3 4
{yy 

ModelStatezz 
.zz 
AddModelErrorzz ,
(zz, -
stringzz- 3
.zz3 4
Emptyzz4 9
,zz9 :
errorzz; @
.zz@ A
DescriptionzzA L
)zzL M
;zzM N
}{{ 
}|| 
return 
Page 
( 
) 
; 
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ‘j
lC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Controllers\CommentsController.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Views! &
{ 
public 

class 
CommentsController #
:$ %

Controller& 0
{ 
private 
readonly 
AppDbContext %
_context& .
;. /
public 
CommentsController !
(! "
AppDbContext" .
context/ 6
)6 7
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
context 
= 
_context "
." #
Comment# *
.* +
Include+ 2
(2 3
c3 4
=>5 7
c8 9
.9 :
ApplicationUser: I
)I J
.J K
IncludeK R
(R S
cS T
=>U W
cX Y
.Y Z
PetZ ]
)] ^
;^ _
return 
View 
( 
await 
context %
.% &
ToListAsync& 1
(1 2
)2 3
)3 4
;4 5
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
string1 7
id8 :
): ;
{   	
if!! 
(!! 
id!! 
==!! 
null!! 
)!! 
{"" 
return## 
NotFound## 
(##  
)##  !
;##! "
}$$ 
var&& 
comment&& 
=&& 
await&& 
_context&&  (
.&&( )
Comment&&) 0
.'' 
Include'' 
('' 
c'' 
=>'' 
c'' 
.''  
ApplicationUser''  /
)''/ 0
.(( 
Include(( 
((( 
c(( 
=>(( 
c(( 
.((  
Pet((  #
)((# $
.)) 
FirstOrDefaultAsync)) $
())$ %
m))% &
=>))' )
m))* +
.))+ ,
Id)), .
==))/ 1
id))2 4
)))4 5
;))5 6
if** 
(** 
comment** 
==** 
null** 
)**  
{++ 
return,, 
NotFound,, 
(,,  
),,  !
;,,! "
}-- 
return// 
View// 
(// 
comment// 
)//  
;//  !
}00 	
public33 
IActionResult33 
Create33 #
(33# $
)33$ %
{44 	
ViewData55 
[55 
$str55 (
]55( )
=55* +
new55, /

SelectList550 :
(55: ;
_context55; C
.55C D
Set55D G
<55G H
ApplicationUser55H W
>55W X
(55X Y
)55Y Z
,55Z [
$str55\ `
,55` a
$str55b f
)55f g
;55g h
ViewData66 
[66 
$str66 
]66 
=66 
new66  #

SelectList66$ .
(66. /
_context66/ 7
.667 8
Pet668 ;
,66; <
$str66= A
,66A B
$str66C G
)66G H
;66H I
return77 
View77 
(77 
)77 
;77 
}88 	
[== 	
HttpPost==	 
]== 
[>> 	$
ValidateAntiForgeryToken>>	 !
]>>! "
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
Create??) /
(??/ 0
[??0 1
Bind??1 5
(??5 6
$str	??6 ô
)
??ô ö
]
??ö õ
Comment
??ú £
comment
??§ ´
)
??´ ¨
{@@ 	
ifAA 
(AA 

ModelStateAA 
.AA 
IsValidAA "
)AA" #
{BB 
_contextCC 
.CC 
AddCC 
(CC 
commentCC $
)CC$ %
;CC% &
awaitDD 
_contextDD 
.DD 
SaveChangesAsyncDD /
(DD/ 0
)DD0 1
;DD1 2
returnEE 
RedirectToActionEE '
(EE' (
nameofEE( .
(EE. /
IndexEE/ 4
)EE4 5
)EE5 6
;EE6 7
}FF 
ViewDataGG 
[GG 
$strGG (
]GG( )
=GG* +
newGG, /

SelectListGG0 :
(GG: ;
_contextGG; C
.GGC D
SetGGD G
<GGG H
ApplicationUserGGH W
>GGW X
(GGX Y
)GGY Z
,GGZ [
$strGG\ `
,GG` a
$strGGb f
,GGf g
commentGGh o
.GGo p
ApplicationUserId	GGp Å
)
GGÅ Ç
;
GGÇ É
ViewDataHH 
[HH 
$strHH 
]HH 
=HH 
newHH  #

SelectListHH$ .
(HH. /
_contextHH/ 7
.HH7 8
PetHH8 ;
,HH; <
$strHH= A
,HHA B
$strHHC G
,HHG H
commentHHI P
.HHP Q
PetIdHHQ V
)HHV W
;HHW X
returnII 
ViewII 
(II 
commentII 
)II  
;II  !
}JJ 	
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' (
EditMM) -
(MM- .
stringMM. 4
idMM5 7
)MM7 8
{NN 	
ifOO 
(OO 
idOO 
==OO 
nullOO 
)OO 
{PP 
returnQQ 
NotFoundQQ 
(QQ  
)QQ  !
;QQ! "
}RR 
varTT 
commentTT 
=TT 
awaitTT 
_contextTT  (
.TT( )
CommentTT) 0
.TT0 1
	FindAsyncTT1 :
(TT: ;
idTT; =
)TT= >
;TT> ?
ifUU 
(UU 
commentUU 
==UU 
nullUU 
)UU  
{VV 
returnWW 
NotFoundWW 
(WW  
)WW  !
;WW! "
}XX 
ViewDataYY 
[YY 
$strYY (
]YY( )
=YY* +
newYY, /

SelectListYY0 :
(YY: ;
_contextYY; C
.YYC D
SetYYD G
<YYG H
ApplicationUserYYH W
>YYW X
(YYX Y
)YYY Z
,YYZ [
$strYY\ `
,YY` a
$strYYb f
,YYf g
commentYYh o
.YYo p
ApplicationUserId	YYp Å
)
YYÅ Ç
;
YYÇ É
ViewDataZZ 
[ZZ 
$strZZ 
]ZZ 
=ZZ 
newZZ  #

SelectListZZ$ .
(ZZ. /
_contextZZ/ 7
.ZZ7 8
PetZZ8 ;
,ZZ; <
$strZZ= A
,ZZA B
$strZZC G
,ZZG H
commentZZI P
.ZZP Q
PetIdZZQ V
)ZZV W
;ZZW X
return[[ 
View[[ 
([[ 
comment[[ 
)[[  
;[[  !
}\\ 	
[aa 	
HttpPostaa	 
]aa 
[bb 	$
ValidateAntiForgeryTokenbb	 !
]bb! "
publiccc 
asynccc 
Taskcc 
<cc 
IActionResultcc '
>cc' (
Editcc) -
(cc- .
stringcc. 4
idcc5 7
,cc7 8
[cc9 :
Bindcc: >
(cc> ?
$str	cc? ¢
)
cc¢ £
]
cc£ §
Comment
cc• ¨
comment
cc≠ ¥
)
cc¥ µ
{dd 	
ifee 
(ee 
idee 
!=ee 
commentee 
.ee 
Idee  
)ee  !
{ff 
returngg 
NotFoundgg 
(gg  
)gg  !
;gg! "
}hh 
ifjj 
(jj 

ModelStatejj 
.jj 
IsValidjj "
)jj" #
{kk 
tryll 
{mm 
_contextnn 
.nn 
Updatenn #
(nn# $
commentnn$ +
)nn+ ,
;nn, -
awaitoo 
_contextoo "
.oo" #
SaveChangesAsyncoo# 3
(oo3 4
)oo4 5
;oo5 6
}pp 
catchqq 
(qq (
DbUpdateConcurrencyExceptionqq 3
)qq3 4
{rr 
ifss 
(ss 
!ss 
CommentExistsss &
(ss& '
commentss' .
.ss. /
Idss/ 1
)ss1 2
)ss2 3
{tt 
returnuu 
NotFounduu '
(uu' (
)uu( )
;uu) *
}vv 
elseww 
{xx 
throwyy 
;yy 
}zz 
}{{ 
return|| 
RedirectToAction|| '
(||' (
nameof||( .
(||. /
Index||/ 4
)||4 5
)||5 6
;||6 7
}}} 
ViewData~~ 
[~~ 
$str~~ (
]~~( )
=~~* +
new~~, /

SelectList~~0 :
(~~: ;
_context~~; C
.~~C D
Set~~D G
<~~G H
ApplicationUser~~H W
>~~W X
(~~X Y
)~~Y Z
,~~Z [
$str~~\ `
,~~` a
$str~~b f
,~~f g
comment~~h o
.~~o p
ApplicationUserId	~~p Å
)
~~Å Ç
;
~~Ç É
ViewData 
[ 
$str 
] 
= 
new  #

SelectList$ .
(. /
_context/ 7
.7 8
Pet8 ;
,; <
$str= A
,A B
$strC G
,G H
commentI P
.P Q
PetIdQ V
)V W
;W X
return
ÄÄ 
View
ÄÄ 
(
ÄÄ 
comment
ÄÄ 
)
ÄÄ  
;
ÄÄ  !
}
ÅÅ 	
public
ÑÑ 
async
ÑÑ 
Task
ÑÑ 
<
ÑÑ 
IActionResult
ÑÑ '
>
ÑÑ' (
Delete
ÑÑ) /
(
ÑÑ/ 0
string
ÑÑ0 6
id
ÑÑ7 9
)
ÑÑ9 :
{
ÖÖ 	
if
ÜÜ 
(
ÜÜ 
id
ÜÜ 
==
ÜÜ 
null
ÜÜ 
)
ÜÜ 
{
áá 
return
àà 
NotFound
àà 
(
àà  
)
àà  !
;
àà! "
}
ââ 
var
ãã 
comment
ãã 
=
ãã 
await
ãã 
_context
ãã  (
.
ãã( )
Comment
ãã) 0
.
åå 
Include
åå 
(
åå 
c
åå 
=>
åå 
c
åå 
.
åå  
ApplicationUser
åå  /
)
åå/ 0
.
çç 
Include
çç 
(
çç 
c
çç 
=>
çç 
c
çç 
.
çç  
Pet
çç  #
)
çç# $
.
éé !
FirstOrDefaultAsync
éé $
(
éé$ %
m
éé% &
=>
éé' )
m
éé* +
.
éé+ ,
Id
éé, .
==
éé/ 1
id
éé2 4
)
éé4 5
;
éé5 6
if
èè 
(
èè 
comment
èè 
==
èè 
null
èè 
)
èè  
{
êê 
return
ëë 
NotFound
ëë 
(
ëë  
)
ëë  !
;
ëë! "
}
íí 
return
îî 
View
îî 
(
îî 
comment
îî 
)
îî  
;
îî  !
}
ïï 	
[
òò 	
HttpPost
òò	 
,
òò 

ActionName
òò 
(
òò 
$str
òò &
)
òò& '
]
òò' (
[
ôô 	&
ValidateAntiForgeryToken
ôô	 !
]
ôô! "
public
öö 
async
öö 
Task
öö 
<
öö 
IActionResult
öö '
>
öö' (
DeleteConfirmed
öö) 8
(
öö8 9
string
öö9 ?
id
öö@ B
)
ööB C
{
õõ 	
var
úú 
comment
úú 
=
úú 
await
úú 
_context
úú  (
.
úú( )
Comment
úú) 0
.
úú0 1
	FindAsync
úú1 :
(
úú: ;
id
úú; =
)
úú= >
;
úú> ?
_context
ùù 
.
ùù 
Comment
ùù 
.
ùù 
Remove
ùù #
(
ùù# $
comment
ùù$ +
)
ùù+ ,
;
ùù, -
await
ûû 
_context
ûû 
.
ûû 
SaveChangesAsync
ûû +
(
ûû+ ,
)
ûû, -
;
ûû- .
return
üü 
RedirectToAction
üü #
(
üü# $
nameof
üü$ *
(
üü* +
Index
üü+ 0
)
üü0 1
)
üü1 2
;
üü2 3
}
†† 	
private
¢¢ 
bool
¢¢ 
CommentExists
¢¢ "
(
¢¢" #
string
¢¢# )
id
¢¢* ,
)
¢¢, -
{
££ 	
return
§§ 
_context
§§ 
.
§§ 
Comment
§§ #
.
§§# $
Any
§§$ '
(
§§' (
e
§§( )
=>
§§* ,
e
§§- .
.
§§. /
Id
§§/ 1
==
§§2 4
id
§§5 7
)
§§7 8
;
§§8 9
}
•• 	
}
¶¶ 
}ßß ÒF
hC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Controllers\HomeController.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Controllers! ,
{ 
[ 
	Authorize 
] 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private 
readonly 
AppDbContext %
_context& .
;. /
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
,< =
AppDbContext> J
contextK R
,R S
UserManagerT _
<_ `
ApplicationUser` o
>o p
userManagerq |
)| }
{ 	
_context 
= 
context 
; 
_userManager 
= 
userManager &
;& '
}   	
public(( 
IActionResult(( 
Error403(( %
(((% &
)((& '
{)) 	
return** 
View** 
(** 
)** 
;** 
}++ 	
public-- 
IActionResult-- 
Error404-- %
(--% &
)--& '
{.. 	
return// 
View// 
(// 
)// 
;// 
}00 	
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
Index22) .
(22. /
)22/ 0
{33 	
var44 
appDbContext44 
=44 
_context44 '
.44' (
Pet44( +
.44+ ,
Include44, 3
(443 4
p444 5
=>446 8
p449 :
.44: ;
ApplicationUser44; J
)44J K
;44K L
ViewData66 
[66 
$str66 
]66 
=66  
User66! %
.66% &
FindFirstValue66& 4
(664 5

ClaimTypes665 ?
.66? @
NameIdentifier66@ N
)66N O
;66O P
return88 
View88 
(88 
await88 
appDbContext88 *
.88* +
ToListAsync88+ 6
(886 7
)887 8
)888 9
;889 :
}99 	
public;; 
IActionResult;; 
Pets;; !
(;;! "
);;" #
{<< 	
return== 
Redirect== 
(== 
$str== #
)==# $
;==$ %
}>> 	
[@@ 	
ResponseCache@@	 
(@@ 
Duration@@ 
=@@  !
$num@@" #
,@@# $
Location@@% -
=@@. /!
ResponseCacheLocation@@0 E
.@@E F
None@@F J
,@@J K
NoStore@@L S
=@@T U
true@@V Z
)@@Z [
]@@[ \
publicAA 
IActionResultAA 
ErrorAA "
(AA" #
)AA# $
{BB 	
returnCC 
ViewCC 
(CC 
newCC 
ErrorViewModelCC *
{CC+ ,
	RequestIdCC- 6
=CC7 8
ActivityCC9 A
.CCA B
CurrentCCB I
?CCI J
.CCJ K
IdCCK M
??CCN P
HttpContextCCQ \
.CC\ ]
TraceIdentifierCC] l
}CCm n
)CCn o
;CCo p
}DD 	
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
DetailsGG) 0
(GG0 1
stringGG1 7
?GG7 8
idGG9 ;
)GG; <
{HH 	
ifII 
(II 
idII 
==II 
nullII 
)II 
{JJ 
returnKK 
RedirectToActionKK '
(KK' (
$strKK( 2
,KK2 3
$strKK4 :
)KK: ;
;KK; <
}LL 
varNN 
petNN 
=NN 
awaitNN 
_contextNN $
.NN$ %
PetNN% (
.OO 
IncludeOO 
(OO 
pOO 
=>OO 
pOO 
.OO  
ApplicationUserOO  /
)OO/ 0
.PP 
FirstOrDefaultAsyncPP $
(PP$ %
mPP% &
=>PP' )
mPP* +
.PP+ ,
IdPP, .
==PP/ 1
idPP2 4
)PP4 5
;PP5 6
ifQQ 
(QQ 
petQQ 
==QQ 
nullQQ 
)QQ 
{RR 
returnSS 
RedirectToActionSS '
(SS' (
$strSS( 2
,SS2 3
$strSS4 :
)SS: ;
;SS; <
}TT 
returnVV 
RedirectVV 
(VV 
$strVV ,
+VV- .
idVV/ 1
)VV1 2
;VV2 3
}WW 	
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IActionResultZZ '
>ZZ' (
EditZZ) -
(ZZ- .
stringZZ. 4
?ZZ4 5
idZZ6 8
)ZZ8 9
{[[ 	
if\\ 
(\\ 
id\\ 
==\\ 
null\\ 
)\\ 
{]] 
return^^ 
RedirectToAction^^ '
(^^' (
$str^^( 2
,^^2 3
$str^^4 :
)^^: ;
;^^; <
}__ 
varaa 
petaa 
=aa 
awaitaa 
_contextaa $
.aa$ %
Petaa% (
.aa( )
	FindAsyncaa) 2
(aa2 3
idaa3 5
)aa5 6
;aa6 7
ifbb 
(bb 
petbb 
==bb 
nullbb 
)bb 
{cc 
returndd 
RedirectToActiondd '
(dd' (
$strdd( 2
,dd2 3
$strdd4 :
)dd: ;
;dd; <
}ee 
ifgg 
(gg 
petgg 
.gg 
ApplicationUserIdgg %
!=gg& (
Usergg) -
.gg- .
FindFirstValuegg. <
(gg< =

ClaimTypesgg= G
.ggG H
NameIdentifierggH V
)ggV W
)ggW X
{hh 
returnii 
RedirectToActionii '
(ii' (
$strii( 2
,ii2 3
$strii4 :
)ii: ;
;ii; <
}jj 
ViewDatall 
[ll 
$strll (
]ll( )
=ll* +
newll, /

SelectListll0 :
(ll: ;
_contextll; C
.llC D
SetllD G
<llG H
ApplicationUserllH W
>llW X
(llX Y
)llY Z
,llZ [
$strll\ `
,ll` a
$strllb f
,llf g
petllh k
.llk l
ApplicationUserIdlll }
)ll} ~
;ll~ 
returnmm 
Redirectmm 
(mm 
$strmm )
+mm* +
idmm, .
)mm. /
;mm/ 0
}nn 	
publicqq 
asyncqq 
Taskqq 
<qq 
IActionResultqq '
>qq' (
Deleteqq) /
(qq/ 0
stringqq0 6
?qq6 7
idqq8 :
)qq: ;
{rr 	
ifss 
(ss 
idss 
==ss 
nullss 
)ss 
{tt 
returnuu 
RedirectToActionuu '
(uu' (
$struu( 2
,uu2 3
$struu4 :
)uu: ;
;uu; <
}vv 
varxx 
petxx 
=xx 
awaitxx 
_contextxx $
.xx$ %
Petxx% (
.yy 
Includeyy 
(yy 
pyy 
=>yy 
pyy 
.yy  
ApplicationUseryy  /
)yy/ 0
.zz 
FirstOrDefaultAsynczz $
(zz$ %
mzz% &
=>zz' )
mzz* +
.zz+ ,
Idzz, .
==zz/ 1
idzz2 4
)zz4 5
;zz5 6
if{{ 
({{ 
pet{{ 
=={{ 
null{{ 
){{ 
{|| 
return}} 
RedirectToAction}} '
(}}' (
$str}}( 2
,}}2 3
$str}}4 :
)}}: ;
;}}; <
}~~ 
if
ÄÄ 
(
ÄÄ 
pet
ÄÄ 
.
ÄÄ 
ApplicationUserId
ÄÄ %
!=
ÄÄ& (
User
ÄÄ) -
.
ÄÄ- .
FindFirstValue
ÄÄ. <
(
ÄÄ< =

ClaimTypes
ÄÄ= G
.
ÄÄG H
NameIdentifier
ÄÄH V
)
ÄÄV W
)
ÄÄW X
{
ÅÅ 
return
ÇÇ 
RedirectToAction
ÇÇ '
(
ÇÇ' (
$str
ÇÇ( 2
,
ÇÇ2 3
$str
ÇÇ4 :
)
ÇÇ: ;
;
ÇÇ; <
}
ÉÉ 
return
ÖÖ 
Redirect
ÖÖ 
(
ÖÖ 
$str
ÖÖ +
+
ÖÖ, -
id
ÖÖ. 0
)
ÖÖ0 1
;
ÖÖ1 2
}
ÜÜ 	
}
áá 
}àà ïê
hC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Controllers\PetsController.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Views! &
{ 
[ 
	Authorize 
] 
public 

class 
PetsController 
:  !

Controller" ,
{ 
private 
readonly 
AppDbContext %
_context& .
;. /
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
IWebHostEnvironment ,
_webHostEnvironment- @
;@ A
public 
PetsController 
( 
AppDbContext *
context+ 2
,2 3
UserManager4 ?
<? @
ApplicationUser@ O
>O P
userManagerQ \
,\ ]
IWebHostEnvironment^ q
webHostEnvironment	r Ñ
)
Ñ Ö
{ 	
_context 
= 
context 
; 
_userManager!! 
=!! 
userManager!! &
;!!& '
_webHostEnvironment## 
=##  !
webHostEnvironment##" 4
;##4 5
}$$ 	
public'' 
async'' 
Task'' 
<'' 
IActionResult'' '
>''' (
Index'') .
(''. /
)''/ 0
{(( 	
var)) 
context)) 
=)) 
_context)) "
.))" #
Pet))# &
.))& '
Include))' .
()). /
p))/ 0
=>))1 3
p))4 5
.))5 6
ApplicationUser))6 E
)))E F
.))F G
Where))G L
())L M
x))M N
=>))O Q
x))R S
.))S T
ApplicationUserId))T e
==))f h
User))i m
.))m n
FindFirstValue))n |
())| }

ClaimTypes	))} á
.
))á à
NameIdentifier
))à ñ
)
))ñ ó
)
))ó ò
;
))ò ô
return** 
View** 
(** 
await** 
context** %
.**% &
ToListAsync**& 1
(**1 2
)**2 3
)**3 4
;**4 5
}++ 	
public.. 
async.. 
Task.. 
<.. 
IActionResult.. '
>..' (
Home..) -
(..- .
)... /
{// 	
return00 
Redirect00 
(00 
$str00 
)00  
;00  !
}11 	
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
Details44) 0
(440 1
string441 7
id448 :
)44: ;
{55 	
if66 
(66 
id66 
==66 
null66 
)66 
{77 
return88 
RedirectToAction88 '
(88' (
$str88( 2
,882 3
$str884 :
)88: ;
;88; <
}99 
var;; 
pet;; 
=;; 
await;; 
_context;; $
.;;$ %
Pet;;% (
.<< 
Include<< 
(<< 
p<< 
=><< 
p<< 
.<<  
ApplicationUser<<  /
)<</ 0
.== 
FirstOrDefaultAsync== $
(==$ %
m==% &
=>==' )
m==* +
.==+ ,
Id==, .
====/ 1
id==2 4
)==4 5
;==5 6
if>> 
(>> 
pet>> 
==>> 
null>> 
)>> 
{?? 
return@@ 
RedirectToAction@@ '
(@@' (
$str@@( 2
,@@2 3
$str@@4 :
)@@: ;
;@@; <
}AA 
ViewDataCC 
[CC 
$strCC 
]CC 
=CC  
UserCC! %
.CC% &
FindFirstValueCC& 4
(CC4 5

ClaimTypesCC5 ?
.CC? @
NameIdentifierCC@ N
)CCN O
;CCO P
ViewBagEE 
.EE 
commentsEE 
=EE 
_contextEE '
.EE' (
CommentEE( /
.EE/ 0
IncludeEE0 7
(EE7 8
pEE8 9
=>EE: <
pEE= >
.EE> ?
PetEE? B
)EEB C
.EEC D
WhereEED I
(EEI J
xEEJ K
=>EEL N
xEEO P
.EEP Q
PetIdEEQ V
==EEW Y
petEEZ ]
.EE] ^
IdEE^ `
)EE` a
.EEa b
OrderByEEb i
(EEi j
nEEj k
=>EEl n
nEEo p
.EEp q

Created_atEEq {
)EE{ |
;EE| }
returnGG 
ViewGG 
(GG 
petGG 
)GG 
;GG 
}HH 	
publicKK 
IActionResultKK 
CreateKK #
(KK# $
)KK$ %
{LL 	
ViewDataMM 
[MM 
$strMM (
]MM( )
=MM* +
newMM, /

SelectListMM0 :
(MM: ;
_contextMM; C
.MMC D
SetMMD G
<MMG H
ApplicationUserMMH W
>MMW X
(MMX Y
)MMY Z
,MMZ [
$strMM\ `
,MM` a
$strMMb f
)MMf g
;MMg h
returnNN 
ViewNN 
(NN 
)NN 
;NN 
}OO 	
[TT 	
HttpPostTT	 
]TT 
[UU 	$
ValidateAntiForgeryTokenUU	 !
]UU! "
publicVV 
asyncVV 
TaskVV 
<VV 
IActionResultVV '
>VV' (
CreateVV) /
(VV/ 0
[VV0 1
BindVV1 5
(VV5 6
$str	VV6 ô
)
VVô ö
]
VVö õ
Pet
VVú ü
pet
VV† £
)
VV£ §
{WW 	
ifXX 
(XX 
petXX 
.XX 
NameXX 
==XX 
nullXX  
)XX  !
{YY 

ModelStateZZ 
.ZZ 
AddModelErrorZZ (
(ZZ( )
$strZZ) /
,ZZ/ 0
$strZZ1 I
)ZZI J
;ZZJ K
}[[ 
if\\ 
(\\ 
pet\\ 
.\\ 
Description\\ 
==\\  "
null\\# '
)\\' (
{]] 

ModelState^^ 
.^^ 
AddModelError^^ (
(^^( )
$str^^) 6
,^^6 7
$str^^8 W
)^^W X
;^^X Y
}__ 
ifaa 
(aa 

ModelStateaa 
.aa 
IsValidaa "
)aa" #
{bb 
petcc 
.cc 
Idcc 
=cc 
Guidcc 
.cc 
NewGuidcc %
(cc% &
)cc& '
.cc' (
ToStringcc( 0
(cc0 1
)cc1 2
;cc2 3
petdd 
.dd 
ApplicationUserIddd %
=dd& '
Userdd( ,
.dd, -
FindFirstValuedd- ;
(dd; <

ClaimTypesdd< F
.ddF G
NameIdentifierddG U
)ddU V
;ddV W
petee 
.ee 

Created_atee 
=ee  
DateTimeee! )
.ee) *
Nowee* -
;ee- .
petff 
.ff 

Updated_atff 
=ff  
DateTimeff! )
.ff) *
Nowff* -
;ff- .
varhh 
fileshh 
=hh 
HttpContexthh '
.hh' (
Requesthh( /
.hh/ 0
Formhh0 4
.hh4 5
Fileshh5 :
;hh: ;
foreachii 
(ii 
varii 

customFileii '
inii( *
filesii+ 0
)ii0 1
{jj 
varkk 
extkk 
=kk 
Pathkk "
.kk" #
GetExtensionkk# /
(kk/ 0

customFilekk0 :
.kk: ;
FileNamekk; C
)kkC D
.kkD E
ToStringkkE M
(kkM N
)kkN O
;kkO P
ifll 
(ll 
!ll 
(ll 
extll 
==ll  
$strll! (
||ll) +
extll, /
==ll0 2
$strll3 9
||ll: <
extll= @
==llA C
$strllD J
||llK M
extllN Q
==llR T
$strllU [
)ll[ \
)ll\ ]
{mm 

ModelStatenn "
.nn" #
AddModelErrornn# 0
(nn0 1
$strnn1 <
,nn< =
$strnn> s
)nns t
;nnt u
ifoo 
(oo 
!oo 

ModelStateoo &
.oo& '
IsValidoo' .
)oo. /
{pp 
returnqq "
Viewqq# '
(qq' (
petqq( +
)qq+ ,
;qq, -
}rr 
}ss 
iftt 
(tt 

customFilett "
!=tt# %
nulltt& *
&&tt+ -

customFilett. 8
.tt8 9
Lengthtt9 ?
>tt@ A
$numttB C
)ttC D
{uu 
usingvv 
(vv 
varvv "

fileStreamvv# -
=vv. /
newvv0 3

FileStreamvv4 >
(vv> ?
Pathvv? C
.vvC D
CombinevvD K
(vvK L
PathvvL P
.vvP Q
CombinevvQ X
(vvX Y
_webHostEnvironmentvvY l
.vvl m
ContentRootPathvvm |
,vv| }
$str	vv~ í
)
vví ì
,
vvì î
pet
vvï ò
.
vvò ô
Id
vvô õ
+
vvú ù
$str
vvû §
)
vv§ •
,
vv• ¶
FileMode
vvß Ø
.
vvØ ∞
Create
vv∞ ∂
)
vv∂ ∑
)
vv∑ ∏
{ww 
awaitxx !

customFilexx" ,
.xx, -
CopyToAsyncxx- 8
(xx8 9

fileStreamxx9 C
)xxC D
;xxD E
petyy 
.yy  
	ImagePathyy  )
=yy* +
petyy, /
.yy/ 0
Idyy0 2
.yy2 3
ToStringyy3 ;
(yy; <
)yy< =
;yy= >
}zz 
}{{ 
}|| 
_context~~ 
.~~ 
Add~~ 
(~~ 
pet~~  
)~~  !
;~~! "
await 
_context 
. 
SaveChangesAsync /
(/ 0
)0 1
;1 2
return
ÅÅ 
RedirectToAction
ÅÅ '
(
ÅÅ' (
nameof
ÅÅ( .
(
ÅÅ. /
Index
ÅÅ/ 4
)
ÅÅ4 5
)
ÅÅ5 6
;
ÅÅ6 7
}
ÇÇ 
return
ÑÑ 
View
ÑÑ 
(
ÑÑ 
pet
ÑÑ 
)
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
public
àà 
async
àà 
Task
àà 
<
àà 
IActionResult
àà '
>
àà' (
Edit
àà) -
(
àà- .
string
àà. 4
id
àà5 7
)
àà7 8
{
ââ 	
if
ää 
(
ää 
id
ää 
==
ää 
null
ää 
)
ää 
{
ãã 
return
åå 
RedirectToAction
åå '
(
åå' (
$str
åå( 2
,
åå2 3
$str
åå4 :
)
åå: ;
;
åå; <
}
çç 
var
èè 
pet
èè 
=
èè 
await
èè 
_context
èè $
.
èè$ %
Pet
èè% (
.
èè( )
	FindAsync
èè) 2
(
èè2 3
id
èè3 5
)
èè5 6
;
èè6 7
if
êê 
(
êê 
pet
êê 
==
êê 
null
êê 
)
êê 
{
ëë 
return
íí 
RedirectToAction
íí '
(
íí' (
$str
íí( 2
,
íí2 3
$str
íí4 :
)
íí: ;
;
íí; <
}
ìì 
if
ïï 
(
ïï 
pet
ïï 
.
ïï 
ApplicationUserId
ïï %
!=
ïï& (
User
ïï) -
.
ïï- .
FindFirstValue
ïï. <
(
ïï< =

ClaimTypes
ïï= G
.
ïïG H
NameIdentifier
ïïH V
)
ïïV W
)
ïïW X
{
ññ 
return
óó 
RedirectToAction
óó '
(
óó' (
$str
óó( 2
,
óó2 3
$str
óó4 :
)
óó: ;
;
óó; <
}
òò 
ViewData
öö 
[
öö 
$str
öö (
]
öö( )
=
öö* +
new
öö, /

SelectList
öö0 :
(
öö: ;
_context
öö; C
.
ööC D
Set
ööD G
<
ööG H
ApplicationUser
ööH W
>
ööW X
(
ööX Y
)
ööY Z
,
ööZ [
$str
öö\ `
,
öö` a
$str
ööb f
,
ööf g
pet
ööh k
.
öök l
ApplicationUserId
ööl }
)
öö} ~
;
öö~ 
return
õõ 
View
õõ 
(
õõ 
pet
õõ 
)
õõ 
;
õõ 
}
úú 	
[
°° 	
HttpPost
°°	 
]
°° 
[
¢¢ 	&
ValidateAntiForgeryToken
¢¢	 !
]
¢¢! "
public
££ 
async
££ 
Task
££ 
<
££ 
IActionResult
££ '
>
££' (
Edit
££) -
(
££- .
string
££. 4
id
££5 7
,
££7 8
[
££9 :
Bind
££: >
(
££> ?
$str££? ê
)££ê ë
]££ë í
Pet££ì ñ
pet££ó ö
)££ö õ
{
§§ 	
if
•• 
(
•• 
pet
•• 
.
•• 
ApplicationUserId
•• %
!=
••& (
User
••) -
.
••- .
FindFirstValue
••. <
(
••< =

ClaimTypes
••= G
.
••G H
NameIdentifier
••H V
)
••V W
.
••W X
ToString
••X `
(
••` a
)
••a b
)
••b c
{
¶¶ 
return
ßß 
RedirectToAction
ßß '
(
ßß' (
$str
ßß( 2
,
ßß2 3
$str
ßß4 :
)
ßß: ;
;
ßß; <
}
®® 
pet
™™ 
.
™™ 

Updated_at
™™ 
=
™™ 
DateTime
™™ %
.
™™% &
Now
™™& )
;
™™) *
pet
´´ 
.
´´ 
ApplicationUserId
´´ !
=
´´" #
User
´´$ (
.
´´( )
FindFirstValue
´´) 7
(
´´7 8

ClaimTypes
´´8 B
.
´´B C
NameIdentifier
´´C Q
)
´´Q R
;
´´R S
if
≠≠ 
(
≠≠ 
id
≠≠ 
!=
≠≠ 
pet
≠≠ 
.
≠≠ 
Id
≠≠ 
)
≠≠ 
{
ÆÆ 
return
ØØ 
RedirectToAction
ØØ '
(
ØØ' (
$str
ØØ( 2
,
ØØ2 3
$str
ØØ4 :
)
ØØ: ;
;
ØØ; <
}
∞∞ 
if
≤≤ 
(
≤≤ 

ModelState
≤≤ 
.
≤≤ 
IsValid
≤≤ "
)
≤≤" #
{
≥≥ 
try
¥¥ 
{
µµ 
var
∂∂ 
files
∂∂ 
=
∂∂ 
HttpContext
∂∂  +
.
∂∂+ ,
Request
∂∂, 3
.
∂∂3 4
Form
∂∂4 8
.
∂∂8 9
Files
∂∂9 >
;
∂∂> ?
foreach
∑∑ 
(
∑∑ 
var
∑∑  

customFile
∑∑! +
in
∑∑, .
files
∑∑/ 4
)
∑∑4 5
{
∏∏ 
var
ππ 
ext
ππ 
=
ππ  !
Path
ππ" &
.
ππ& '
GetExtension
ππ' 3
(
ππ3 4

customFile
ππ4 >
.
ππ> ?
FileName
ππ? G
)
ππG H
.
ππH I
ToString
ππI Q
(
ππQ R
)
ππR S
;
ππS T
if
∫∫ 
(
∫∫ 
!
∫∫ 
(
∫∫ 
ext
∫∫ !
==
∫∫" $
$str
∫∫% ,
||
∫∫- /
ext
∫∫0 3
==
∫∫4 6
$str
∫∫7 =
||
∫∫> @
ext
∫∫A D
==
∫∫E G
$str
∫∫H N
||
∫∫O Q
ext
∫∫R U
==
∫∫V X
$str
∫∫Y _
)
∫∫_ `
)
∫∫` a
{
ªª 

ModelState
ºº &
.
ºº& '
AddModelError
ºº' 4
(
ºº4 5
$str
ºº5 @
,
ºº@ A
$str
ººB w
)
ººw x
;
ººx y
if
ΩΩ 
(
ΩΩ  
!
ΩΩ  !

ModelState
ΩΩ! +
.
ΩΩ+ ,
IsValid
ΩΩ, 3
)
ΩΩ3 4
{
ææ 
return
øø  &
View
øø' +
(
øø+ ,
pet
øø, /
)
øø/ 0
;
øø0 1
}
¿¿ 
}
¡¡ 
if
¬¬ 
(
¬¬ 

customFile
¬¬ &
!=
¬¬' )
null
¬¬* .
&&
¬¬/ 1

customFile
¬¬2 <
.
¬¬< =
Length
¬¬= C
>
¬¬D E
$num
¬¬F G
)
¬¬G H
{
√√ 
System
ƒƒ "
.
ƒƒ" #
IO
ƒƒ# %
.
ƒƒ% &
File
ƒƒ& *
.
ƒƒ* +
Delete
ƒƒ+ 1
(
ƒƒ1 2
Path
ƒƒ2 6
.
ƒƒ6 7
Combine
ƒƒ7 >
(
ƒƒ> ?!
_webHostEnvironment
ƒƒ? R
.
ƒƒR S
ContentRootPath
ƒƒS b
,
ƒƒb c
$str
ƒƒd x
+
ƒƒy z
id
ƒƒ{ }
+
ƒƒ~ 
$strƒƒÄ Ü
)ƒƒÜ á
)ƒƒá à
;ƒƒà â
using
∆∆ !
(
∆∆" #
var
∆∆# &

fileStream
∆∆' 1
=
∆∆2 3
new
∆∆4 7

FileStream
∆∆8 B
(
∆∆B C
Path
∆∆C G
.
∆∆G H
Combine
∆∆H O
(
∆∆O P
Path
∆∆P T
.
∆∆T U
Combine
∆∆U \
(
∆∆\ ]!
_webHostEnvironment
∆∆] p
.
∆∆p q
ContentRootPath∆∆q Ä
,∆∆Ä Å
$str∆∆Ç ñ
)∆∆ñ ó
,∆∆ó ò
pet∆∆ô ú
.∆∆ú ù
Id∆∆ù ü
+∆∆† °
$str∆∆¢ ®
)∆∆® ©
,∆∆© ™
FileMode∆∆´ ≥
.∆∆≥ ¥
Create∆∆¥ ∫
)∆∆∫ ª
)∆∆ª º
{
«« 
await
»»  %

customFile
»»& 0
.
»»0 1
CopyToAsync
»»1 <
(
»»< =

fileStream
»»= G
)
»»G H
;
»»H I
pet
……  #
.
……# $
	ImagePath
……$ -
=
……. /
pet
……0 3
.
……3 4
Id
……4 6
.
……6 7
ToString
……7 ?
(
……? @
)
……@ A
;
……A B
}
   
}
ÀÀ 
}
ÃÃ 
var
œœ 
tst
œœ 
=
œœ 
Path
œœ "
.
œœ" #
Combine
œœ# *
(
œœ* +!
_webHostEnvironment
œœ+ >
.
œœ> ?
WebRootPath
œœ? J
,
œœJ K
Path
œœL P
.
œœP Q
Combine
œœQ X
(
œœX Y
$str
œœY d
,
œœd e
pet
œœf i
.
œœi j
Id
œœj l
.
œœl m
ToString
œœm u
(
œœu v
)
œœv w
+
œœx y
$strœœz Ä
)œœÄ Å
)œœÅ Ç
;œœÇ É
var
—— 
test
—— 
=
—— 
System
—— %
.
——% &
IO
——& (
.
——( )
File
——) -
.
——- .
Exists
——. 4
(
——4 5
Path
——5 9
.
——9 :
Combine
——: A
(
——A B!
_webHostEnvironment
——B U
.
——U V
WebRootPath
——V a
,
——a b
Path
——c g
.
——g h
Combine
——h o
(
——o p
$str
——p {
,
——{ |
pet——} Ä
.——Ä Å
Id——Å É
.——É Ñ
ToString——Ñ å
(——å ç
)——ç é
+——è ê
$str——ë ó
)——ó ò
)——ò ô
)——ô ö
;——ö õ
if
”” 
(
”” 
System
”” 
.
”” 
IO
”” !
.
””! "
File
””" &
.
””& '
Exists
””' -
(
””- .
Path
””. 2
.
””2 3
Combine
””3 :
(
””: ;!
_webHostEnvironment
””; N
.
””N O
WebRootPath
””O Z
,
””Z [
Path
””\ `
.
””` a
Combine
””a h
(
””h i
$str
””i t
,
””t u
pet
””v y
.
””y z
Id
””z |
.
””| }
ToString””} Ö
(””Ö Ü
)””Ü á
+””à â
$str””ä ê
)””ê ë
)””ë í
)””í ì
)””ì î
{
‘‘ 
pet
’’ 
.
’’ 
	ImagePath
’’ %
=
’’& '
pet
’’( +
.
’’+ ,
Id
’’, .
.
’’. /
ToString
’’/ 7
(
’’7 8
)
’’8 9
;
’’9 :
}
÷÷ 
_context
ÿÿ 
.
ÿÿ 
Update
ÿÿ #
(
ÿÿ# $
pet
ÿÿ$ '
)
ÿÿ' (
;
ÿÿ( )
await
ŸŸ 
_context
ŸŸ "
.
ŸŸ" #
SaveChangesAsync
ŸŸ# 3
(
ŸŸ3 4
)
ŸŸ4 5
;
ŸŸ5 6
}
⁄⁄ 
catch
€€ 
(
€€ *
DbUpdateConcurrencyException
€€ 3
)
€€3 4
{
‹‹ 
if
›› 
(
›› 
!
›› 
	PetExists
›› "
(
››" #
pet
››# &
.
››& '
Id
››' )
)
››) *
)
››* +
{
ﬁﬁ 
return
ﬂﬂ 
RedirectToAction
ﬂﬂ /
(
ﬂﬂ/ 0
$str
ﬂﬂ0 :
,
ﬂﬂ: ;
$str
ﬂﬂ< B
)
ﬂﬂB C
;
ﬂﬂC D
}
‡‡ 
else
·· 
{
‚‚ 
throw
„„ 
;
„„ 
}
‰‰ 
}
ÂÂ 
return
ÊÊ 
Redirect
ÊÊ 
(
ÊÊ  
string
ÊÊ  &
.
ÊÊ& '
Format
ÊÊ' -
(
ÊÊ- .
$str
ÊÊ. B
,
ÊÊB C
pet
ÊÊD G
.
ÊÊG H
Id
ÊÊH J
)
ÊÊJ K
)
ÊÊK L
;
ÊÊL M
}
ËË 
return
ÍÍ 
Redirect
ÍÍ 
(
ÍÍ 
string
ÍÍ "
.
ÍÍ" #
Format
ÍÍ# )
(
ÍÍ) *
$str
ÍÍ* >
,
ÍÍ> ?
pet
ÍÍ@ C
.
ÍÍC D
Id
ÍÍD F
)
ÍÍF G
)
ÍÍG H
;
ÍÍH I
}
ÏÏ 	
public
ÔÔ 
async
ÔÔ 
Task
ÔÔ 
<
ÔÔ 
IActionResult
ÔÔ '
>
ÔÔ' (
Delete
ÔÔ) /
(
ÔÔ/ 0
string
ÔÔ0 6
id
ÔÔ7 9
)
ÔÔ9 :
{
 	
if
ÒÒ 
(
ÒÒ 
id
ÒÒ 
==
ÒÒ 
null
ÒÒ 
)
ÒÒ 
{
ÚÚ 
return
ÛÛ 
RedirectToAction
ÛÛ '
(
ÛÛ' (
$str
ÛÛ( 2
,
ÛÛ2 3
$str
ÛÛ4 :
)
ÛÛ: ;
;
ÛÛ; <
}
ÙÙ 
var
ˆˆ 
pet
ˆˆ 
=
ˆˆ 
await
ˆˆ 
_context
ˆˆ $
.
ˆˆ$ %
Pet
ˆˆ% (
.
˜˜ 
Include
˜˜ 
(
˜˜ 
p
˜˜ 
=>
˜˜ 
p
˜˜ 
.
˜˜  
ApplicationUser
˜˜  /
)
˜˜/ 0
.
¯¯ !
FirstOrDefaultAsync
¯¯ $
(
¯¯$ %
m
¯¯% &
=>
¯¯' )
m
¯¯* +
.
¯¯+ ,
Id
¯¯, .
==
¯¯/ 1
id
¯¯2 4
)
¯¯4 5
;
¯¯5 6
if
˘˘ 
(
˘˘ 
pet
˘˘ 
==
˘˘ 
null
˘˘ 
)
˘˘ 
{
˙˙ 
return
˚˚ 
RedirectToAction
˚˚ '
(
˚˚' (
$str
˚˚( 2
,
˚˚2 3
$str
˚˚4 :
)
˚˚: ;
;
˚˚; <
}
¸¸ 
if
˛˛ 
(
˛˛ 
pet
˛˛ 
.
˛˛ 
ApplicationUserId
˛˛ %
!=
˛˛& (
User
˛˛) -
.
˛˛- .
FindFirstValue
˛˛. <
(
˛˛< =

ClaimTypes
˛˛= G
.
˛˛G H
NameIdentifier
˛˛H V
)
˛˛V W
)
˛˛W X
{
ˇˇ 
return
ÄÄ 
RedirectToAction
ÄÄ '
(
ÄÄ' (
$str
ÄÄ( 2
,
ÄÄ2 3
$str
ÄÄ4 :
)
ÄÄ: ;
;
ÄÄ; <
}
ÅÅ 
return
ÉÉ 
View
ÉÉ 
(
ÉÉ 
pet
ÉÉ 
)
ÉÉ 
;
ÉÉ 
}
ÑÑ 	
[
áá 	
HttpPost
áá	 
,
áá 

ActionName
áá 
(
áá 
$str
áá &
)
áá& '
]
áá' (
[
àà 	&
ValidateAntiForgeryToken
àà	 !
]
àà! "
public
ââ 
async
ââ 
Task
ââ 
<
ââ 
IActionResult
ââ '
>
ââ' (
DeleteConfirmed
ââ) 8
(
ââ8 9
string
ââ9 ?
id
ââ@ B
)
ââB C
{
ää 	
var
ãã 
pet
ãã 
=
ãã 
await
ãã 
_context
ãã $
.
ãã$ %
Pet
ãã% (
.
ãã( )
	FindAsync
ãã) 2
(
ãã2 3
id
ãã3 5
)
ãã5 6
;
ãã6 7
if
òò 
(
òò 
pet
òò 
.
òò 
ApplicationUserId
òò %
!=
òò& (
User
òò) -
.
òò- .
FindFirstValue
òò. <
(
òò< =

ClaimTypes
òò= G
.
òòG H
NameIdentifier
òòH V
)
òòV W
)
òòW X
{
ôô 
return
öö 
RedirectToAction
öö '
(
öö' (
$str
öö( 2
,
öö2 3
$str
öö4 :
)
öö: ;
;
öö; <
}
õõ 
_context
ùù 
.
ùù 
Pet
ùù 
.
ùù 
Remove
ùù 
(
ùù  
pet
ùù  #
)
ùù# $
;
ùù$ %
await
ûû 
_context
ûû 
.
ûû 
SaveChangesAsync
ûû +
(
ûû+ ,
)
ûû, -
;
ûû- .
System
†† 
.
†† 
IO
†† 
.
†† 
File
†† 
.
†† 
Delete
†† !
(
††! "
Path
††" &
.
††& '
Combine
††' .
(
††. /!
_webHostEnvironment
††/ B
.
††B C
ContentRootPath
††C R
,
††R S
$str
††T h
+
††i j
id
††k m
+
††n o
$str
††p v
)
††v w
)
††w x
;
††x y
return
¢¢ 
RedirectToAction
¢¢ #
(
¢¢# $
nameof
¢¢$ *
(
¢¢* +
Index
¢¢+ 0
)
¢¢0 1
)
¢¢1 2
;
¢¢2 3
}
££ 	
private
•• 
bool
•• 
	PetExists
•• 
(
•• 
string
•• %
id
••& (
)
••( )
{
¶¶ 	
return
ßß 
_context
ßß 
.
ßß 
Pet
ßß 
.
ßß  
Any
ßß  #
(
ßß# $
e
ßß$ %
=>
ßß& (
e
ßß) *
.
ßß* +
Id
ßß+ -
==
ßß. 0
id
ßß1 3
)
ßß3 4
;
ßß4 5
}
®® 	
[
≠≠ 	
HttpPost
≠≠	 
]
≠≠ 
[
ÆÆ 	&
ValidateAntiForgeryToken
ÆÆ	 !
]
ÆÆ! "
public
ØØ 
async
ØØ 
Task
ØØ 
<
ØØ 
IActionResult
ØØ '
>
ØØ' (
CommentsCreate
ØØ) 7
(
ØØ7 8
[
ØØ8 9
Bind
ØØ9 =
(
ØØ= >
$strØØ> ó
)ØØó ò
]ØØò ô
CommentØØö °
commentØØ¢ ©
)ØØ© ™
{
∞∞ 	
if
±± 
(
±± 

ModelState
±± 
.
±± 
IsValid
±± "
)
±±" #
{
≤≤ 
var
≥≥ 
petId
≥≥ 
=
≥≥ 
comment
≥≥ #
.
≥≥# $
PetId
≥≥$ )
;
≥≥) *
comment
µµ 
.
µµ 
Id
µµ 
=
µµ 
Guid
µµ !
.
µµ! "
NewGuid
µµ" )
(
µµ) *
)
µµ* +
.
µµ+ ,
ToString
µµ, 4
(
µµ4 5
)
µµ5 6
;
µµ6 7
comment
∂∂ 
.
∂∂ 
ApplicationUserId
∂∂ )
=
∂∂* +
User
∂∂, 0
.
∂∂0 1
FindFirstValue
∂∂1 ?
(
∂∂? @

ClaimTypes
∂∂@ J
.
∂∂J K
NameIdentifier
∂∂K Y
)
∂∂Y Z
;
∂∂Z [
comment
∑∑ 
.
∑∑ 

Created_at
∑∑ "
=
∑∑# $
DateTime
∑∑% -
.
∑∑- .
Now
∑∑. 1
;
∑∑1 2
comment
∏∏ 
.
∏∏ 

Updated_at
∏∏ "
=
∏∏# $
DateTime
∏∏% -
.
∏∏- .
Now
∏∏. 1
;
∏∏1 2
if
∫∫ 
(
∫∫ 
comment
∫∫ 
.
∫∫ 
Message
∫∫ #
==
∫∫$ &
null
∫∫' +
)
∫∫+ ,
{
ªª 

ModelState
ºº 
.
ºº 
AddModelError
ºº ,
(
ºº, -
$str
ºº- 6
,
ºº6 7
$str
ºº8 Q
)
ººQ R
;
ººR S
return
ææ 
Redirect
ææ #
(
ææ# $
string
ææ$ *
.
ææ* +
Format
ææ+ 1
(
ææ1 2
$str
ææ2 F
,
ææF G
comment
ææH O
.
ææO P
PetId
ææP U
)
ææU V
)
ææV W
;
ææW X
}
øø 
var
¡¡ 
files
¡¡ 
=
¡¡ 
HttpContext
¡¡ '
.
¡¡' (
Request
¡¡( /
.
¡¡/ 0
Form
¡¡0 4
.
¡¡4 5
Files
¡¡5 :
;
¡¡: ;
foreach
¬¬ 
(
¬¬ 
var
¬¬ 

customFile
¬¬ '
in
¬¬( *
files
¬¬+ 0
)
¬¬0 1
{
√√ 
var
ƒƒ 
ext
ƒƒ 
=
ƒƒ 
Path
ƒƒ "
.
ƒƒ" #
GetExtension
ƒƒ# /
(
ƒƒ/ 0

customFile
ƒƒ0 :
.
ƒƒ: ;
FileName
ƒƒ; C
)
ƒƒC D
.
ƒƒD E
ToString
ƒƒE M
(
ƒƒM N
)
ƒƒN O
;
ƒƒO P
if
≈≈ 
(
≈≈ 
ext
≈≈ 
==
≈≈ 
$str
≈≈ &
||
≈≈' )
ext
≈≈* -
==
≈≈. 0
$str
≈≈1 7
||
≈≈8 :
ext
≈≈; >
==
≈≈? A
$str
≈≈B H
||
≈≈I K
ext
≈≈L O
==
≈≈P R
$str
≈≈S Y
)
≈≈Y Z
{
∆∆ 
if
«« 
(
«« 

customFile
«« &
!=
««' )
null
««* .
&&
««/ 1

customFile
««2 <
.
««< =
Length
««= C
>
««D E
$num
««F G
)
««G H
{
»» 
using
…… !
(
……" #
var
……# &

fileStream
……' 1
=
……2 3
new
……4 7

FileStream
……8 B
(
……B C
Path
……C G
.
……G H
Combine
……H O
(
……O P
Path
……P T
.
……T U
Combine
……U \
(
……\ ]!
_webHostEnvironment
……] p
.
……p q
ContentRootPath……q Ä
,……Ä Å
$str……Ç ö
)……ö õ
,……õ ú
comment……ù §
.……§ •
Id……• ß
+……® ©
$str……™ ∞
)……∞ ±
,……± ≤
FileMode……≥ ª
.……ª º
Create……º ¬
)……¬ √
)……√ ƒ
{
   
await
ÀÀ  %

customFile
ÀÀ& 0
.
ÀÀ0 1
CopyToAsync
ÀÀ1 <
(
ÀÀ< =

fileStream
ÀÀ= G
)
ÀÀG H
;
ÀÀH I
comment
ÃÃ  '
.
ÃÃ' (
	ImagePath
ÃÃ( 1
=
ÃÃ2 3
comment
ÃÃ4 ;
.
ÃÃ; <
Id
ÃÃ< >
.
ÃÃ> ?
ToString
ÃÃ? G
(
ÃÃG H
)
ÃÃH I
;
ÃÃI J
}
ÕÕ 
}
ŒŒ 
}
œœ 
}
–– 
_context
““ 
.
““ 
Add
““ 
(
““ 
comment
““ $
)
““$ %
;
““% &
await
”” 
_context
”” 
.
”” 
SaveChangesAsync
”” /
(
””/ 0
)
””0 1
;
””1 2
return
’’ 
Redirect
’’ 
(
’’  
string
’’  &
.
’’& '
Format
’’' -
(
’’- .
$str
’’. B
,
’’B C
comment
’’D K
.
’’K L
PetId
’’L Q
)
’’Q R
)
’’R S
;
’’S T
}
÷÷ 
return
ŸŸ 
Redirect
ŸŸ 
(
ŸŸ 
string
ŸŸ "
.
ŸŸ" #
Format
ŸŸ# )
(
ŸŸ) *
$str
ŸŸ* >
,
ŸŸ> ?
comment
ŸŸ@ G
.
ŸŸG H
PetId
ŸŸH M
)
ŸŸM N
)
ŸŸN O
;
ŸŸO P
}
⁄⁄ 	
[
›› 	
HttpPost
››	 
,
›› 

ActionName
›› 
(
›› 
$str
›› 6
)
››6 7
]
››7 8
[
ﬁﬁ 	&
ValidateAntiForgeryToken
ﬁﬁ	 !
]
ﬁﬁ! "
public
ﬂﬂ 
async
ﬂﬂ 
Task
ﬂﬂ 
<
ﬂﬂ 
IActionResult
ﬂﬂ '
>
ﬂﬂ' ($
CommentDeleteConfirmed
ﬂﬂ) ?
(
ﬂﬂ? @
string
ﬂﬂ@ F
id
ﬂﬂG I
)
ﬂﬂI J
{
‡‡ 	
var
·· 
comment
·· 
=
·· 
await
·· 
_context
··  (
.
··( )
Comment
··) 0
.
··0 1
	FindAsync
··1 :
(
··: ;
id
··; =
)
··= >
;
··> ?
_context
‚‚ 
.
‚‚ 
Comment
‚‚ 
.
‚‚ 
Remove
‚‚ #
(
‚‚# $
comment
‚‚$ +
)
‚‚+ ,
;
‚‚, -
await
„„ 
_context
„„ 
.
„„ 
SaveChangesAsync
„„ +
(
„„+ ,
)
„„, -
;
„„- .
if
ÂÂ 
(
ÂÂ 
comment
ÂÂ 
.
ÂÂ 
	ImagePath
ÂÂ  
!=
ÂÂ! #
null
ÂÂ$ (
)
ÂÂ( )
{
ÊÊ 
System
ÁÁ 
.
ÁÁ 
IO
ÁÁ 
.
ÁÁ 
File
ÁÁ 
.
ÁÁ 
Delete
ÁÁ %
(
ÁÁ% &
Path
ÁÁ& *
.
ÁÁ* +
Combine
ÁÁ+ 2
(
ÁÁ2 3!
_webHostEnvironment
ÁÁ3 F
.
ÁÁF G
ContentRootPath
ÁÁG V
,
ÁÁV W
$str
ÁÁX p
+
ÁÁq r
id
ÁÁs u
+
ÁÁv w
$str
ÁÁx ~
)
ÁÁ~ 
)ÁÁ Ä
;ÁÁÄ Å
}
ËË 
return
ÍÍ 
Redirect
ÍÍ 
(
ÍÍ 
string
ÍÍ "
.
ÍÍ" #
Format
ÍÍ# )
(
ÍÍ) *
$str
ÍÍ* >
,
ÍÍ> ?
comment
ÍÍ@ G
.
ÍÍG H
PetId
ÍÍH M
)
ÍÍM N
)
ÍÍN O
;
ÍÍO P
}
ÎÎ 	
}
ÏÏ 
}ÌÌ Ö

pC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Data\Where_is_my_FluffymoonContext.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Data! %
{		 
public

 

class

 )
Where_is_my_FluffymoonContext

 .
:

/ 0
	DbContext

1 :
{ 
public )
Where_is_my_FluffymoonContext ,
(- .
DbContextOptions. >
<> ?)
Where_is_my_FluffymoonContext? \
>\ ]
options^ e
)e f
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< "
Where_is_my_Fluffymoon +
.+ ,
Models, 2
.2 3
Pet3 6
>6 7
Pet8 ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
DbSet 
< "
Where_is_my_Fluffymoon +
.+ ,
Models, 2
.2 3
Comment3 :
>: ;
Comment< C
{D E
getF I
;I J
setK N
;N O
}P Q
} 
} Â°
vC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Migrations\20210522091221_Initial_Create.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !

Migrations! +
{ 
public 

partial 
class 
Initial_Create '
:( )
	Migration* 3
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
	maxLengthG P
:P Q
$numR U
,U V
nullableW _
:_ `
truea e
)e f
,f g
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
	maxLengthQ Z
:Z [
$num\ _
,_ `
nullablea i
:i j
truek o
)o p
,p q
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
true] a
)a b
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
	FirstName 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; J
,J K
nullableL T
:T U
trueV Z
)Z [
,[ \
LastName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
trueU Y
)Y Z
,Z [
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
	maxLengthK T
:T U
$numV Y
,Y Z
nullable[ c
:c d
truee i
)i j
,j k
NormalizedUserName   &
=  ' (
table  ) .
.  . /
Column  / 5
<  5 6
string  6 <
>  < =
(  = >
type  > B
:  B C
$str  D S
,  S T
	maxLength  U ^
:  ^ _
$num  ` c
,  c d
nullable  e m
:  m n
true  o s
)  s t
,  t u
Email!! 
=!! 
table!! !
.!!! "
Column!!" (
<!!( )
string!!) /
>!!/ 0
(!!0 1
type!!1 5
:!!5 6
$str!!7 F
,!!F G
	maxLength!!H Q
:!!Q R
$num!!S V
,!!V W
nullable!!X `
:!!` a
true!!b f
)!!f g
,!!g h
NormalizedEmail"" #
=""$ %
table""& +
.""+ ,
Column"", 2
<""2 3
string""3 9
>""9 :
("": ;
type""; ?
:""? @
$str""A P
,""P Q
	maxLength""R [
:""[ \
$num""] `
,""` a
nullable""b j
:""j k
true""l p
)""p q
,""q r
EmailConfirmed## "
=### $
table##% *
.##* +
Column##+ 1
<##1 2
bool##2 6
>##6 7
(##7 8
type##8 <
:##< =
$str##> C
,##C D
nullable##E M
:##M N
false##O T
)##T U
,##U V
PasswordHash$$  
=$$! "
table$$# (
.$$( )
Column$$) /
<$$/ 0
string$$0 6
>$$6 7
($$7 8
type$$8 <
:$$< =
$str$$> M
,$$M N
nullable$$O W
:$$W X
true$$Y ]
)$$] ^
,$$^ _
SecurityStamp%% !
=%%" #
table%%$ )
.%%) *
Column%%* 0
<%%0 1
string%%1 7
>%%7 8
(%%8 9
type%%9 =
:%%= >
$str%%? N
,%%N O
nullable%%P X
:%%X Y
true%%Z ^
)%%^ _
,%%_ `
ConcurrencyStamp&& $
=&&% &
table&&' ,
.&&, -
Column&&- 3
<&&3 4
string&&4 :
>&&: ;
(&&; <
type&&< @
:&&@ A
$str&&B Q
,&&Q R
nullable&&S [
:&&[ \
true&&] a
)&&a b
,&&b c
PhoneNumber'' 
=''  !
table''" '
.''' (
Column''( .
<''. /
string''/ 5
>''5 6
(''6 7
type''7 ;
:''; <
$str''= L
,''L M
nullable''N V
:''V W
true''X \
)''\ ]
,''] ^ 
PhoneNumberConfirmed(( (
=(() *
table((+ 0
.((0 1
Column((1 7
<((7 8
bool((8 <
>((< =
(((= >
type((> B
:((B C
$str((D I
,((I J
nullable((K S
:((S T
false((U Z
)((Z [
,(([ \
TwoFactorEnabled)) $
=))% &
table))' ,
.)), -
Column))- 3
<))3 4
bool))4 8
>))8 9
())9 :
type)): >
:))> ?
$str))@ E
,))E F
nullable))G O
:))O P
false))Q V
)))V W
,))W X

LockoutEnd** 
=**  
table**! &
.**& '
Column**' -
<**- .
DateTimeOffset**. <
>**< =
(**= >
type**> B
:**B C
$str**D T
,**T U
nullable**V ^
:**^ _
true**` d
)**d e
,**e f
LockoutEnabled++ "
=++# $
table++% *
.++* +
Column+++ 1
<++1 2
bool++2 6
>++6 7
(++7 8
type++8 <
:++< =
$str++> C
,++C D
nullable++E M
:++M N
false++O T
)++T U
,++U V
AccessFailedCount,, %
=,,& '
table,,( -
.,,- .
Column,,. 4
<,,4 5
int,,5 8
>,,8 9
(,,9 :
type,,: >
:,,> ?
$str,,@ E
,,,E F
nullable,,G O
:,,O P
false,,Q V
),,V W
}-- 
,-- 
constraints.. 
:.. 
table.. "
=>..# %
{// 
table00 
.00 

PrimaryKey00 $
(00$ %
$str00% 5
,005 6
x007 8
=>009 ;
x00< =
.00= >
Id00> @
)00@ A
;00A B
}11 
)11 
;11 
migrationBuilder33 
.33 
CreateTable33 (
(33( )
name44 
:44 
$str44 (
,44( )
columns55 
:55 
table55 
=>55 !
new55" %
{66 
Id77 
=77 
table77 
.77 
Column77 %
<77% &
int77& )
>77) *
(77* +
type77+ /
:77/ 0
$str771 6
,776 7
nullable778 @
:77@ A
false77B G
)77G H
.88 

Annotation88 #
(88# $
$str88$ 8
,888 9
$str88: @
)88@ A
,88A B
RoleId99 
=99 
table99 "
.99" #
Column99# )
<99) *
string99* 0
>990 1
(991 2
type992 6
:996 7
$str998 G
,99G H
nullable99I Q
:99Q R
false99S X
)99X Y
,99Y Z
	ClaimType:: 
=:: 
table::  %
.::% &
Column::& ,
<::, -
string::- 3
>::3 4
(::4 5
type::5 9
:::9 :
$str::; J
,::J K
nullable::L T
:::T U
true::V Z
)::Z [
,::[ \

ClaimValue;; 
=;;  
table;;! &
.;;& '
Column;;' -
<;;- .
string;;. 4
>;;4 5
(;;5 6
type;;6 :
:;;: ;
$str;;< K
,;;K L
nullable;;M U
:;;U V
true;;W [
);;[ \
}<< 
,<< 
constraints== 
:== 
table== "
=>==# %
{>> 
table?? 
.?? 

PrimaryKey?? $
(??$ %
$str??% :
,??: ;
x??< =
=>??> @
x??A B
.??B C
Id??C E
)??E F
;??F G
table@@ 
.@@ 

ForeignKey@@ $
(@@$ %
nameAA 
:AA 
$strAA F
,AAF G
columnBB 
:BB 
xBB  !
=>BB" $
xBB% &
.BB& '
RoleIdBB' -
,BB- .
principalTableCC &
:CC& '
$strCC( 5
,CC5 6
principalColumnDD '
:DD' (
$strDD) -
,DD- .
onDeleteEE  
:EE  !
ReferentialActionEE" 3
.EE3 4
CascadeEE4 ;
)EE; <
;EE< =
}FF 
)FF 
;FF 
migrationBuilderHH 
.HH 
CreateTableHH (
(HH( )
nameII 
:II 
$strII (
,II( )
columnsJJ 
:JJ 
tableJJ 
=>JJ !
newJJ" %
{KK 
IdLL 
=LL 
tableLL 
.LL 
ColumnLL %
<LL% &
intLL& )
>LL) *
(LL* +
typeLL+ /
:LL/ 0
$strLL1 6
,LL6 7
nullableLL8 @
:LL@ A
falseLLB G
)LLG H
.MM 

AnnotationMM #
(MM# $
$strMM$ 8
,MM8 9
$strMM: @
)MM@ A
,MMA B
UserIdNN 
=NN 
tableNN "
.NN" #
ColumnNN# )
<NN) *
stringNN* 0
>NN0 1
(NN1 2
typeNN2 6
:NN6 7
$strNN8 G
,NNG H
nullableNNI Q
:NNQ R
falseNNS X
)NNX Y
,NNY Z
	ClaimTypeOO 
=OO 
tableOO  %
.OO% &
ColumnOO& ,
<OO, -
stringOO- 3
>OO3 4
(OO4 5
typeOO5 9
:OO9 :
$strOO; J
,OOJ K
nullableOOL T
:OOT U
trueOOV Z
)OOZ [
,OO[ \

ClaimValuePP 
=PP  
tablePP! &
.PP& '
ColumnPP' -
<PP- .
stringPP. 4
>PP4 5
(PP5 6
typePP6 :
:PP: ;
$strPP< K
,PPK L
nullablePPM U
:PPU V
truePPW [
)PP[ \
}QQ 
,QQ 
constraintsRR 
:RR 
tableRR "
=>RR# %
{SS 
tableTT 
.TT 

PrimaryKeyTT $
(TT$ %
$strTT% :
,TT: ;
xTT< =
=>TT> @
xTTA B
.TTB C
IdTTC E
)TTE F
;TTF G
tableUU 
.UU 

ForeignKeyUU $
(UU$ %
nameVV 
:VV 
$strVV F
,VVF G
columnWW 
:WW 
xWW  !
=>WW" $
xWW% &
.WW& '
UserIdWW' -
,WW- .
principalTableXX &
:XX& '
$strXX( 5
,XX5 6
principalColumnYY '
:YY' (
$strYY) -
,YY- .
onDeleteZZ  
:ZZ  !
ReferentialActionZZ" 3
.ZZ3 4
CascadeZZ4 ;
)ZZ; <
;ZZ< =
}[[ 
)[[ 
;[[ 
migrationBuilder]] 
.]] 
CreateTable]] (
(]]( )
name^^ 
:^^ 
$str^^ (
,^^( )
columns__ 
:__ 
table__ 
=>__ !
new__" %
{`` 
LoginProvideraa !
=aa" #
tableaa$ )
.aa) *
Columnaa* 0
<aa0 1
stringaa1 7
>aa7 8
(aa8 9
typeaa9 =
:aa= >
$straa? N
,aaN O
	maxLengthaaP Y
:aaY Z
$numaa[ ^
,aa^ _
nullableaa` h
:aah i
falseaaj o
)aao p
,aap q
ProviderKeybb 
=bb  !
tablebb" '
.bb' (
Columnbb( .
<bb. /
stringbb/ 5
>bb5 6
(bb6 7
typebb7 ;
:bb; <
$strbb= L
,bbL M
	maxLengthbbN W
:bbW X
$numbbY \
,bb\ ]
nullablebb^ f
:bbf g
falsebbh m
)bbm n
,bbn o
ProviderDisplayNamecc '
=cc( )
tablecc* /
.cc/ 0
Columncc0 6
<cc6 7
stringcc7 =
>cc= >
(cc> ?
typecc? C
:ccC D
$strccE T
,ccT U
nullableccV ^
:cc^ _
truecc` d
)ccd e
,cce f
UserIddd 
=dd 
tabledd "
.dd" #
Columndd# )
<dd) *
stringdd* 0
>dd0 1
(dd1 2
typedd2 6
:dd6 7
$strdd8 G
,ddG H
nullableddI Q
:ddQ R
falseddS X
)ddX Y
}ee 
,ee 
constraintsff 
:ff 
tableff "
=>ff# %
{gg 
tablehh 
.hh 

PrimaryKeyhh $
(hh$ %
$strhh% :
,hh: ;
xhh< =
=>hh> @
newhhA D
{hhE F
xhhG H
.hhH I
LoginProviderhhI V
,hhV W
xhhX Y
.hhY Z
ProviderKeyhhZ e
}hhf g
)hhg h
;hhh i
tableii 
.ii 

ForeignKeyii $
(ii$ %
namejj 
:jj 
$strjj F
,jjF G
columnkk 
:kk 
xkk  !
=>kk" $
xkk% &
.kk& '
UserIdkk' -
,kk- .
principalTablell &
:ll& '
$strll( 5
,ll5 6
principalColumnmm '
:mm' (
$strmm) -
,mm- .
onDeletenn  
:nn  !
ReferentialActionnn" 3
.nn3 4
Cascadenn4 ;
)nn; <
;nn< =
}oo 
)oo 
;oo 
migrationBuilderqq 
.qq 
CreateTableqq (
(qq( )
namerr 
:rr 
$strrr '
,rr' (
columnsss 
:ss 
tabless 
=>ss !
newss" %
{tt 
UserIduu 
=uu 
tableuu "
.uu" #
Columnuu# )
<uu) *
stringuu* 0
>uu0 1
(uu1 2
typeuu2 6
:uu6 7
$struu8 G
,uuG H
nullableuuI Q
:uuQ R
falseuuS X
)uuX Y
,uuY Z
RoleIdvv 
=vv 
tablevv "
.vv" #
Columnvv# )
<vv) *
stringvv* 0
>vv0 1
(vv1 2
typevv2 6
:vv6 7
$strvv8 G
,vvG H
nullablevvI Q
:vvQ R
falsevvS X
)vvX Y
}ww 
,ww 
constraintsxx 
:xx 
tablexx "
=>xx# %
{yy 
tablezz 
.zz 

PrimaryKeyzz $
(zz$ %
$strzz% 9
,zz9 :
xzz; <
=>zz= ?
newzz@ C
{zzD E
xzzF G
.zzG H
UserIdzzH N
,zzN O
xzzP Q
.zzQ R
RoleIdzzR X
}zzY Z
)zzZ [
;zz[ \
table{{ 
.{{ 

ForeignKey{{ $
({{$ %
name|| 
:|| 
$str|| E
,||E F
column}} 
:}} 
x}}  !
=>}}" $
x}}% &
.}}& '
RoleId}}' -
,}}- .
principalTable~~ &
:~~& '
$str~~( 5
,~~5 6
principalColumn '
:' (
$str) -
,- .
onDelete
ÄÄ  
:
ÄÄ  !
ReferentialAction
ÄÄ" 3
.
ÄÄ3 4
Cascade
ÄÄ4 ;
)
ÄÄ; <
;
ÄÄ< =
table
ÅÅ 
.
ÅÅ 

ForeignKey
ÅÅ $
(
ÅÅ$ %
name
ÇÇ 
:
ÇÇ 
$str
ÇÇ E
,
ÇÇE F
column
ÉÉ 
:
ÉÉ 
x
ÉÉ  !
=>
ÉÉ" $
x
ÉÉ% &
.
ÉÉ& '
UserId
ÉÉ' -
,
ÉÉ- .
principalTable
ÑÑ &
:
ÑÑ& '
$str
ÑÑ( 5
,
ÑÑ5 6
principalColumn
ÖÖ '
:
ÖÖ' (
$str
ÖÖ) -
,
ÖÖ- .
onDelete
ÜÜ  
:
ÜÜ  !
ReferentialAction
ÜÜ" 3
.
ÜÜ3 4
Cascade
ÜÜ4 ;
)
ÜÜ; <
;
ÜÜ< =
}
áá 
)
áá 
;
áá 
migrationBuilder
ââ 
.
ââ 
CreateTable
ââ (
(
ââ( )
name
ää 
:
ää 
$str
ää (
,
ää( )
columns
ãã 
:
ãã 
table
ãã 
=>
ãã !
new
ãã" %
{
åå 
UserId
çç 
=
çç 
table
çç "
.
çç" #
Column
çç# )
<
çç) *
string
çç* 0
>
çç0 1
(
çç1 2
type
çç2 6
:
çç6 7
$str
çç8 G
,
ççG H
nullable
ççI Q
:
ççQ R
false
ççS X
)
ççX Y
,
ççY Z
LoginProvider
éé !
=
éé" #
table
éé$ )
.
éé) *
Column
éé* 0
<
éé0 1
string
éé1 7
>
éé7 8
(
éé8 9
type
éé9 =
:
éé= >
$str
éé? N
,
ééN O
	maxLength
ééP Y
:
ééY Z
$num
éé[ ^
,
éé^ _
nullable
éé` h
:
ééh i
false
ééj o
)
ééo p
,
éép q
Name
èè 
=
èè 
table
èè  
.
èè  !
Column
èè! '
<
èè' (
string
èè( .
>
èè. /
(
èè/ 0
type
èè0 4
:
èè4 5
$str
èè6 E
,
èèE F
	maxLength
èèG P
:
èèP Q
$num
èèR U
,
èèU V
nullable
èèW _
:
èè_ `
false
èèa f
)
èèf g
,
èèg h
Value
êê 
=
êê 
table
êê !
.
êê! "
Column
êê" (
<
êê( )
string
êê) /
>
êê/ 0
(
êê0 1
type
êê1 5
:
êê5 6
$str
êê7 F
,
êêF G
nullable
êêH P
:
êêP Q
true
êêR V
)
êêV W
}
ëë 
,
ëë 
constraints
íí 
:
íí 
table
íí "
=>
íí# %
{
ìì 
table
îî 
.
îî 

PrimaryKey
îî $
(
îî$ %
$str
îî% :
,
îî: ;
x
îî< =
=>
îî> @
new
îîA D
{
îîE F
x
îîG H
.
îîH I
UserId
îîI O
,
îîO P
x
îîQ R
.
îîR S
LoginProvider
îîS `
,
îî` a
x
îîb c
.
îîc d
Name
îîd h
}
îîi j
)
îîj k
;
îîk l
table
ïï 
.
ïï 

ForeignKey
ïï $
(
ïï$ %
name
ññ 
:
ññ 
$str
ññ F
,
ññF G
column
óó 
:
óó 
x
óó  !
=>
óó" $
x
óó% &
.
óó& '
UserId
óó' -
,
óó- .
principalTable
òò &
:
òò& '
$str
òò( 5
,
òò5 6
principalColumn
ôô '
:
ôô' (
$str
ôô) -
,
ôô- .
onDelete
öö  
:
öö  !
ReferentialAction
öö" 3
.
öö3 4
Cascade
öö4 ;
)
öö; <
;
öö< =
}
õõ 
)
õõ 
;
õõ 
migrationBuilder
ùù 
.
ùù 
CreateTable
ùù (
(
ùù( )
name
ûû 
:
ûû 
$str
ûû 
,
ûû 
columns
üü 
:
üü 
table
üü 
=>
üü !
new
üü" %
{
†† 
Id
°° 
=
°° 
table
°° 
.
°° 
Column
°° %
<
°°% &
string
°°& ,
>
°°, -
(
°°- .
type
°°. 2
:
°°2 3
$str
°°4 C
,
°°C D
nullable
°°E M
:
°°M N
false
°°O T
)
°°T U
,
°°U V
Name
¢¢ 
=
¢¢ 
table
¢¢  
.
¢¢  !
Column
¢¢! '
<
¢¢' (
string
¢¢( .
>
¢¢. /
(
¢¢/ 0
type
¢¢0 4
:
¢¢4 5
$str
¢¢6 E
,
¢¢E F
nullable
¢¢G O
:
¢¢O P
true
¢¢Q U
)
¢¢U V
,
¢¢V W
Description
££ 
=
££  !
table
££" '
.
££' (
Column
££( .
<
££. /
string
££/ 5
>
££5 6
(
££6 7
type
££7 ;
:
££; <
$str
££= L
,
££L M
nullable
££N V
:
££V W
true
££X \
)
££\ ]
,
££] ^
	ImagePath
§§ 
=
§§ 
table
§§  %
.
§§% &
Column
§§& ,
<
§§, -
string
§§- 3
>
§§3 4
(
§§4 5
type
§§5 9
:
§§9 :
$str
§§; J
,
§§J K
nullable
§§L T
:
§§T U
true
§§V Z
)
§§Z [
,
§§[ \
CoordinatesLong
•• #
=
••$ %
table
••& +
.
••+ ,
Column
••, 2
<
••2 3
string
••3 9
>
••9 :
(
••: ;
type
••; ?
:
••? @
$str
••A P
,
••P Q
nullable
••R Z
:
••Z [
true
••\ `
)
••` a
,
••a b
CoordinatesLat
¶¶ "
=
¶¶# $
table
¶¶% *
.
¶¶* +
Column
¶¶+ 1
<
¶¶1 2
string
¶¶2 8
>
¶¶8 9
(
¶¶9 :
type
¶¶: >
:
¶¶> ?
$str
¶¶@ O
,
¶¶O P
nullable
¶¶Q Y
:
¶¶Y Z
true
¶¶[ _
)
¶¶_ `
,
¶¶` a

Created_at
ßß 
=
ßß  
table
ßß! &
.
ßß& '
Column
ßß' -
<
ßß- .
DateTime
ßß. 6
>
ßß6 7
(
ßß7 8
type
ßß8 <
:
ßß< =
$str
ßß> I
,
ßßI J
nullable
ßßK S
:
ßßS T
true
ßßU Y
)
ßßY Z
,
ßßZ [

Updated_at
®® 
=
®®  
table
®®! &
.
®®& '
Column
®®' -
<
®®- .
DateTime
®®. 6
>
®®6 7
(
®®7 8
type
®®8 <
:
®®< =
$str
®®> I
,
®®I J
nullable
®®K S
:
®®S T
true
®®U Y
)
®®Y Z
,
®®Z [
ApplicationUserId
©© %
=
©©& '
table
©©( -
.
©©- .
Column
©©. 4
<
©©4 5
string
©©5 ;
>
©©; <
(
©©< =
type
©©= A
:
©©A B
$str
©©C R
,
©©R S
nullable
©©T \
:
©©\ ]
true
©©^ b
)
©©b c
}
™™ 
,
™™ 
constraints
´´ 
:
´´ 
table
´´ "
=>
´´# %
{
¨¨ 
table
≠≠ 
.
≠≠ 

PrimaryKey
≠≠ $
(
≠≠$ %
$str
≠≠% -
,
≠≠- .
x
≠≠/ 0
=>
≠≠1 3
x
≠≠4 5
.
≠≠5 6
Id
≠≠6 8
)
≠≠8 9
;
≠≠9 :
table
ÆÆ 
.
ÆÆ 

ForeignKey
ÆÆ $
(
ÆÆ$ %
name
ØØ 
:
ØØ 
$str
ØØ D
,
ØØD E
column
∞∞ 
:
∞∞ 
x
∞∞  !
=>
∞∞" $
x
∞∞% &
.
∞∞& '
ApplicationUserId
∞∞' 8
,
∞∞8 9
principalTable
±± &
:
±±& '
$str
±±( 5
,
±±5 6
principalColumn
≤≤ '
:
≤≤' (
$str
≤≤) -
,
≤≤- .
onDelete
≥≥  
:
≥≥  !
ReferentialAction
≥≥" 3
.
≥≥3 4
Restrict
≥≥4 <
)
≥≥< =
;
≥≥= >
}
¥¥ 
)
¥¥ 
;
¥¥ 
migrationBuilder
∂∂ 
.
∂∂ 
CreateTable
∂∂ (
(
∂∂( )
name
∑∑ 
:
∑∑ 
$str
∑∑ 
,
∑∑  
columns
∏∏ 
:
∏∏ 
table
∏∏ 
=>
∏∏ !
new
∏∏" %
{
ππ 
Id
∫∫ 
=
∫∫ 
table
∫∫ 
.
∫∫ 
Column
∫∫ %
<
∫∫% &
string
∫∫& ,
>
∫∫, -
(
∫∫- .
type
∫∫. 2
:
∫∫2 3
$str
∫∫4 C
,
∫∫C D
nullable
∫∫E M
:
∫∫M N
false
∫∫O T
)
∫∫T U
,
∫∫U V
Message
ªª 
=
ªª 
table
ªª #
.
ªª# $
Column
ªª$ *
<
ªª* +
string
ªª+ 1
>
ªª1 2
(
ªª2 3
type
ªª3 7
:
ªª7 8
$str
ªª9 H
,
ªªH I
nullable
ªªJ R
:
ªªR S
true
ªªT X
)
ªªX Y
,
ªªY Z
	ImagePath
ºº 
=
ºº 
table
ºº  %
.
ºº% &
Column
ºº& ,
<
ºº, -
string
ºº- 3
>
ºº3 4
(
ºº4 5
type
ºº5 9
:
ºº9 :
$str
ºº; J
,
ººJ K
nullable
ººL T
:
ººT U
true
ººV Z
)
ººZ [
,
ºº[ \
CoordinatesLong
ΩΩ #
=
ΩΩ$ %
table
ΩΩ& +
.
ΩΩ+ ,
Column
ΩΩ, 2
<
ΩΩ2 3
string
ΩΩ3 9
>
ΩΩ9 :
(
ΩΩ: ;
type
ΩΩ; ?
:
ΩΩ? @
$str
ΩΩA P
,
ΩΩP Q
nullable
ΩΩR Z
:
ΩΩZ [
true
ΩΩ\ `
)
ΩΩ` a
,
ΩΩa b
CoordinatesLat
ææ "
=
ææ# $
table
ææ% *
.
ææ* +
Column
ææ+ 1
<
ææ1 2
string
ææ2 8
>
ææ8 9
(
ææ9 :
type
ææ: >
:
ææ> ?
$str
ææ@ O
,
ææO P
nullable
ææQ Y
:
ææY Z
true
ææ[ _
)
ææ_ `
,
ææ` a

Created_at
øø 
=
øø  
table
øø! &
.
øø& '
Column
øø' -
<
øø- .
DateTime
øø. 6
>
øø6 7
(
øø7 8
type
øø8 <
:
øø< =
$str
øø> I
,
øøI J
nullable
øøK S
:
øøS T
true
øøU Y
)
øøY Z
,
øøZ [

Updated_at
¿¿ 
=
¿¿  
table
¿¿! &
.
¿¿& '
Column
¿¿' -
<
¿¿- .
DateTime
¿¿. 6
>
¿¿6 7
(
¿¿7 8
type
¿¿8 <
:
¿¿< =
$str
¿¿> I
,
¿¿I J
nullable
¿¿K S
:
¿¿S T
true
¿¿U Y
)
¿¿Y Z
,
¿¿Z [
ApplicationUserId
¡¡ %
=
¡¡& '
table
¡¡( -
.
¡¡- .
Column
¡¡. 4
<
¡¡4 5
string
¡¡5 ;
>
¡¡; <
(
¡¡< =
type
¡¡= A
:
¡¡A B
$str
¡¡C R
,
¡¡R S
nullable
¡¡T \
:
¡¡\ ]
true
¡¡^ b
)
¡¡b c
,
¡¡c d
PetId
¬¬ 
=
¬¬ 
table
¬¬ !
.
¬¬! "
Column
¬¬" (
<
¬¬( )
string
¬¬) /
>
¬¬/ 0
(
¬¬0 1
type
¬¬1 5
:
¬¬5 6
$str
¬¬7 F
,
¬¬F G
nullable
¬¬H P
:
¬¬P Q
true
¬¬R V
)
¬¬V W
}
√√ 
,
√√ 
constraints
ƒƒ 
:
ƒƒ 
table
ƒƒ "
=>
ƒƒ# %
{
≈≈ 
table
∆∆ 
.
∆∆ 

PrimaryKey
∆∆ $
(
∆∆$ %
$str
∆∆% 1
,
∆∆1 2
x
∆∆3 4
=>
∆∆5 7
x
∆∆8 9
.
∆∆9 :
Id
∆∆: <
)
∆∆< =
;
∆∆= >
table
«« 
.
«« 

ForeignKey
«« $
(
««$ %
name
»» 
:
»» 
$str
»» H
,
»»H I
column
…… 
:
…… 
x
……  !
=>
……" $
x
……% &
.
……& '
ApplicationUserId
……' 8
,
……8 9
principalTable
   &
:
  & '
$str
  ( 5
,
  5 6
principalColumn
ÀÀ '
:
ÀÀ' (
$str
ÀÀ) -
,
ÀÀ- .
onDelete
ÃÃ  
:
ÃÃ  !
ReferentialAction
ÃÃ" 3
.
ÃÃ3 4
Restrict
ÃÃ4 <
)
ÃÃ< =
;
ÃÃ= >
table
ÕÕ 
.
ÕÕ 

ForeignKey
ÕÕ $
(
ÕÕ$ %
name
ŒŒ 
:
ŒŒ 
$str
ŒŒ 4
,
ŒŒ4 5
column
œœ 
:
œœ 
x
œœ  !
=>
œœ" $
x
œœ% &
.
œœ& '
PetId
œœ' ,
,
œœ, -
principalTable
–– &
:
––& '
$str
––( -
,
––- .
principalColumn
—— '
:
——' (
$str
——) -
,
——- .
onDelete
““  
:
““  !
ReferentialAction
““" 3
.
““3 4
Restrict
““4 <
)
““< =
;
““= >
}
”” 
)
”” 
;
”” 
migrationBuilder
’’ 
.
’’ 
CreateIndex
’’ (
(
’’( )
name
÷÷ 
:
÷÷ 
$str
÷÷ 2
,
÷÷2 3
table
◊◊ 
:
◊◊ 
$str
◊◊ )
,
◊◊) *
column
ÿÿ 
:
ÿÿ 
$str
ÿÿ  
)
ÿÿ  !
;
ÿÿ! "
migrationBuilder
⁄⁄ 
.
⁄⁄ 
CreateIndex
⁄⁄ (
(
⁄⁄( )
name
€€ 
:
€€ 
$str
€€ %
,
€€% &
table
‹‹ 
:
‹‹ 
$str
‹‹ $
,
‹‹$ %
column
›› 
:
›› 
$str
›› (
,
››( )
unique
ﬁﬁ 
:
ﬁﬁ 
true
ﬁﬁ 
,
ﬁﬁ 
filter
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ 6
)
ﬂﬂ6 7
;
ﬂﬂ7 8
migrationBuilder
·· 
.
·· 
CreateIndex
·· (
(
··( )
name
‚‚ 
:
‚‚ 
$str
‚‚ 2
,
‚‚2 3
table
„„ 
:
„„ 
$str
„„ )
,
„„) *
column
‰‰ 
:
‰‰ 
$str
‰‰  
)
‰‰  !
;
‰‰! "
migrationBuilder
ÊÊ 
.
ÊÊ 
CreateIndex
ÊÊ (
(
ÊÊ( )
name
ÁÁ 
:
ÁÁ 
$str
ÁÁ 2
,
ÁÁ2 3
table
ËË 
:
ËË 
$str
ËË )
,
ËË) *
column
ÈÈ 
:
ÈÈ 
$str
ÈÈ  
)
ÈÈ  !
;
ÈÈ! "
migrationBuilder
ÎÎ 
.
ÎÎ 
CreateIndex
ÎÎ (
(
ÎÎ( )
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ 1
,
ÏÏ1 2
table
ÌÌ 
:
ÌÌ 
$str
ÌÌ (
,
ÌÌ( )
column
ÓÓ 
:
ÓÓ 
$str
ÓÓ  
)
ÓÓ  !
;
ÓÓ! "
migrationBuilder
 
.
 
CreateIndex
 (
(
( )
name
ÒÒ 
:
ÒÒ 
$str
ÒÒ "
,
ÒÒ" #
table
ÚÚ 
:
ÚÚ 
$str
ÚÚ $
,
ÚÚ$ %
column
ÛÛ 
:
ÛÛ 
$str
ÛÛ )
)
ÛÛ) *
;
ÛÛ* +
migrationBuilder
ıı 
.
ıı 
CreateIndex
ıı (
(
ıı( )
name
ˆˆ 
:
ˆˆ 
$str
ˆˆ %
,
ˆˆ% &
table
˜˜ 
:
˜˜ 
$str
˜˜ $
,
˜˜$ %
column
¯¯ 
:
¯¯ 
$str
¯¯ ,
,
¯¯, -
unique
˘˘ 
:
˘˘ 
true
˘˘ 
,
˘˘ 
filter
˙˙ 
:
˙˙ 
$str
˙˙ :
)
˙˙: ;
;
˙˙; <
migrationBuilder
¸¸ 
.
¸¸ 
CreateIndex
¸¸ (
(
¸¸( )
name
˝˝ 
:
˝˝ 
$str
˝˝ 4
,
˝˝4 5
table
˛˛ 
:
˛˛ 
$str
˛˛  
,
˛˛  !
column
ˇˇ 
:
ˇˇ 
$str
ˇˇ +
)
ˇˇ+ ,
;
ˇˇ, -
migrationBuilder
ÅÅ 
.
ÅÅ 
CreateIndex
ÅÅ (
(
ÅÅ( )
name
ÇÇ 
:
ÇÇ 
$str
ÇÇ (
,
ÇÇ( )
table
ÉÉ 
:
ÉÉ 
$str
ÉÉ  
,
ÉÉ  !
column
ÑÑ 
:
ÑÑ 
$str
ÑÑ 
)
ÑÑ  
;
ÑÑ  !
migrationBuilder
ÜÜ 
.
ÜÜ 
CreateIndex
ÜÜ (
(
ÜÜ( )
name
áá 
:
áá 
$str
áá 0
,
áá0 1
table
àà 
:
àà 
$str
àà 
,
àà 
column
ââ 
:
ââ 
$str
ââ +
)
ââ+ ,
;
ââ, -
}
ää 	
	protected
åå 
override
åå 
void
åå 
Down
åå  $
(
åå$ %
MigrationBuilder
åå% 5
migrationBuilder
åå6 F
)
ååF G
{
çç 	
migrationBuilder
éé 
.
éé 
	DropTable
éé &
(
éé& '
name
èè 
:
èè 
$str
èè (
)
èè( )
;
èè) *
migrationBuilder
ëë 
.
ëë 
	DropTable
ëë &
(
ëë& '
name
íí 
:
íí 
$str
íí (
)
íí( )
;
íí) *
migrationBuilder
îî 
.
îî 
	DropTable
îî &
(
îî& '
name
ïï 
:
ïï 
$str
ïï (
)
ïï( )
;
ïï) *
migrationBuilder
óó 
.
óó 
	DropTable
óó &
(
óó& '
name
òò 
:
òò 
$str
òò '
)
òò' (
;
òò( )
migrationBuilder
öö 
.
öö 
	DropTable
öö &
(
öö& '
name
õõ 
:
õõ 
$str
õõ (
)
õõ( )
;
õõ) *
migrationBuilder
ùù 
.
ùù 
	DropTable
ùù &
(
ùù& '
name
ûû 
:
ûû 
$str
ûû 
)
ûû  
;
ûû  !
migrationBuilder
†† 
.
†† 
	DropTable
†† &
(
††& '
name
°° 
:
°° 
$str
°° #
)
°°# $
;
°°$ %
migrationBuilder
££ 
.
££ 
	DropTable
££ &
(
££& '
name
§§ 
:
§§ 
$str
§§ 
)
§§ 
;
§§ 
migrationBuilder
¶¶ 
.
¶¶ 
	DropTable
¶¶ &
(
¶¶& '
name
ßß 
:
ßß 
$str
ßß #
)
ßß# $
;
ßß$ %
}
®® 	
}
©© 
}™™ È
\C:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Models\Comment.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Models! '
{ 
public 

class 
Comment 
{ 
public		 
string		 
Id		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
public

 
string

 
Message

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
String 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
public 
String 
CoordinatesLong %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
String 
CoordinatesLat $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 

Created_at #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
? 

Updated_at #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	

ForeignKey	 
( 
$str %
)% &
]& '
public 
string 
ApplicationUserId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
ApplicationUser 
ApplicationUser .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
string 
PetId 
{ 
get !
;! "
set# &
;& '
}( )
public 
Pet 
Pet 
{ 
get 
; 
set !
;! "
}# $
} 
} ª
cC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Models\ErrorViewModel.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Models! '
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
bool		 
ShowRequestId		 !
=>		" $
!		% &
string		& ,
.		, -
IsNullOrEmpty		- :
(		: ;
	RequestId		; D
)		D E
;		E F
}

 
} Î
XC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Models\Pet.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Models! '
{		 
public

 

class

 
Pet

 
{ 
public 
Pet 
( 
) 
{ 	
this 
. 
Comments 
= 
new 
HashSet  '
<' (
Comment( /
>/ 0
(0 1
)1 2
;2 3
} 	
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
String 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
String 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
String 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
public 
String 
CoordinatesLong %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
String 
CoordinatesLat $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 

Created_at #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
? 

Updated_at #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	

ForeignKey	 
( 
$str %
)% &
]& '
public 
string 
ApplicationUserId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
ApplicationUser 
ApplicationUser .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
ICollection 
< 
Comment "
>" #
Comments$ ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
}   °
UC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Program.cs
	namespace

 	"
Where_is_my_Fluffymoon


  
{ 
public 

class 
Program 
{ 
	protected 
Program 
( 
) 
{ 	
} 	
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} Á
UC:\Users\Subaru\source\repos\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Startup.cs
	namespace		 	"
Where_is_my_Fluffymoon		
  
{

 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. #
AddControllersWithViews ,
(, -
)- .
;. /
services 
. 
AddRazorPages "
(" #
)# $
;$ %
services 
. 
AddDbContext !
<! "
AppDbContext" .
>. /
(/ 0
options0 7
=>8 :
options 
. 
UseSqlServer (
(( )
Configuration) 6
.6 7
GetConnectionString7 J
(J K
$strK c
)c d
)d e
)e f
;f g
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IWebHostEnvironment7 J
envK N
)N O
{   	
if!! 
(!! 
env!! 
.!! 
IsDevelopment!! !
(!!! "
)!!" #
)!!# $
{"" 
app## 
.## %
UseDeveloperExceptionPage## -
(##- .
)##. /
;##/ 0
}$$ 
else%% 
{&& 
app'' 
.'' 
UseExceptionHandler'' '
(''' (
$str''( 5
)''5 6
;''6 7
app)) 
.)) 
UseHsts)) 
()) 
))) 
;)) 
}** 
app++ 
.++ 
UseHttpsRedirection++ #
(++# $
)++$ %
;++% &
app,, 
.,, 
UseStaticFiles,, 
(,, 
),,  
;,,  !
app.. 
... 

UseRouting.. 
(.. 
).. 
;.. 
app00 
.00 
UseAuthentication00 !
(00! "
)00" #
;00# $
app11 
.11 
UseAuthorization11  
(11  !
)11! "
;11" #
app33 
.33 
UseEndpoints33 
(33 
	endpoints33 &
=>33' )
{44 
	endpoints55 
.55 
MapControllerRoute55 ,
(55, -
name66 
:66 
$str66 #
,66# $
pattern77 
:77 
$str77 E
)77E F
;77F G
	endpoints88 
.88 
MapRazorPages88 '
(88' (
)88( )
;88) *
}99 
)99 
;99 
}:: 	
};; 
}<< 