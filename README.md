# The Lazy Mac PHP dev pack aka mnmp



Mac OSX Nginx, MariaDB and PHP 7.x with FPM

To be realistic I probably won't maintain this forever. Likely I will upgrade this as needed for personal use, but I wanted to share.
I may add a GUI, but probably not as I don't have a personal Mac App key so it will likely be a collection of script runner/make or composer/npm/grunt wahtever bash hack and slash I can come up with.

Questions/Issues again to be realistic unless it is an error all of this is knowledge that can probably be gleaned from google/stackoverflow but I wanted to centralize it.

Mac versions change so fast and I try to stay with the curve and my main PHP target is Drupal 7 and 8. So it is designed for that.

I encourage you to use a docker container for mirroring production linux servers for testing before integrating into dev/QA and definetly before production. The goal of this is speed of development and primarly XDebug and traces. As native NGinx and PHP-FPM is still light years ahead of Docker on Mac due to file shared volume code. Which with Drupal is a big deal as you likely have 100s if not 1000s of php files.




                   ._rGDWM4KKW4mNmDGDWWmmL__
                 _r8\KMM48|/D844d\bK+d@Kb*VM8W_,
               m@@Z88/K4548!,\7YK5((t\Y87)/)TM58j
             :45K5D@)\G\Z,,5(-/-!)D,\DT`K/.(bN))ZG
            d8@D@GZZ,-!L!K`,+D,-.T4K !;!NbL!8-8-(8|
           WMK8K8Wq88N/VLVb\!8,.. 5W- t|!Zr)8!KK:K8m_
          j@88KW4WMW8@888GMK`W5..!-W))\!|K8(W!D|G@DK8D;
         |WM8W8G@!@8W8MK8b8W)GD|!b|4K4|N8W@G8MKW5WM@8GW!
        .88@W8MWMM5PK@8G88@KKWK8Md48D@|VW88W8M8)+\888888L
        :8Z@8@88VZZZZKNV58M8@W88K888@|dM8M(+f!- )-Z884((8,
        K85K4MG)))))X(((5(*D@8DW8K8554(Y/)'!'--/!-(M8Z))8|
        @D@8@)D((((!/\\\)\Y!/(5M4Z))\!'-.!`-! !/'\ 885(58|
       |MMMKW5N)'!-',/!.`.\- !\\\'/,/,/- -.\ - -/--!8K!V8W
       |8M58KDD)\`,\ -..` -,-/-`,-.-!.` !'/,/'/.-(-`W8/!88
       |@8@WDK4!\!! -!---!-,(.((.\--\-`-!`-\.'/ !)!\V4((88
       |8K8M5(())\-,'\`-/-!.---- /!!`!`- !\- -! -! -)8))8W
       |88@88Xt!\!-!-. !-\-.-!`-`,--.'-'\-`/`,. !|-,K8Z/8@
       |8@8@G)ZK-\` -,-,\.`,! /!--`/'-'!-./.-,-,))!-K8((8K
       `8W8K5(D)\--\'\`-( ---!!!!/!`!/.-!--'!,\`((\!4WD)8@
        888@GGZ((!( \- )--'!/.---.'/'!'-'`!` -'-\)-.88K(8K
       :(K88tNZ)-/jZmKLKK-/ -'/\-.`-/.'JjGGdJjJ,/K/ D8W\8b
       VNVZ8)K@//Pf+fM888W!!-`-` --.',448@88+MZmG|! V8W8@/|
       |DGZZ)DKV(.'\:__)Z)8/,'(!!`/,!rG)\!!.! -`+))!/W85(P
       !8K(5(5q)))))7J\((5(4q'\-/-.\4(((/+\)))/!!((\ 88)G|
       |GWG\)Z,`KW//88ND\8888(!! /j8ZDKDNMMM/44,/\)\ K84@;
       !Z8Z//\'!\\.,GKq',|\N5|. -\//(Y' :MLN..M- \)7 @WM5;
       !KKK\((`-`- / ..\((/|V|-'\ \'-!!\\//'!,\`!`(- 8Z8Z
       `DGD)))`/./(\(\)))!!)Z/`!(` '!,\)))_(-\ -,'!!'K((K
        4t(\(\'- /'!\\~!`.-\5;\'/ \`.-! ,\'!'  - ! - N\8!
        V!8\-/ '- -.`.- - -\N /-`- - -- - ',`-  ! .'-b\);
        :'4;-)! --`. - ,!-';|.-(./,/`/'/'! .`  ',-!! b-T-
         ((K`(\-'- !- . .!((/.-\-:-!`-/-` ,',' '.`\-!K /'
         `\) )D!! - -  /))!G`.`!!`( /!)L/ - -` ',,) |`~'
           ` /WZ, -' _f/|/!\!-,',-\-,P\`Kb,- --..(/,!
            !(NZr/ /d\\\44MW(t-!/jW@T-\! DG/')//(((.!
            /)8(K((((//GDZWG@GM445(`/!-,-T5K((K/D))-'
            !(KD8G)\):8WK84W488D@\ ,-./!`,\NN))))Z//
             DDZ|/-//4WW88848ZZ!`,,_j\DW8K8Z-!!!t5(-
             VG)\b!-!.58P~!~\*+((++Y~\!8@P!\(\!!Z))'
             `K/-D))!/)KMm.          .q45`-)-- /K(/
              \K/(/--.+DDG8WD-\+-==/~/Z)\.',// K+/
               K|/D!,'(5888KqL_/j::q!`\-,-..'-d8\'
               !|//;- GM885((!-!)\!,\`-\.--- !DG'
                5-((-\88@))D))J..(\\\)\,/- /-(Wt'
                `|-\G88@~/4KKKDD))))7(!.-`,'/GK!
         ,       `d888@!!DDGt!7/7/`\'\-.'- \MD!
     .-._; -,    d5K4K!\(DZ)!',\-\\-',/'/'/KW~
    /'jW8f d8\ .W8)GZ))\T((\/( !!!,-`.`.\!(W'
   : 48ff j@8WjMZK4Z`KK(NZ)!) !,-,-/.'-\/=8'
   _ ` .,/K888885W*  Y4G)KN/.!,,\-\.-,\rG@'
   48@8W/ V(8K848Z    `NKWNK44(Zj)GGGG5Wf
   `88KM4  88@88@        '~~~~YfM4M4Z+~
    V888@) 5WM8P
     M8Rob.M88f
     `*88888*'
       `YY~'

