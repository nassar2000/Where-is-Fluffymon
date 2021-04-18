à

cD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\Data\AppDbContext.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Data! %
{ 
public 

class 
AppDbContext 
: 
IdentityDbContext  1
<1 2
ApplicationUser2 A
>A B
{ 
public 
AppDbContext 
( 
DbContextOptions ,
<, -
AppDbContext- 9
>9 :
options; B
)B C
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< "
Where_is_my_Fluffymoon +
.+ ,
Models, 2
.2 3
Pet3 6
>6 7
Pet8 ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
DbSet 
< "
Where_is_my_Fluffymoon +
.+ ,
Models, 2
.2 3
Comment3 :
>: ;
Comment< C
{D E
getF I
;I J
setK N
;N O
}P Q
} 
} Ç
fD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\Data\ApplicationUser.cs
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
}   ¥
hD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\IdentityHostingStartup.cs
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
} ÷?
lD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Areas! &
.& '
Identity' /
./ 0
Pages0 5
.5 6
Account6 =
{ 
[ 
AllowAnonymous 
] 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 

LoginModel 
( 
SignInManager '
<' (
ApplicationUser( 7
>7 8
signInManager9 F
,F G
ILogger 
< 

LoginModel 
> 
logger  &
,& '
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
)4 5
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
}   	
["" 	
BindProperty""	 
]"" 
public## 

InputModel## 
Input## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
public%% 
IList%% 
<%%  
AuthenticationScheme%% )
>%%) *
ExternalLogins%%+ 9
{%%: ;
get%%< ?
;%%? @
set%%A D
;%%D E
}%%F G
public'' 
string'' 
	ReturnUrl'' 
{''  !
get''" %
;''% &
set''' *
;''* +
}'', -
[)) 	
TempData))	 
])) 
public** 
string** 
ErrorMessage** "
{**# $
get**% (
;**( )
set*** -
;**- .
}**/ 0
public,, 
class,, 

InputModel,, 
{-- 	
[.. 
Required.. 
].. 
[// 
EmailAddress// 
]// 
public00 
string00 
Email00 
{00  !
get00" %
;00% &
set00' *
;00* +
}00, -
[22 
Required22 
]22 
[33 
DataType33 
(33 
DataType33 
.33 
Password33 '
)33' (
]33( )
public44 
string44 
Password44 "
{44# $
get44% (
;44( )
set44* -
;44- .
}44/ 0
[66 
Display66 
(66 
Name66 
=66 
$str66 *
)66* +
]66+ ,
public77 
bool77 

RememberMe77 "
{77# $
get77% (
;77( )
set77* -
;77- .
}77/ 0
}88 	
public:: 
async:: 
Task:: 

OnGetAsync:: $
(::$ %
string::% +
	returnUrl::, 5
=::6 7
null::8 <
)::< =
{;; 	
if<< 
(<< 
User<< 
.<< 
Identity<< 
.<< 
IsAuthenticated<< -
)<<- .
{== 
Response>> 
.>> 
Redirect>> !
(>>! "
$str>>" %
)>>% &
;>>& '
}?? 
ifAA 
(AA 
!AA 
stringAA 
.AA 
IsNullOrEmptyAA %
(AA% &
ErrorMessageAA& 2
)AA2 3
)AA3 4
{BB 

ModelStateCC 
.CC 
AddModelErrorCC (
(CC( )
stringCC) /
.CC/ 0
EmptyCC0 5
,CC5 6
ErrorMessageCC7 C
)CCC D
;CCD E
}DD 
	returnUrlFF 
??=FF 
UrlFF 
.FF 
ContentFF %
(FF% &
$strFF& *
)FF* +
;FF+ ,
awaitII 
HttpContextII 
.II 
SignOutAsyncII *
(II* +
IdentityConstantsII+ <
.II< =
ExternalSchemeII= K
)IIK L
;IIL M
ExternalLoginsKK 
=KK 
(KK 
awaitKK #
_signInManagerKK$ 2
.KK2 31
%GetExternalAuthenticationSchemesAsyncKK3 X
(KKX Y
)KKY Z
)KKZ [
.KK[ \
ToListKK\ b
(KKb c
)KKc d
;KKd e
	ReturnUrlMM 
=MM 
	returnUrlMM !
;MM! "
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (
OnPostAsyncPP) 4
(PP4 5
stringPP5 ;
	returnUrlPP< E
=PPF G
nullPPH L
)PPL M
{QQ 	
	returnUrlRR 
??=RR 
UrlRR 
.RR 
ContentRR %
(RR% &
$strRR& *
)RR* +
;RR+ ,
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
;TTd e
ifVV 
(VV 

ModelStateVV 
.VV 
IsValidVV "
)VV" #
{WW 
varZZ 
resultZZ 
=ZZ 
awaitZZ "
_signInManagerZZ# 1
.ZZ1 2
PasswordSignInAsyncZZ2 E
(ZZE F
InputZZF K
.ZZK L
EmailZZL Q
,ZZQ R
InputZZS X
.ZZX Y
PasswordZZY a
,ZZa b
InputZZc h
.ZZh i

RememberMeZZi s
,ZZs t
lockoutOnFailure	ZZu Ö
:
ZZÖ Ü
false
ZZá å
)
ZZå ç
;
ZZç é
if[[ 
([[ 
result[[ 
.[[ 
	Succeeded[[ $
)[[$ %
{\\ 
_logger]] 
.]] 
LogInformation]] *
(]]* +
$str]]+ <
)]]< =
;]]= >
return^^ 
LocalRedirect^^ (
(^^( )
	returnUrl^^) 2
)^^2 3
;^^3 4
}__ 
if`` 
(`` 
result`` 
.`` 
RequiresTwoFactor`` ,
)``, -
{aa 
returnbb 
RedirectToPagebb )
(bb) *
$strbb* :
,bb: ;
newbb< ?
{bb@ A
	ReturnUrlbbB K
=bbL M
	returnUrlbbN W
,bbW X

RememberMebbY c
=bbd e
Inputbbf k
.bbk l

RememberMebbl v
}bbw x
)bbx y
;bby z
}cc 
ifdd 
(dd 
resultdd 
.dd 
IsLockedOutdd &
)dd& '
{ee 
_loggerff 
.ff 

LogWarningff &
(ff& '
$strff' A
)ffA B
;ffB C
returngg 
RedirectToPagegg )
(gg) *
$strgg* 5
)gg5 6
;gg6 7
}hh 
elseii 
{jj 

ModelStatekk 
.kk 
AddModelErrorkk ,
(kk, -
stringkk- 3
.kk3 4
Emptykk4 9
,kk9 :
$strkk; S
)kkS T
;kkT U
returnll 
Pagell 
(ll  
)ll  !
;ll! "
}mm 
}nn 
returnqq 
Pageqq 
(qq 
)qq 
;qq 
}rr 	
}ss 
}tt ¡Y
oD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Areas\Identity\Pages\Account\Register.cshtml.cs
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
}ÇÇ Ùl
aD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Controllers\CommentsController.cs
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
class 
CommentsController #
:$ %

Controller& 0
{ 
private 
readonly 
AppDbContext %
_context& .
;. /
public 
CommentsController !
(! "
AppDbContext" .
context/ 6
)6 7
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
appDbContext 
= 
_context '
.' (
Comment( /
./ 0
Include0 7
(7 8
c8 9
=>: <
c= >
.> ?
ApplicationUser? N
)N O
.O P
IncludeP W
(W X
cX Y
=>Z \
c] ^
.^ _
Pet_ b
)b c
;c d
return 
View 
( 
await 
appDbContext *
.* +
ToListAsync+ 6
(6 7
)7 8
)8 9
;9 :
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
int1 4
?4 5
id6 8
)8 9
{ 	
if 
( 
id 
== 
null 
) 
{   
return!! 
NotFound!! 
(!!  
)!!  !
;!!! "
}"" 
var$$ 
comment$$ 
=$$ 
await$$ 
_context$$  (
.$$( )
Comment$$) 0
.%% 
Include%% 
(%% 
c%% 
=>%% 
c%% 
.%%  
ApplicationUser%%  /
)%%/ 0
.&& 
Include&& 
(&& 
c&& 
=>&& 
c&& 
.&&  
Pet&&  #
)&&# $
.'' 
FirstOrDefaultAsync'' $
(''$ %
m''% &
=>''' )
m''* +
.''+ ,
Id'', .
==''/ 1
id''2 4
)''4 5
;''5 6
if(( 
((( 
comment(( 
==(( 
null(( 
)((  
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return-- 
View-- 
(-- 
comment-- 
)--  
;--  !
}.. 	
public11 
IActionResult11 
Create11 #
(11# $
)11$ %
{22 	
ViewData33 
[33 
$str33 (
]33( )
=33* +
new33, /

SelectList330 :
(33: ;
_context33; C
.33C D
Set33D G
<33G H
ApplicationUser33H W
>33W X
(33X Y
)33Y Z
,33Z [
$str33\ `
,33` a
$str33b f
)33f g
;33g h
ViewData44 
[44 
$str44 
]44 
=44 
new44  #

SelectList44$ .
(44. /
_context44/ 7
.447 8
Set448 ;
<44; <
Pet44< ?
>44? @
(44@ A
)44A B
,44B C
$str44D H
,44H I
$str44J N
)44N O
;44O P
return55 
View55 
(55 
)55 
;55 
}66 	
[;; 	
HttpPost;;	 
];; 
[<< 	$
ValidateAntiForgeryToken<<	 !
]<<! "
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
Create==) /
(==/ 0
[==0 1
Bind==1 5
(==5 6
$str	==6 ô
)
==ô ö
]
==ö õ
Comment
==ú £
comment
==§ ´
)
==´ ¨
{>> 	
if?? 
(?? 

ModelState?? 
.?? 
IsValid?? "
)??" #
{@@ 
_contextAA 
.AA 
AddAA 
(AA 
commentAA $
)AA$ %
;AA% &
awaitBB 
_contextBB 
.BB 
SaveChangesAsyncBB /
(BB/ 0
)BB0 1
;BB1 2
returnCC 
RedirectToActionCC '
(CC' (
nameofCC( .
(CC. /
IndexCC/ 4
)CC4 5
)CC5 6
;CC6 7
}DD 
ViewDataEE 
[EE 
$strEE (
]EE( )
=EE* +
newEE, /

SelectListEE0 :
(EE: ;
_contextEE; C
.EEC D
SetEED G
<EEG H
ApplicationUserEEH W
>EEW X
(EEX Y
)EEY Z
,EEZ [
$strEE\ `
,EE` a
$strEEb f
,EEf g
commentEEh o
.EEo p
ApplicationUserId	EEp Å
)
EEÅ Ç
;
EEÇ É
ViewDataFF 
[FF 
$strFF 
]FF 
=FF 
newFF  #

SelectListFF$ .
(FF. /
_contextFF/ 7
.FF7 8
SetFF8 ;
<FF; <
PetFF< ?
>FF? @
(FF@ A
)FFA B
,FFB C
$strFFD H
,FFH I
$strFFJ N
,FFN O
commentFFP W
.FFW X
PetIdFFX ]
)FF] ^
;FF^ _
returnGG 
ViewGG 
(GG 
commentGG 
)GG  
;GG  !
}HH 	
publicKK 
asyncKK 
TaskKK 
<KK 
IActionResultKK '
>KK' (
EditKK) -
(KK- .
intKK. 1
?KK1 2
idKK3 5
)KK5 6
{LL 	
ifMM 
(MM 
idMM 
==MM 
nullMM 
)MM 
{NN 
returnOO 
NotFoundOO 
(OO  
)OO  !
;OO! "
}PP 
varRR 
commentRR 
=RR 
awaitRR 
_contextRR  (
.RR( )
CommentRR) 0
.RR0 1
	FindAsyncRR1 :
(RR: ;
idRR; =
)RR= >
;RR> ?
ifSS 
(SS 
commentSS 
==SS 
nullSS 
)SS  
{TT 
returnUU 
NotFoundUU 
(UU  
)UU  !
;UU! "
}VV 
ViewDataWW 
[WW 
$strWW (
]WW( )
=WW* +
newWW, /

SelectListWW0 :
(WW: ;
_contextWW; C
.WWC D
SetWWD G
<WWG H
ApplicationUserWWH W
>WWW X
(WWX Y
)WWY Z
,WWZ [
$strWW\ `
,WW` a
$strWWb f
,WWf g
commentWWh o
.WWo p
ApplicationUserId	WWp Å
)
WWÅ Ç
;
WWÇ É
ViewDataXX 
[XX 
$strXX 
]XX 
=XX 
newXX  #

SelectListXX$ .
(XX. /
_contextXX/ 7
.XX7 8
SetXX8 ;
<XX; <
PetXX< ?
>XX? @
(XX@ A
)XXA B
,XXB C
$strXXD H
,XXH I
$strXXJ N
,XXN O
commentXXP W
.XXW X
PetIdXXX ]
)XX] ^
;XX^ _
returnYY 
ViewYY 
(YY 
commentYY 
)YY  
;YY  !
}ZZ 	
[__ 	
HttpPost__	 
]__ 
[`` 	$
ValidateAntiForgeryToken``	 !
]``! "
publicaa 
asyncaa 
Taskaa 
<aa 
IActionResultaa '
>aa' (
Editaa) -
(aa- .
intaa. 1
idaa2 4
,aa4 5
[aa6 7
Bindaa7 ;
(aa; <
$str	aa< ü
)
aaü †
]
aa† °
Comment
aa¢ ©
comment
aa™ ±
)
aa± ≤
{bb 	
ifcc 
(cc 
idcc 
!=cc 
commentcc 
.cc 
Idcc  
)cc  !
{dd 
returnee 
NotFoundee 
(ee  
)ee  !
;ee! "
}ff 
ifhh 
(hh 

ModelStatehh 
.hh 
IsValidhh "
)hh" #
{ii 
tryjj 
{kk 
_contextll 
.ll 
Updatell #
(ll# $
commentll$ +
)ll+ ,
;ll, -
awaitmm 
_contextmm "
.mm" #
SaveChangesAsyncmm# 3
(mm3 4
)mm4 5
;mm5 6
}nn 
catchoo 
(oo (
DbUpdateConcurrencyExceptionoo 3
)oo3 4
{pp 
ifqq 
(qq 
!qq 
CommentExistsqq &
(qq& '
commentqq' .
.qq. /
Idqq/ 1
)qq1 2
)qq2 3
{rr 
returnss 
NotFoundss '
(ss' (
)ss( )
;ss) *
}tt 
elseuu 
{vv 
throwww 
;ww 
}xx 
}yy 
returnzz 
RedirectToActionzz '
(zz' (
nameofzz( .
(zz. /
Indexzz/ 4
)zz4 5
)zz5 6
;zz6 7
}{{ 
ViewData|| 
[|| 
$str|| (
]||( )
=||* +
new||, /

SelectList||0 :
(||: ;
_context||; C
.||C D
Set||D G
<||G H
ApplicationUser||H W
>||W X
(||X Y
)||Y Z
,||Z [
$str||\ `
,||` a
$str||b f
,||f g
comment||h o
.||o p
ApplicationUserId	||p Å
)
||Å Ç
;
||Ç É
ViewData}} 
[}} 
$str}} 
]}} 
=}} 
new}}  #

SelectList}}$ .
(}}. /
_context}}/ 7
.}}7 8
Set}}8 ;
<}}; <
Pet}}< ?
>}}? @
(}}@ A
)}}A B
,}}B C
$str}}D H
,}}H I
$str}}J N
,}}N O
comment}}P W
.}}W X
PetId}}X ]
)}}] ^
;}}^ _
return~~ 
View~~ 
(~~ 
comment~~ 
)~~  
;~~  !
} 	
public
ÇÇ 
async
ÇÇ 
Task
ÇÇ 
<
ÇÇ 
IActionResult
ÇÇ '
>
ÇÇ' (
Delete
ÇÇ) /
(
ÇÇ/ 0
int
ÇÇ0 3
?
ÇÇ3 4
id
ÇÇ5 7
)
ÇÇ7 8
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
id
ÑÑ 
==
ÑÑ 
null
ÑÑ 
)
ÑÑ 
{
ÖÖ 
return
ÜÜ 
NotFound
ÜÜ 
(
ÜÜ  
)
ÜÜ  !
;
ÜÜ! "
}
áá 
var
ââ 
comment
ââ 
=
ââ 
await
ââ 
_context
ââ  (
.
ââ( )
Comment
ââ) 0
.
ää 
Include
ää 
(
ää 
c
ää 
=>
ää 
c
ää 
.
ää  
ApplicationUser
ää  /
)
ää/ 0
.
ãã 
Include
ãã 
(
ãã 
c
ãã 
=>
ãã 
c
ãã 
.
ãã  
Pet
ãã  #
)
ãã# $
.
åå !
FirstOrDefaultAsync
åå $
(
åå$ %
m
åå% &
=>
åå' )
m
åå* +
.
åå+ ,
Id
åå, .
==
åå/ 1
id
åå2 4
)
åå4 5
;
åå5 6
if
çç 
(
çç 
comment
çç 
==
çç 
null
çç 
)
çç  
{
éé 
return
èè 
NotFound
èè 
(
èè  
)
èè  !
;
èè! "
}
êê 
return
íí 
View
íí 
(
íí 
comment
íí 
)
íí  
;
íí  !
}
ìì 	
[
ññ 	
HttpPost
ññ	 
,
ññ 

ActionName
ññ 
(
ññ 
$str
ññ &
)
ññ& '
]
ññ' (
[
óó 	&
ValidateAntiForgeryToken
óó	 !
]
óó! "
public
òò 
async
òò 
Task
òò 
<
òò 
IActionResult
òò '
>
òò' (
DeleteConfirmed
òò) 8
(
òò8 9
int
òò9 <
id
òò= ?
)
òò? @
{
ôô 	
var
öö 
comment
öö 
=
öö 
await
öö 
_context
öö  (
.
öö( )
Comment
öö) 0
.
öö0 1
	FindAsync
öö1 :
(
öö: ;
id
öö; =
)
öö= >
;
öö> ?
_context
õõ 
.
õõ 
Comment
õõ 
.
õõ 
Remove
õõ #
(
õõ# $
comment
õõ$ +
)
õõ+ ,
;
õõ, -
await
úú 
_context
úú 
.
úú 
SaveChangesAsync
úú +
(
úú+ ,
)
úú, -
;
úú- .
return
ùù 
RedirectToAction
ùù #
(
ùù# $
nameof
ùù$ *
(
ùù* +
Index
ùù+ 0
)
ùù0 1
)
ùù1 2
;
ùù2 3
}
ûû 	
private
†† 
bool
†† 
CommentExists
†† "
(
††" #
int
††# &
id
††' )
)
††) *
{
°° 	
return
¢¢ 
_context
¢¢ 
.
¢¢ 
Comment
¢¢ #
.
¢¢# $
Any
¢¢$ '
(
¢¢' (
e
¢¢( )
=>
¢¢* ,
e
¢¢- .
.
¢¢. /
Id
¢¢/ 1
==
¢¢2 4
id
¢¢5 7
)
¢¢7 8
;
¢¢8 9
}
££ 	
}
§§ 
}•• Ã
]D:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Controllers\HomeController.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Controllers! ,
{ 
[ 
	Authorize 
] 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private 
readonly 
ILogger  
<  !
HomeController! /
>/ 0
_logger1 8
;8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Pets !
(! "
)" #
{ 	
return 
Redirect 
( 
$str #
)# $
;$ %
} 	
[!! 	
ResponseCache!!	 
(!! 
Duration!! 
=!!  !
$num!!" #
,!!# $
Location!!% -
=!!. /!
ResponseCacheLocation!!0 E
.!!E F
None!!F J
,!!J K
NoStore!!L S
=!!T U
true!!V Z
)!!Z [
]!![ \
public"" 
IActionResult"" 
Error"" "
(""" #
)""# $
{## 	
return$$ 
View$$ 
($$ 
new$$ 
ErrorViewModel$$ *
{$$+ ,
	RequestId$$- 6
=$$7 8
Activity$$9 A
.$$A B
Current$$B I
?$$I J
.$$J K
Id$$K M
??$$N P
HttpContext$$Q \
.$$\ ]
TraceIdentifier$$] l
}$$m n
)$$n o
;$$o p
}%% 	
}&& 
}'' ã[
]D:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Controllers\PetsController.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !
Views! &
{ 
public 

class 
PetsController 
:  !

Controller" ,
{ 
private 
readonly 
AppDbContext %
_context& .
;. /
public 
PetsController 
( 
AppDbContext *
context+ 2
)2 3
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
var 
appDbContext 
= 
_context '
.' (
Pet( +
.+ ,
Include, 3
(3 4
p4 5
=>6 8
p9 :
.: ;
ApplicationUser; J
)J K
;K L
return 
View 
( 
await 
appDbContext *
.* +
ToListAsync+ 6
(6 7
)7 8
)8 9
;9 :
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
int1 4
?4 5
id6 8
)8 9
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
var&& 
pet&& 
=&& 
await&& 
_context&& $
.&&$ %
Pet&&% (
.'' 
Include'' 
('' 
p'' 
=>'' 
p'' 
.''  
ApplicationUser''  /
)''/ 0
.(( 
FirstOrDefaultAsync(( $
((($ %
m((% &
=>((' )
m((* +
.((+ ,
Id((, .
==((/ 1
id((2 4
)((4 5
;((5 6
if)) 
()) 
pet)) 
==)) 
null)) 
))) 
{** 
return++ 
NotFound++ 
(++  
)++  !
;++! "
},, 
return.. 
View.. 
(.. 
pet.. 
).. 
;.. 
}// 	
public22 
IActionResult22 
Create22 #
(22# $
)22$ %
{33 	
ViewData44 
[44 
$str44 (
]44( )
=44* +
new44, /

SelectList440 :
(44: ;
_context44; C
.44C D
Set44D G
<44G H
ApplicationUser44H W
>44W X
(44X Y
)44Y Z
,44Z [
$str44\ `
,44` a
$str44b f
)44f g
;44g h
return55 
View55 
(55 
)55 
;55 
}66 	
[;; 	
HttpPost;;	 
];; 
[<< 	$
ValidateAntiForgeryToken<<	 !
]<<! "
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
Create==) /
(==/ 0
[==0 1
Bind==1 5
(==5 6
$str	==6 ú
)
==ú ù
]
==ù û
Pet
==ü ¢
pet
==£ ¶
)
==¶ ß
{>> 	
if?? 
(?? 

ModelState?? 
.?? 
IsValid?? "
)??" #
{@@ 
_contextAA 
.AA 
AddAA 
(AA 
petAA  
)AA  !
;AA! "
awaitBB 
_contextBB 
.BB 
SaveChangesAsyncBB /
(BB/ 0
)BB0 1
;BB1 2
returnCC 
RedirectToActionCC '
(CC' (
nameofCC( .
(CC. /
IndexCC/ 4
)CC4 5
)CC5 6
;CC6 7
}DD 
ViewDataEE 
[EE 
$strEE (
]EE( )
=EE* +
newEE, /

SelectListEE0 :
(EE: ;
_contextEE; C
.EEC D
SetEED G
<EEG H
ApplicationUserEEH W
>EEW X
(EEX Y
)EEY Z
,EEZ [
$strEE\ `
,EE` a
$strEEb f
,EEf g
petEEh k
.EEk l
ApplicationUserIdEEl }
)EE} ~
;EE~ 
returnFF 
ViewFF 
(FF 
petFF 
)FF 
;FF 
}GG 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (
EditJJ) -
(JJ- .
intJJ. 1
?JJ1 2
idJJ3 5
)JJ5 6
{KK 	
ifLL 
(LL 
idLL 
==LL 
nullLL 
)LL 
{MM 
returnNN 
NotFoundNN 
(NN  
)NN  !
;NN! "
}OO 
varQQ 
petQQ 
=QQ 
awaitQQ 
_contextQQ $
.QQ$ %
PetQQ% (
.QQ( )
	FindAsyncQQ) 2
(QQ2 3
idQQ3 5
)QQ5 6
;QQ6 7
ifRR 
(RR 
petRR 
==RR 
nullRR 
)RR 
{SS 
returnTT 
NotFoundTT 
(TT  
)TT  !
;TT! "
}UU 
ViewDataVV 
[VV 
$strVV (
]VV( )
=VV* +
newVV, /

SelectListVV0 :
(VV: ;
_contextVV; C
.VVC D
SetVVD G
<VVG H
ApplicationUserVVH W
>VVW X
(VVX Y
)VVY Z
,VVZ [
$strVV\ `
,VV` a
$strVVb f
,VVf g
petVVh k
.VVk l
ApplicationUserIdVVl }
)VV} ~
;VV~ 
returnWW 
ViewWW 
(WW 
petWW 
)WW 
;WW 
}XX 	
[]] 	
HttpPost]]	 
]]] 
[^^ 	$
ValidateAntiForgeryToken^^	 !
]^^! "
public__ 
async__ 
Task__ 
<__ 
IActionResult__ '
>__' (
Edit__) -
(__- .
int__. 1
id__2 4
,__4 5
[__6 7
Bind__7 ;
(__; <
$str	__< ¢
)
__¢ £
]
__£ §
Pet
__• ®
pet
__© ¨
)
__¨ ≠
{`` 	
ifaa 
(aa 
idaa 
!=aa 
petaa 
.aa 
Idaa 
)aa 
{bb 
returncc 
NotFoundcc 
(cc  
)cc  !
;cc! "
}dd 
ifff 
(ff 

ModelStateff 
.ff 
IsValidff "
)ff" #
{gg 
tryhh 
{ii 
_contextjj 
.jj 
Updatejj #
(jj# $
petjj$ '
)jj' (
;jj( )
awaitkk 
_contextkk "
.kk" #
SaveChangesAsynckk# 3
(kk3 4
)kk4 5
;kk5 6
}ll 
catchmm 
(mm (
DbUpdateConcurrencyExceptionmm 3
)mm3 4
{nn 
ifoo 
(oo 
!oo 
	PetExistsoo "
(oo" #
petoo# &
.oo& '
Idoo' )
)oo) *
)oo* +
{pp 
returnqq 
NotFoundqq '
(qq' (
)qq( )
;qq) *
}rr 
elsess 
{tt 
throwuu 
;uu 
}vv 
}ww 
returnxx 
RedirectToActionxx '
(xx' (
nameofxx( .
(xx. /
Indexxx/ 4
)xx4 5
)xx5 6
;xx6 7
}yy 
ViewDatazz 
[zz 
$strzz (
]zz( )
=zz* +
newzz, /

SelectListzz0 :
(zz: ;
_contextzz; C
.zzC D
SetzzD G
<zzG H
ApplicationUserzzH W
>zzW X
(zzX Y
)zzY Z
,zzZ [
$strzz\ `
,zz` a
$strzzb f
,zzf g
petzzh k
.zzk l
ApplicationUserIdzzl }
)zz} ~
;zz~ 
return{{ 
View{{ 
({{ 
pet{{ 
){{ 
;{{ 
}|| 	
public 
async 
Task 
< 
IActionResult '
>' (
Delete) /
(/ 0
int0 3
?3 4
id5 7
)7 8
{
ÄÄ 	
if
ÅÅ 
(
ÅÅ 
id
ÅÅ 
==
ÅÅ 
null
ÅÅ 
)
ÅÅ 
{
ÇÇ 
return
ÉÉ 
NotFound
ÉÉ 
(
ÉÉ  
)
ÉÉ  !
;
ÉÉ! "
}
ÑÑ 
var
ÜÜ 
pet
ÜÜ 
=
ÜÜ 
await
ÜÜ 
_context
ÜÜ $
.
ÜÜ$ %
Pet
ÜÜ% (
.
áá 
Include
áá 
(
áá 
p
áá 
=>
áá 
p
áá 
.
áá  
ApplicationUser
áá  /
)
áá/ 0
.
àà !
FirstOrDefaultAsync
àà $
(
àà$ %
m
àà% &
=>
àà' )
m
àà* +
.
àà+ ,
Id
àà, .
==
àà/ 1
id
àà2 4
)
àà4 5
;
àà5 6
if
ââ 
(
ââ 
pet
ââ 
==
ââ 
null
ââ 
)
ââ 
{
ää 
return
ãã 
NotFound
ãã 
(
ãã  
)
ãã  !
;
ãã! "
}
åå 
return
éé 
View
éé 
(
éé 
pet
éé 
)
éé 
;
éé 
}
èè 	
[
íí 	
HttpPost
íí	 
,
íí 

ActionName
íí 
(
íí 
$str
íí &
)
íí& '
]
íí' (
[
ìì 	&
ValidateAntiForgeryToken
ìì	 !
]
ìì! "
public
îî 
async
îî 
Task
îî 
<
îî 
IActionResult
îî '
>
îî' (
DeleteConfirmed
îî) 8
(
îî8 9
int
îî9 <
id
îî= ?
)
îî? @
{
ïï 	
var
ññ 
pet
ññ 
=
ññ 
await
ññ 
_context
ññ $
.
ññ$ %
Pet
ññ% (
.
ññ( )
	FindAsync
ññ) 2
(
ññ2 3
id
ññ3 5
)
ññ5 6
;
ññ6 7
_context
óó 
.
óó 
Pet
óó 
.
óó 
Remove
óó 
(
óó  
pet
óó  #
)
óó# $
;
óó$ %
await
òò 
_context
òò 
.
òò 
SaveChangesAsync
òò +
(
òò+ ,
)
òò, -
;
òò- .
return
ôô 
RedirectToAction
ôô #
(
ôô# $
nameof
ôô$ *
(
ôô* +
Index
ôô+ 0
)
ôô0 1
)
ôô1 2
;
ôô2 3
}
öö 	
private
úú 
bool
úú 
	PetExists
úú 
(
úú 
int
úú "
id
úú# %
)
úú% &
{
ùù 	
return
ûû 
_context
ûû 
.
ûû 
Pet
ûû 
.
ûû  
Any
ûû  #
(
ûû# $
e
ûû$ %
=>
ûû& (
e
ûû) *
.
ûû* +
Id
ûû+ -
==
ûû. 0
id
ûû1 3
)
ûû3 4
;
ûû4 5
}
üü 	
}
†† 
}°° ‹£
kD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Migrations\20210418090546_Initial-Create.cs
	namespace 	"
Where_is_my_Fluffymoon
  
.  !

Migrations! +
{ 
public 

partial 
class 
InitialCreate &
:' (
	Migration) 2
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
°°% &
int
°°& )
>
°°) *
(
°°* +
type
°°+ /
:
°°/ 0
$str
°°1 6
,
°°6 7
nullable
°°8 @
:
°°@ A
false
°°B G
)
°°G H
.
¢¢ 

Annotation
¢¢ #
(
¢¢# $
$str
¢¢$ 8
,
¢¢8 9
$str
¢¢: @
)
¢¢@ A
,
¢¢A B
Name
££ 
=
££ 
table
££  
.
££  !
Column
££! '
<
££' (
string
££( .
>
££. /
(
££/ 0
type
££0 4
:
££4 5
$str
££6 E
,
££E F
nullable
££G O
:
££O P
true
££Q U
)
££U V
,
££V W
Description
§§ 
=
§§  !
table
§§" '
.
§§' (
Column
§§( .
<
§§. /
string
§§/ 5
>
§§5 6
(
§§6 7
type
§§7 ;
:
§§; <
$str
§§= L
,
§§L M
nullable
§§N V
:
§§V W
true
§§X \
)
§§\ ]
,
§§] ^
	ImagePath
•• 
=
•• 
table
••  %
.
••% &
Column
••& ,
<
••, -
string
••- 3
>
••3 4
(
••4 5
type
••5 9
:
••9 :
$str
••; J
,
••J K
nullable
••L T
:
••T U
true
••V Z
)
••Z [
,
••[ \
CoordinatesLong
¶¶ #
=
¶¶$ %
table
¶¶& +
.
¶¶+ ,
Column
¶¶, 2
<
¶¶2 3
string
¶¶3 9
>
¶¶9 :
(
¶¶: ;
type
¶¶; ?
:
¶¶? @
$str
¶¶A P
,
¶¶P Q
nullable
¶¶R Z
:
¶¶Z [
true
¶¶\ `
)
¶¶` a
,
¶¶a b
CoordinatesLat
ßß "
=
ßß# $
table
ßß% *
.
ßß* +
Column
ßß+ 1
<
ßß1 2
string
ßß2 8
>
ßß8 9
(
ßß9 :
type
ßß: >
:
ßß> ?
$str
ßß@ O
,
ßßO P
nullable
ßßQ Y
:
ßßY Z
true
ßß[ _
)
ßß_ `
,
ßß` a

Created_at
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
®®Z [

Updated_at
©© 
=
©©  
table
©©! &
.
©©& '
Column
©©' -
<
©©- .
DateTime
©©. 6
>
©©6 7
(
©©7 8
type
©©8 <
:
©©< =
$str
©©> I
,
©©I J
nullable
©©K S
:
©©S T
true
©©U Y
)
©©Y Z
,
©©Z [
ApplicationUserId
™™ %
=
™™& '
table
™™( -
.
™™- .
Column
™™. 4
<
™™4 5
string
™™5 ;
>
™™; <
(
™™< =
type
™™= A
:
™™A B
$str
™™C R
,
™™R S
nullable
™™T \
:
™™\ ]
true
™™^ b
)
™™b c
}
´´ 
,
´´ 
constraints
¨¨ 
:
¨¨ 
table
¨¨ "
=>
¨¨# %
{
≠≠ 
table
ÆÆ 
.
ÆÆ 

PrimaryKey
ÆÆ $
(
ÆÆ$ %
$str
ÆÆ% -
,
ÆÆ- .
x
ÆÆ/ 0
=>
ÆÆ1 3
x
ÆÆ4 5
.
ÆÆ5 6
Id
ÆÆ6 8
)
ÆÆ8 9
;
ÆÆ9 :
table
ØØ 
.
ØØ 

ForeignKey
ØØ $
(
ØØ$ %
name
∞∞ 
:
∞∞ 
$str
∞∞ D
,
∞∞D E
column
±± 
:
±± 
x
±±  !
=>
±±" $
x
±±% &
.
±±& '
ApplicationUserId
±±' 8
,
±±8 9
principalTable
≤≤ &
:
≤≤& '
$str
≤≤( 5
,
≤≤5 6
principalColumn
≥≥ '
:
≥≥' (
$str
≥≥) -
,
≥≥- .
onDelete
¥¥  
:
¥¥  !
ReferentialAction
¥¥" 3
.
¥¥3 4
Restrict
¥¥4 <
)
¥¥< =
;
¥¥= >
}
µµ 
)
µµ 
;
µµ 
migrationBuilder
∑∑ 
.
∑∑ 
CreateTable
∑∑ (
(
∑∑( )
name
∏∏ 
:
∏∏ 
$str
∏∏ 
,
∏∏  
columns
ππ 
:
ππ 
table
ππ 
=>
ππ !
new
ππ" %
{
∫∫ 
Id
ªª 
=
ªª 
table
ªª 
.
ªª 
Column
ªª %
<
ªª% &
int
ªª& )
>
ªª) *
(
ªª* +
type
ªª+ /
:
ªª/ 0
$str
ªª1 6
,
ªª6 7
nullable
ªª8 @
:
ªª@ A
false
ªªB G
)
ªªG H
.
ºº 

Annotation
ºº #
(
ºº# $
$str
ºº$ 8
,
ºº8 9
$str
ºº: @
)
ºº@ A
,
ººA B
Message
ΩΩ 
=
ΩΩ 
table
ΩΩ #
.
ΩΩ# $
Column
ΩΩ$ *
<
ΩΩ* +
string
ΩΩ+ 1
>
ΩΩ1 2
(
ΩΩ2 3
type
ΩΩ3 7
:
ΩΩ7 8
$str
ΩΩ9 H
,
ΩΩH I
nullable
ΩΩJ R
:
ΩΩR S
true
ΩΩT X
)
ΩΩX Y
,
ΩΩY Z
	ImagePath
ææ 
=
ææ 
table
ææ  %
.
ææ% &
Column
ææ& ,
<
ææ, -
string
ææ- 3
>
ææ3 4
(
ææ4 5
type
ææ5 9
:
ææ9 :
$str
ææ; J
,
ææJ K
nullable
ææL T
:
ææT U
true
ææV Z
)
ææZ [
,
ææ[ \
CoordinatesLong
øø #
=
øø$ %
table
øø& +
.
øø+ ,
Column
øø, 2
<
øø2 3
string
øø3 9
>
øø9 :
(
øø: ;
type
øø; ?
:
øø? @
$str
øøA P
,
øøP Q
nullable
øøR Z
:
øøZ [
true
øø\ `
)
øø` a
,
øøa b
CoordinatesLat
¿¿ "
=
¿¿# $
table
¿¿% *
.
¿¿* +
Column
¿¿+ 1
<
¿¿1 2
string
¿¿2 8
>
¿¿8 9
(
¿¿9 :
type
¿¿: >
:
¿¿> ?
$str
¿¿@ O
,
¿¿O P
nullable
¿¿Q Y
:
¿¿Y Z
true
¿¿[ _
)
¿¿_ `
,
¿¿` a

Created_at
¡¡ 
=
¡¡  
table
¡¡! &
.
¡¡& '
Column
¡¡' -
<
¡¡- .
DateTime
¡¡. 6
>
¡¡6 7
(
¡¡7 8
type
¡¡8 <
:
¡¡< =
$str
¡¡> I
,
¡¡I J
nullable
¡¡K S
:
¡¡S T
true
¡¡U Y
)
¡¡Y Z
,
¡¡Z [

Updated_at
¬¬ 
=
¬¬  
table
¬¬! &
.
¬¬& '
Column
¬¬' -
<
¬¬- .
DateTime
¬¬. 6
>
¬¬6 7
(
¬¬7 8
type
¬¬8 <
:
¬¬< =
$str
¬¬> I
,
¬¬I J
nullable
¬¬K S
:
¬¬S T
true
¬¬U Y
)
¬¬Y Z
,
¬¬Z [
ApplicationUserId
√√ %
=
√√& '
table
√√( -
.
√√- .
Column
√√. 4
<
√√4 5
string
√√5 ;
>
√√; <
(
√√< =
type
√√= A
:
√√A B
$str
√√C R
,
√√R S
nullable
√√T \
:
√√\ ]
true
√√^ b
)
√√b c
,
√√c d
PetId
ƒƒ 
=
ƒƒ 
table
ƒƒ !
.
ƒƒ! "
Column
ƒƒ" (
<
ƒƒ( )
int
ƒƒ) ,
>
ƒƒ, -
(
ƒƒ- .
type
ƒƒ. 2
:
ƒƒ2 3
$str
ƒƒ4 9
,
ƒƒ9 :
nullable
ƒƒ; C
:
ƒƒC D
false
ƒƒE J
)
ƒƒJ K
}
≈≈ 
,
≈≈ 
constraints
∆∆ 
:
∆∆ 
table
∆∆ "
=>
∆∆# %
{
«« 
table
»» 
.
»» 

PrimaryKey
»» $
(
»»$ %
$str
»»% 1
,
»»1 2
x
»»3 4
=>
»»5 7
x
»»8 9
.
»»9 :
Id
»»: <
)
»»< =
;
»»= >
table
…… 
.
…… 

ForeignKey
…… $
(
……$ %
name
   
:
   
$str
   H
,
  H I
column
ÀÀ 
:
ÀÀ 
x
ÀÀ  !
=>
ÀÀ" $
x
ÀÀ% &
.
ÀÀ& '
ApplicationUserId
ÀÀ' 8
,
ÀÀ8 9
principalTable
ÃÃ &
:
ÃÃ& '
$str
ÃÃ( 5
,
ÃÃ5 6
principalColumn
ÕÕ '
:
ÕÕ' (
$str
ÕÕ) -
,
ÕÕ- .
onDelete
ŒŒ  
:
ŒŒ  !
ReferentialAction
ŒŒ" 3
.
ŒŒ3 4
Restrict
ŒŒ4 <
)
ŒŒ< =
;
ŒŒ= >
table
œœ 
.
œœ 

ForeignKey
œœ $
(
œœ$ %
name
–– 
:
–– 
$str
–– 4
,
––4 5
column
—— 
:
—— 
x
——  !
=>
——" $
x
——% &
.
——& '
PetId
——' ,
,
——, -
principalTable
““ &
:
““& '
$str
““( -
,
““- .
principalColumn
”” '
:
””' (
$str
””) -
,
””- .
onDelete
‘‘  
:
‘‘  !
ReferentialAction
‘‘" 3
.
‘‘3 4
Cascade
‘‘4 ;
)
‘‘; <
;
‘‘< =
}
’’ 
)
’’ 
;
’’ 
migrationBuilder
◊◊ 
.
◊◊ 
CreateIndex
◊◊ (
(
◊◊( )
name
ÿÿ 
:
ÿÿ 
$str
ÿÿ 2
,
ÿÿ2 3
table
ŸŸ 
:
ŸŸ 
$str
ŸŸ )
,
ŸŸ) *
column
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄  
)
⁄⁄  !
;
⁄⁄! "
migrationBuilder
‹‹ 
.
‹‹ 
CreateIndex
‹‹ (
(
‹‹( )
name
›› 
:
›› 
$str
›› %
,
››% &
table
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ $
,
ﬁﬁ$ %
column
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ (
,
ﬂﬂ( )
unique
‡‡ 
:
‡‡ 
true
‡‡ 
,
‡‡ 
filter
·· 
:
·· 
$str
·· 6
)
··6 7
;
··7 8
migrationBuilder
„„ 
.
„„ 
CreateIndex
„„ (
(
„„( )
name
‰‰ 
:
‰‰ 
$str
‰‰ 2
,
‰‰2 3
table
ÂÂ 
:
ÂÂ 
$str
ÂÂ )
,
ÂÂ) *
column
ÊÊ 
:
ÊÊ 
$str
ÊÊ  
)
ÊÊ  !
;
ÊÊ! "
migrationBuilder
ËË 
.
ËË 
CreateIndex
ËË (
(
ËË( )
name
ÈÈ 
:
ÈÈ 
$str
ÈÈ 2
,
ÈÈ2 3
table
ÍÍ 
:
ÍÍ 
$str
ÍÍ )
,
ÍÍ) *
column
ÎÎ 
:
ÎÎ 
$str
ÎÎ  
)
ÎÎ  !
;
ÎÎ! "
migrationBuilder
ÌÌ 
.
ÌÌ 
CreateIndex
ÌÌ (
(
ÌÌ( )
name
ÓÓ 
:
ÓÓ 
$str
ÓÓ 1
,
ÓÓ1 2
table
ÔÔ 
:
ÔÔ 
$str
ÔÔ (
,
ÔÔ( )
column
 
:
 
$str
  
)
  !
;
! "
migrationBuilder
ÚÚ 
.
ÚÚ 
CreateIndex
ÚÚ (
(
ÚÚ( )
name
ÛÛ 
:
ÛÛ 
$str
ÛÛ "
,
ÛÛ" #
table
ÙÙ 
:
ÙÙ 
$str
ÙÙ $
,
ÙÙ$ %
column
ıı 
:
ıı 
$str
ıı )
)
ıı) *
;
ıı* +
migrationBuilder
˜˜ 
.
˜˜ 
CreateIndex
˜˜ (
(
˜˜( )
name
¯¯ 
:
¯¯ 
$str
¯¯ %
,
¯¯% &
table
˘˘ 
:
˘˘ 
$str
˘˘ $
,
˘˘$ %
column
˙˙ 
:
˙˙ 
$str
˙˙ ,
,
˙˙, -
unique
˚˚ 
:
˚˚ 
true
˚˚ 
,
˚˚ 
filter
¸¸ 
:
¸¸ 
$str
¸¸ :
)
¸¸: ;
;
¸¸; <
migrationBuilder
˛˛ 
.
˛˛ 
CreateIndex
˛˛ (
(
˛˛( )
name
ˇˇ 
:
ˇˇ 
$str
ˇˇ 4
,
ˇˇ4 5
table
ÄÄ 
:
ÄÄ 
$str
ÄÄ  
,
ÄÄ  !
column
ÅÅ 
:
ÅÅ 
$str
ÅÅ +
)
ÅÅ+ ,
;
ÅÅ, -
migrationBuilder
ÉÉ 
.
ÉÉ 
CreateIndex
ÉÉ (
(
ÉÉ( )
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ (
,
ÑÑ( )
table
ÖÖ 
:
ÖÖ 
$str
ÖÖ  
,
ÖÖ  !
column
ÜÜ 
:
ÜÜ 
$str
ÜÜ 
)
ÜÜ  
;
ÜÜ  !
migrationBuilder
àà 
.
àà 
CreateIndex
àà (
(
àà( )
name
ââ 
:
ââ 
$str
ââ 0
,
ââ0 1
table
ää 
:
ää 
$str
ää 
,
ää 
column
ãã 
:
ãã 
$str
ãã +
)
ãã+ ,
;
ãã, -
}
åå 	
	protected
éé 
override
éé 
void
éé 
Down
éé  $
(
éé$ %
MigrationBuilder
éé% 5
migrationBuilder
éé6 F
)
ééF G
{
èè 	
migrationBuilder
êê 
.
êê 
	DropTable
êê &
(
êê& '
name
ëë 
:
ëë 
$str
ëë (
)
ëë( )
;
ëë) *
migrationBuilder
ìì 
.
ìì 
	DropTable
ìì &
(
ìì& '
name
îî 
:
îî 
$str
îî (
)
îî( )
;
îî) *
migrationBuilder
ññ 
.
ññ 
	DropTable
ññ &
(
ññ& '
name
óó 
:
óó 
$str
óó (
)
óó( )
;
óó) *
migrationBuilder
ôô 
.
ôô 
	DropTable
ôô &
(
ôô& '
name
öö 
:
öö 
$str
öö '
)
öö' (
;
öö( )
migrationBuilder
úú 
.
úú 
	DropTable
úú &
(
úú& '
name
ùù 
:
ùù 
$str
ùù (
)
ùù( )
;
ùù) *
migrationBuilder
üü 
.
üü 
	DropTable
üü &
(
üü& '
name
†† 
:
†† 
$str
†† 
)
††  
;
††  !
migrationBuilder
¢¢ 
.
¢¢ 
	DropTable
¢¢ &
(
¢¢& '
name
££ 
:
££ 
$str
££ #
)
££# $
;
££$ %
migrationBuilder
•• 
.
•• 
	DropTable
•• &
(
••& '
name
¶¶ 
:
¶¶ 
$str
¶¶ 
)
¶¶ 
;
¶¶ 
migrationBuilder
®® 
.
®® 
	DropTable
®® &
(
®®& '
name
©© 
:
©© 
$str
©© #
)
©©# $
;
©©$ %
}
™™ 	
}
´´ 
}¨¨ ÿ
QD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Models\Comment.cs
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
 
Comment

 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
String 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
public 
String 
CoordinatesLong %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
String 
CoordinatesLat $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 

Created_at #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
? 

Updated_at #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	

ForeignKey	 
( 
$str %
)% &
]& '
public 
string 
ApplicationUserId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
ApplicationUser 
ApplicationUser .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
int 
PetId 
{ 
get 
; 
set  #
;# $
}% &
public 
Pet 
Pet 
{ 
get 
; 
set !
;! "
}# $
} 
} ∞
XD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Models\ErrorViewModel.cs
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
} ›
MD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Models\Pet.cs
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
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
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
}   Æ

JD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Program.cs
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
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} Ì
JD:\tspproject\Mvc\Where_is_my_Fluffymoon\Where_is_my_Fluffymoon\Startup.cs
	namespace 	"
Where_is_my_Fluffymoon
  
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. #
AddControllersWithViews ,
(, -
)- .
;. /
services 
. 
AddRazorPages "
(" #
)# $
;$ %
services 
. 
AddDbContext !
<! ")
Where_is_my_FluffymoonContext" ?
>? @
(@ A
optionsA H
=>I K
options   
.   
UseSqlServer   (
(  ( )
Configuration  ) 6
.  6 7
GetConnectionString  7 J
(  J K
$str  K c
)  c d
)  d e
)  e f
;  f g
}!! 	
public$$ 
void$$ 
	Configure$$ 
($$ 
IApplicationBuilder$$ 1
app$$2 5
,$$5 6
IWebHostEnvironment$$7 J
env$$K N
)$$N O
{%% 	
if&& 
(&& 
env&& 
.&& 
IsDevelopment&& !
(&&! "
)&&" #
)&&# $
{'' 
app(( 
.(( %
UseDeveloperExceptionPage(( -
(((- .
)((. /
;((/ 0
})) 
else** 
{++ 
app,, 
.,, 
UseExceptionHandler,, '
(,,' (
$str,,( 5
),,5 6
;,,6 7
app.. 
... 
UseHsts.. 
(.. 
).. 
;.. 
}// 
app00 
.00 
UseHttpsRedirection00 #
(00# $
)00$ %
;00% &
app11 
.11 
UseStaticFiles11 
(11 
)11  
;11  !
app33 
.33 

UseRouting33 
(33 
)33 
;33 
app55 
.55 
UseAuthentication55 !
(55! "
)55" #
;55# $
app66 
.66 
UseAuthorization66  
(66  !
)66! "
;66" #
app88 
.88 
UseEndpoints88 
(88 
	endpoints88 &
=>88' )
{99 
	endpoints:: 
.:: 
MapControllerRoute:: ,
(::, -
name;; 
:;; 
$str;; #
,;;# $
pattern<< 
:<< 
$str<< E
)<<E F
;<<F G
	endpoints== 
.== 
MapRazorPages== '
(==' (
)==( )
;==) *
}>> 
)>> 
;>> 
}?? 	
}@@ 
}AA 