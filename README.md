# The Lazy Mac PHP dev pack aka mnmp



Mac OSX Nginx, MariaDB and PHP 7.x with FPM

To be realistic I probably won't maintain this forever. Likely I will upgrade this as needed for personal use, but I wanted to share.
I may add a GUI, but probably not as I don't have a personal Mac App key so it will likely be a collection of script runner/make or composer/npm/grunt wahtever bash hack and slash I can come up with.

Questions/Issues again to be realistic unless it is an error all of this is knowledge that can probably be gleaned from google/stackoverflow but I wanted to centralize it.

Mac versions change so fast and I try to stay with the curve and my main PHP target is Drupal 7 and 8. So it is designed for that.

I encourage you to use a docker container for mirroring production linux servers for testing before integrating into dev/QA and definetly before production. The goal of this is speed of development and primarly XDebug and traces. As native NGinx and PHP-FPM is still light years ahead of Docker on Mac due to file shared volume code. Which with Drupal is a big deal as you likely have 100s if not 1000s of php files.

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
