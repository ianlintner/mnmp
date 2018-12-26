# The Lazy Mac PHP "Gibson Hacker" dev pack aka mnmp

## THIS IS PRE-ALPHA AND DOES NOT WORK YET DON'T USE IT :LOL: ^*^

## Software

* Mac OSX 
* Nginx, 
* (MariaDB|MySql|Postgres)+ 
* PHP 7.x|5.6 FPM 

###Optional

* (Redis|Memcached|Solr|Elastisearch)?

## How
**Less talk more code**


Would you pick up gum on the ground and chew it... 
then go ahead and run these scripts without reviewing what they do...

I would recommend picking/choosing what you need, commenting what you don't.

or just grab the tasty bits and run them in that ol bash/zsh

* Install home brew and dependencies ./brew.sh
* Install phpbrew and php version ./brew.sh
* Does it run?
* Google stackoverflow for errors.
* Actually figure out how it works.
* Update php.ini and nginx.conf and enabled-servers/*\.(dev|loc|wtf)

The above doesnt't make sense... you probably want the training wheels:
https://www.apachefriends.org/index.html 

or even easier free/paid upgrade: https://www.mamp.info/en/

## What

This is a set of scripts and information to guide a developer who is has some comfort 
with the shell and unix/mac administration for setting up a preformat 
Nginx PHP-FPM MariaDb/MySql with other services such as Redis, Solr, Elastic Cache/Search.

### MNMP IS NOT A DOCKER REPLACEMENT

This is designed as minute-to-minute dev environment for large PHP applications such as Drupal
that do not perform well on Docker. 

Do you write a line of CSS code and change it 10 times in 5 minutes, 
because vertical alignment don't work the way you think it works...
of course you do.
 
You will want to have a VM, Container or Docker setup that somewhat
mirrors your prod environment (locally is my preference) for 
integrating/debugging and other dev tomfoolery.

I maybe lazy, but also obsessive about preventing bugs BEFORE they happen. 
Fixing them fast when they do (but we never have bugs we are professionals RIGHT!)


## Support
To be realistic I probably won't maintain this forever. 
Likely I will upgrade this as needed for personal/professional needs, 
but I wanted to share.

Questions/Issues again to be realistic unless it is an error all of this is knowledge that can probably be gleaned from google/stackoverflow but I wanted to centralize it.

Mac versions change so fast and I try to stay with the curve and my main PHP target is Drupal 7 and 8. So it is designed for that.


## Why
I encourage you to use a docker container for mirroring production linux servers for testing before integrating into dev/QA and definetly before production. The goal of this is speed of development and primarly XDebug and traces. As native NGinx and PHP-FPM is still light years ahead of Docker on Mac due to file shared volume code. Which with Drupal is a big deal as you likely have 100s if not 1000s of php files.

### Obligatory ASCII ART

Dobbs-head

```

                     $$$$$$$$$$$$$$$$$$$$$$
                  $$$$$$$$$$$$$$$$$$$$$$$$$$$$
                $$$$$$$$$$$$$$$$$$$$$$$$$$$ $$$$$
               $$$$$$$$$$$$$$  $$$$$$$  $$   $ $$$$
             $$$$$$$$$$$   $$   $$$  $$  $   $  $$$$
            $$$$%$$$  $ $   $$   $$$  $  $   $$ $ $$
           $$$$%%$$$   $ $   $$   $$$  $  $$  $ $ $$$
          $$$$$%%$$$$  $ $    $    $$  $  $$$ $ $$ $$$$
         $$$$$%%%$$$$$ $$$$   $  $ $$   $ $$$$$ $$ $$$$$
        $$$$$$%%%$$$$$$$$$$$  $$ $ $$$$ $ $$$$$$$$$$$$$$$$
       $$$$$$%%%$$$$$$$$$$$$$$$ $$$$$$ $$$$$$$$$$$$$$$$$$$
      $$$$$$%%%$$%%%%%%$$$$$$$$$$$$$$$ $$$$$$$$$   $$$$$$$$
      $$$$$$%%$$%%%%%%%%%$$$$$$$$$$$$$ $$$$$$$     $$$$%$$$
      $$$$$$%$$%%%%%%%%%%%$$$$$$$$$$$$$$$$$        $$$$%%$$$
      $$$$$$$$%%%%%%%%%%%%%$$$$$$$$$$$             $$$$%%$$$
     $$$$$$$%%%            $$$$$$$$                 $$$%%$$$
     $$$$$$%%%                                      $$$%%$$
     $$$$$$%%%                                      $$$%%$$
     $$$$$%%%%                                    % $$$%%$$
     $$$$$%%%%                                    %  $$%%$$
     $$$$$%%%%                                    %  $$%%$$
     $$$$$%%%%                                   %%  $$$%$$
     $$$$$%%%%                                  %%%  $$$%$$
     $$$$$%%%%                                   %%  $$$%$$
     $$$$$%%%%                                   %%  $$$%$$
     $$$$$%%%%                                   %%  $$$%$$
      $$$$%%%%                             $$$$  %% $$$$%$$
     $ $$$%%%% $$$$$$$$$                $$$$$$$$$%% $$$$$$$
    $$$ $$%%%  $$$$$$$$$$              $$$$$$$$$$$%% $$$$$$
    $$$$  %%%          $$$           $$$$       $$%% $$$$$$
    $$$$$$%%%    $$$$$ $$$$         $$$$$$$$$$   $%% $$$$$$
     $$$$ %%%  $$$     $$$$$       $$$$$$    $$$  %%% $$$$$
     $$$$     $$$$$$$$$ $$$$      $$$$$$$$$$$$$$   %  $$$$$
     $$$$     $$$  $ $$  $$$$    $$$$$$  $ $  $$      $$$$
     $$$$      $   $$$ %%%$$$         %% $$$          $$$$
     $$$$             %%%% $$         %%%%%%  %%%     $$$$
      $$$$      %%% %%%%%   $           %%%%%%%       $$$$
      $$$$        %%%%%    $$             %%%         $$ $
      $$ $          %%     $                          $ $$
      $ $$                 $                          $  $
      $ $$  $             %$                         $$  $
      $  $  $            %%$                          $$$$
       $$$  $$         $ %%%                       $ $ $$
        $$  $$        $ %%%%          $ $$$       $$ $
         $ $$$     $$  %%%%        $$$  $$$     $$$ $
         $ $$$    $$  %%%$$$     $$$$    $$$$  $$$$ $
         $$$$$$$$$$   $$$$$$$$$$$$$$      $$$$$$$$$ $
          $$$$$$$   $$$$$$$$$$$$$$         $$$$$$$$ $
          $$$$$$ %%$$$$$$$$$$$$$$      $$$$$$$$$$$$$$
          $$$ $$  %$$$$$$$$$$      $$$$$$$$$    $$$$
           $$  $   $$$$     $$$$$$$$    $$      $$$
           $$  $   %$$$$               $$      $$$$
            $  $   %%%%$$$ $$$$$$$$$$$$$       $$$
            $$ $$   %%%%             $$       $$$$
            $$ $$    %%$$$$ $$$$$$$$$$        $$$
             $  $    $$$$$%%%%%%%%%%         $$$$
             $$ $$  $$$$$%%%                 $$$
              $  $ $$$$ %%%%%%%%%%%%%%      $$$
              $$  $$$$  %%%%%%%%%%%%%       $$$
     $$$       $ $$$$   $%%%%              $$$
   $$   $$      $$$$$  $$$$               $$$
  $  $$  $$   $$$$$$   $$$                $$$
 $ $$$$  $$  $$$$$$   $$$$               $$$
$  $$$  $$$ $$$$$$ $$$$$$$              $$$
$      $$$$$$$$$$   $$$$$$             $$$
$  $$   $$$$$$$$     $$$$$$$$$$$$$$$  $$$
$$$$$   $$$$$$$       $$$$$$$$$$$$$$$$$$
$$$$$$   $$$$$                  $$$$$$
 $$$$$   $$$$
 $$$$$$  $$$
  $$$$$  $$$
   $$$$$$$$
    $$$$$$

```
+ICL