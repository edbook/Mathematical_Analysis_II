
Ferlar
======

*Winter is coming.* 

\- George R.R. Martin, A Game of Thrones

Inngangur
---------


-  Viðfangsefni námskeiðsins er varpanir sem skilgreindar eru á
   hlutmengi í :math:`\mbox{${\bf R}^n$}` og taka gildi í
   :math:`\mbox{${\bf R}^m$}`.

-  Fáumst við stærðfræðigreiningu í mörgum breytistærðum.

-  Sambærileg verkefni og í stærðfræðigreiningu í einni breytistærð:
   Samfelldni, diffrun, heildun. Rúmfræðileg túlkun skiptir nú miklu
   máli.

-  Gerir okkur kleift að fást við mörg raunveruleg verkefni þar sem
   margar breytistærðir koma við sögu.

Stikaferlar
-----------

Skilgreining 
~~~~~~~~~~~~~

Vörpun :math:`\mbox{${\bf r}$}:  [a,b]\rightarrow \mbox{${\bf R}^n$}`
þannig að :math:`\mbox{${\bf r}$}(t)=(r_1(t),\ldots,r_n(t))` kallast
*vigurgild vörpun*. Slík vörpun er sögð samfelld ef föllin
:math:`r_1, \ldots, r_n` eru öll samfelld. Samfelld vörpun
:math:`\mbox{${\bf r}$}:  [a,b]\rightarrow \mbox{${\bf R}^n$}` er oft
kölluð *stikaferill*.

Ritháttur 
~~~~~~~~~~

Þegar fjallað er um stikaferil
:math:`\mbox{${\bf r}$}:  [a,b]\rightarrow {\mathbb  R}^2` þá er oft
ritað

.. math:: \displaystyle \mbox{${\bf r}$}=\mbox{${\bf r}$}(t)=(x(t),y(t))=x(t)\mbox{${\bf i}$}+y(t)\mbox{${\bf j}$},

og þegar fjallað er um stikaferil
:math:`\mbox{${\bf r}$}:  [a,b]\rightarrow {\mathbb  R}^3` þá er oft
ritað

.. math:: \displaystyle \mbox{${\bf r}$}=\mbox{${\bf r}$}(t)=(x(t),y(t),z(t))=x(t)\mbox{${\bf i}$}+y(t)\mbox{${\bf j}$}+z(t)\mbox{${\bf k}$}.

Ferlar og stikanir á ferlum
---------------------------

Skilgreining 
~~~~~~~~~~~~~

*Ferill í plani* er mengi punkta :math:`(x,y)` í planinu þannig að
skrifa má :math:`x=f(t)` og :math:`y=g(t)` fyrir :math:`t` á bili
:math:`I` þar sem :math:`f` og :math:`g` eru samfelld föll á :math:`I`.
Bilið :math:`I` ásamt föllunum :math:`(f,g)` kallast *s*\ tikun á
ferlinum. Ferill í rúmi og stikun á ferli í rúmi eru skilgreind á
sambærilegan hátt.

.. warning::

  Ferill í plani/rúmi er **ekki** það sama og stikaferill. Fyrir gefinn
  feril eru til (óendanlega) margar ólíkar stikanir.

Dæmi - Eðlisfræðileg túlkun
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Líta má á veginn milli Reykjavíkur og Akureyrar sem feril.

Líta má á ferðalag eftir veginum frá Reykjavík til Akureyrar þar sem
staðsetning er þekkt á hverjum tíma sem stikaferil þar sem tíminn er
stikinn.

Dæmi 
~~~~~

Jafnan

.. math:: \displaystyle x^2+y^2 = 1

lýsir ferli í planinu sem er hringur með miðju í (0,0) og geisla 1. Dæmi
um ólíkar stikanir:

.. math:: \displaystyle

   \begin{aligned}
   \mbox{${\bf r}$}_1(t) &= (\cos(t),\sin(t)), \quad \text{fyrir $t$ á bilinu $[0,2\pi].$} \\
   \mbox{${\bf r}$}_2(t) &= \left\{\begin{array}{ll}
   (t,\sqrt{1-t^2}) & \text{fyrir $t$ á bilinu $[-1,1[,$} \\
   (2-t,-\sqrt{1-(2-t)^2}) & \text{fyrir $t$ á bilinu $[1,3].$} 
   \end{array}\right.\end{aligned}

Diffrun stikaferla
------------------

Skilgreining 
~~~~~~~~~~~~~

Stikaferill
:math:`\mbox{${\bf r}$}:  [a,b]\rightarrow \mbox{${\bf R}^n$}` er
*diffranlegur í punkti* :math:`t` ef markgildið

.. math:: \displaystyle \mbox{${\bf r}$}'(t)=\lim_{\Delta t\rightarrow 0}\frac{\mbox{${\bf r}$}(t+\Delta t)-\mbox{${\bf r}$}(t)}{\Delta t}

er til. Stikaferillinn :math:`\mbox{${\bf r}$}` er sagður *diffranlegur*
ef hann er diffranlegur í öllum punktum á bilinu :math:`[a,b]`. (Í
endapunktum bilsins :math:`[a,b]` er þess krafist að einhliða afleiður
séu skilgreindar.)

Setning 
~~~~~~~~

Stikaferill
:math:`\mbox{${\bf r}$}:  [a,b]\rightarrow \mbox{${\bf R}^n$}` er
*diffranlegur í punkti* :math:`t` ef og aðeins ef föllin
:math:`r_1,\ldots,r_n` eru öll diffranleg í :math:`t`. Þá gildir að

.. math:: \displaystyle \mbox{${\bf r}$}'(t)=(r'_1(t),\ldots,r'_n(t)).

Ritháttur 
~~~~~~~~~~

Látum :math:`\mbox{${\bf r}$}:  [a,b]\rightarrow \mbox{${\bf R}^n$}`
vera diffranlegan stikaferil. Venja er að rita
:math:`\mbox{${\bf v}$}(t)=\mbox{${\bf r}$}'(t)` og tala um
:math:`\mbox{${\bf v}$}(t)` sem *hraða* eða *hraðavigur*. Talan
:math:`|\mbox{${\bf v}$}(t)|` er kölluð *ferð*. Einnig er ritað
:math:`\mbox{${\bf a}$}(t)=\mbox{${\bf v}$}'(t)=\mbox{${\bf r}$}''(t)`
og talað um :math:`\mbox{${\bf a}$}(t)` sem *hröðun* eða
*hröðunarvigur*.

.. ggb:: 2384599
  :width: 700
  :height: 364
  :img: ../../_static/hi_logo.jpg
  :imgwidth: 4cm
  :zoom_drag: true 


Dæmi 
~~~~~

Lítum á eftirfarand stikaferla sem stika hring með miðju í (0,0) og
geisla 1.

.. math:: \displaystyle

   \begin{aligned}
   \mbox{${\bf r}$}_1(t) &= (\cos(t),\sin(t)), \quad \text{fyrir $t$ á bilinu $[0,2\pi].$} \\
   \mbox{${\bf r}$}_2(t) &= (\cos(t^2),\sin(t^2)), \quad \text{fyrir $t$ á bilinu $[0,\sqrt{2\pi}].$} \end{aligned}

Þá er tilsvarandi hraði

.. math:: \displaystyle

   \begin{aligned}
   \mbox{${\bf v}$}_1(t) = \mbox{${\bf r}$}_1'(t) &= (-\sin(t),\cos(t)), \quad \text{fyrir $t$ á bilinu $[0,2\pi].$} \\
   \mbox{${\bf v}$}_2(t) = \mbox{${\bf r}$}_2'(t) &= (-2t\sin(t^2),2t\cos(t^2)),  \quad \text{fyrir $t$ á bilinu $[0,\sqrt{2\pi}].$}\end{aligned}

og ferðin :math:`|\mbox{${\bf v}$}_1(t)| = 1` og
:math:`|\mbox{${\bf v}$}_2(t)| = 2t`.

Setning 
~~~~~~~~

Látum
:math:`\mbox{${\bf u}$},\mbox{${\bf v}$}:[a,b]\rightarrow \mbox{${\bf R}^n$}`
vera diffranlega stikaferla og :math:`\lambda` diffranlegt fall. Þá eru
stikaferlarnir
:math:`\mbox{${\bf u}$}(t)+\mbox{${\bf v}$}(t), \lambda(t)\mbox{${\bf u}$}(t)`
og :math:`\mbox{${\bf u}$}(\lambda(t))` diffranlegir, og ef :math:`n=3`
þá er stikaferillinn
:math:`\mbox{${\bf u}$}(t)\times \mbox{${\bf v}$}(t)` líka diffranlegur.
Fallið :math:`\mbox{${\bf u}$}(t)\cdot\mbox{${\bf v}$}(t)` er líka
diffranlegt. Eftirfarandi listi sýnir formúlur fyrir afleiðunum:

**(a)**
:math:`\frac{d}{dt}(\mbox{${\bf u}$}(t)+\mbox{${\bf v}$}(t))=\mbox{${\bf u}$}'(t)+\mbox{${\bf v}$}'(t)`,

**(b)**
:math:`\frac{d}{dt}(\lambda(t)\mbox{${\bf u}$}(t))=\lambda'(t)\mbox{${\bf u}$}(t)+\lambda(t)\mbox{${\bf u}$}'(t)`,

**(c)**
:math:`\frac{d}{dt}(\mbox{${\bf u}$}(t)\cdot\mbox{${\bf v}$}(t))=\mbox{${\bf u}$}'(t)\cdot\mbox{${\bf v}$}(t)+\mbox{${\bf u}$}(t)\cdot\mbox{${\bf v}$}'(t)`,

**(d)**
:math:`\frac{d}{dt}(\mbox{${\bf u}$}(t)\times\mbox{${\bf v}$}(t))=\mbox{${\bf u}$}'(t)\times\mbox{${\bf v}$}(t)+\mbox{${\bf u}$}(t)\times\mbox{${\bf v}$}'(t)`,

**(e)**
:math:`\frac{d}{dt}(\mbox{${\bf u}$}(\lambda(t)))=\mbox{${\bf u}$}'(\lambda(t))\lambda'(t)`.

Ef :math:`\mbox{${\bf u}$}(t)\neq\mbox{${\bf 0}$}` þá er

**(f)**
:math:`\frac{d}{dt}|\mbox{${\bf u}$}(t)|=\frac{\mbox{${\bf u}$}(t)\cdot\mbox{${\bf u}$}'(t)}{|\mbox{${\bf u}$}(t)|}`.

Skilgreining 
~~~~~~~~~~~~~

Látum
:math:`\mbox{${\bf r}$}:  [a,b]\rightarrow \mbox{${\bf R}^n$}; \mbox{${\bf r}$}(t)=(r_1(t),\ldots,r_n(t))`
vera stikaferil.

Stikaferillinn er sagður *samfellt diffranlegur* ef föllin
:math:`r_1(t),\ldots,r_n(t)` eru öll diffranleg og afleiður þeirra eru
samfelldar. Samfellt diffranlegur stikaferill er sagður *þjáll*
(e. smooth) ef :math:`\mbox{${\bf r}$}'(t)\neq\mbox{${\bf 0}$}` fyrir
öll :math:`t`.

Stikaferillinn er sagður *samfellt diffranlegur á köflum* ef til eru
tölur :math:`b_0,\ldots,b_k` þannig að :math:`a=b_0<b_1<\cdots<b_k=b` og
stikaferillinn er samfellt diffranlegur á hverju bili
:math:`[b_{i-1}, b_i]`. Það að stikaferill sé *þjáll á köflum*
(e. piecewise smooth curve) er skilgreint á sambærilegan hátt.

Setning
~~~~~~~

Látum :math:`\mbox{${\bf r}$}=f(t)\mbox{${\bf i}$}+g(t)\mbox{${\bf j}$}`
vera samfellt diffranlegan stikaferil fyrir :math:`t` á bili :math:`I`.
Ef :math:`f'(t) \neq 0` á :math:`I` þá hefur ferilinn snertilínu fyrir
hvert gildi á :math:`t` og hallatala hennar er

.. math:: \displaystyle \frac{dy}{dx} = \frac{g'(t)}{f'(t)}.

Ef :math:`g'(t) \neq 0` á :math:`I` þá hefur ferilinn snertilínu fyrir
hvert gildi á :math:`t` og hallatala hennar er

.. math:: \displaystyle -\frac{dx}{dy} = -\frac{f'(t)}{g'(t)}.

Lengd stikaferils
-----------------

Regla 
~~~~~~

Látum :math:`\mbox{${\bf r}$}:  [a,b]\rightarrow \mbox{${\bf R}^n$}`
vera samfellt diffranlegan stikaferil. *Lengd* eða *bogalengd*
stikaferilsins er skilgreind með formúlunni

.. math:: \displaystyle s=\int_a^b |\mbox{${\bf v}$}(t)|\,dt.

Skilgreining og umræða 
~~~~~~~~~~~~~~~~~~~~~~~

Látum :math:`\mbox{${\bf r}$}: [a,b]\rightarrow \mbox{${\bf R}^n$}` vera
samfellt diffranlegan stikaferil. Sagt er að stikaferillinn sé *stikaður
með bogalengd* ef fyrir allar tölur :math:`t_1,
t_2` þannig að :math:`a\leq t_1<t_2\leq b` þá gildir

.. math:: \displaystyle t_2-t_1= \int_{t_1}^{t_2} |\mbox{${\bf v}$}(t)|\,dt.

(Skilyrðið segir að lengd stikaferilsins á milli punkta
:math:`\mbox{${\bf r}$}(t_1)` og :math:`\mbox{${\bf r}$}(t_2)` sé jöfn
muninum á :math:`t_2` og :math:`t_1`.) Stikun með bogalengd má líka
þekkja á þeim eiginleika að :math:`|\mbox{${\bf v}$}(t)|=1` fyrir öll
gildi á :math:`t`.


Pólhnit
-------

-  Þegar við fáumst við verkefni í mörgum víddum höfum við frelsi til að
   velja hnitakerfi.

-  Heppilegt val á hnitakerfi getur skipt sköpum við lausn verkefnis.


Skilgreining 
~~~~~~~~~~~~~

Látum :math:`P=(x,y)\neq \mbox{${\bf 0}$}` vera punkt í plani. *Pólhnit*
:math:`P` er talnapar :math:`[r,\theta]` þannig að :math:`r` er fjarlægð
:math:`P` frá :math:`O=(0,0)` og :math:`\theta` er hornið á milli
striksins :math:`\overline{OP}` og :math:`x`-ássins. (Hornið er mælt
þannig að rangsælis stefna telst jákvæð, og leggja má við :math:`\theta`
heil margfeldi af :math:`2\pi`.)

Regla 
~~~~~~

Ef pólhnit punkts í plani eru :math:`[r, \theta]` þá má reikna
:math:`xy`-hnit hans (e. *rectangular coordinates* eða *Cartesian
coordinates*) með formúlunum

.. math:: \displaystyle x=r\cos\theta \qquad\mbox{og}\qquad y=r\sin\theta.

Ef við þekkjum :math:`xy`-hnit punkts þá má finna pólhnitin út frá
jöfnunum

.. math:: \displaystyle

   r=\sqrt{x^2+y^2}\qquad\mbox{og}
   \qquad \tan\theta=\frac{y}{x}.

(Ef :math:`x=0` þá má taka :math:`\theta=\frac{\pi}{2}` ef :math:`y>0`
en :math:`\theta=-\frac{\pi}{2}` ef :math:`y<0`. Þegar jafnan
:math:`\tan\theta=\frac{y}{x}` er notuð til að ákvarða :math:`\theta` þá
er tekin lausn á milli :math:`-\frac{\pi}{2}` og :math:`\frac{\pi}{2}`
ef :math:`x>0` en á milli :math:`\frac{\pi}{2}` og
:math:`\frac{3\pi}{2}` ef :math:`x<0`.)

Pólhnitagraf
------------

Skilgreining og umræða
~~~~~~~~~~~~~~~~~~~~~~~

Látum :math:`f` vera fall skilgreint fyrir :math:`\theta` þannig að
:math:`\alpha\leq\theta\leq\beta`. Jafnan :math:`r=f(\theta)` lýsir
mengi allra punkta í planinu sem hafa pólhnit á forminu
:math:`[f(\theta),\theta]` þar sem :math:`\alpha\leq\theta\leq\beta`.
Þetta mengi kallast *pólhnitagraf* fallsins :math:`f`.

Pólhnitagraf er ferill í planinu sem má stika með stikaferlinum

.. math:: \displaystyle \mbox{${\bf r}$}:[\alpha,\beta]\rightarrow{\mathbb  R}^2

með formúlu

.. math:: \displaystyle

   \mbox{${\bf r}$}(\theta)=[f(\theta),\theta]=
   (f(\theta)\cos\theta, f(\theta)\sin\theta).

Snertill við pólhnitagraf
-------------------------

Setning 
~~~~~~~~

Látum :math:`r=f(\theta)` vera pólhnitagraf fallsins :math:`f` og gerum
ráð fyrir að fallið :math:`f` sé samfellt diffranlegt. Látum
:math:`\mbox{${\bf r}$}(\theta)` tákna stikunina á pólhnitagrafinu sem
innleidd er í 2.3. Ef vigurinn
:math:`\mbox{${\bf r}$}'(\theta)\neq \mbox{${\bf 0}$}` þá gefur þessi
vigur stefnu snertils við pólhnitagrafið og út frá
:math:`\mbox{${\bf r}$}'(\theta)` má reikna hallatölu snertils við
pólhnitagrafið.

Flatarmál
---------

Setning 
~~~~~~~~

Flatarmál svæðisins sem afmarkast af geislunum :math:`\theta=\alpha` og
:math:`\theta=\beta` (með :math:`\alpha\leq \beta` og
:math:`\beta-\alpha\leq 2\pi`) og pólhnitagrafi :math:`r=f(\theta)`
(:math:`f` samfellt) er

.. math:: \displaystyle

   A=\frac{1}{2}\int_\alpha^\beta r^2\,d\theta
   =\frac{1}{2}\int_\alpha^\beta f(\theta)^2\,d\theta.

Bogalengd
---------

Setning 
~~~~~~~~

Gerum ráð fyrir að fallið :math:`f(\theta)` sé diffranlegt. Bogalengd
pólhnitagrafsins :math:`r=f(\theta)`, þegar
:math:`\alpha\leq\theta\leq\beta`, er gefin með formúlunni

.. math:: \displaystyle s=\int_\alpha^\beta \sqrt{f'(\theta)^2+f(\theta)^2}\,d\theta.

Einingarsnertivigur
-------------------

Skilgreining 
~~~~~~~~~~~~~

Látum :math:`\cal C` vera feril í plani eða rúmi. Látum
:math:`\mbox{${\bf r}$}` vera stikun á :math:`\cal C` og gerum ráð fyrir
að :math:`\mbox{${\bf r}$}` sé þjáll stikaferill
(þ.e.a.s. :math:`\mbox{${\bf r}$}` er samfellt diffranlegur stikaferill
og :math:`\mbox{${\bf r}$}'(t)\neq \mbox{${\bf 0}$}` fyrir öll
:math:`t`). *Einingarsnertivigurinn* :math:`\mbox{${\bf T}$}` við
ferilinn :math:`\cal C` í punktinum :math:`\mbox{${\bf r}$}(t)` er
skilgreindur með formúlunni

.. math:: \displaystyle \mbox{${\bf T}$}=\frac{\mbox{${\bf r}$}'(t)}{|\mbox{${\bf r}$}'(t)|}=\frac{\mbox{${\bf v}$}(t)}{|\mbox{${\bf v}$}(t)|}.

Krappi
------

Skilgreining 
~~~~~~~~~~~~~

Látum :math:`\cal C` vera feril í plani eða rúmi og
:math:`\mbox{${\bf r}$}` stikun á :math:`\cal C` með bogalengd. (Þegar
fjallað er um stikanir með bogalengd er venja að tákna stikann með
:math:`s`.) Lengd hraðavigurs er alltaf 1 og því er
:math:`\mbox{${\bf T}$}(s)=\mbox{${\bf v}$}(s)`. *Krappi* (e. curvature)
ferilsins :math:`\cal
C` í punktinum :math:`\mbox{${\bf r}$}(s)` er skilgreindur sem talan

.. math:: \displaystyle \kappa(s)=\left|\frac{d\mbox{${\bf T}$}}{ds}\right|.

*Krappageisli* (e. radius of curvature) í punktinum
:math:`\mbox{${\bf r}$}(s)` er skilgreindur sem

.. math:: \displaystyle \rho(s)=\frac{1}{\kappa(s)}.

Meginþverill
------------

Skilgreining 
~~~~~~~~~~~~~

Látum :math:`\cal C` vera feril í plani eða rúmi og
:math:`\mbox{${\bf r}$}` stikun á :math:`\cal C` með bogalengd.
*Meginþverill* (e. unit principal normal) í punkti
:math:`\mbox{${\bf r}$}(s)` er skilgreindur sem vigurinn

.. math:: \displaystyle \mbox{${\bf N}$}(s)=\frac{\mbox{${\bf T}$}'(s)}{|\mbox{${\bf T}$}'(s)|}=\frac{1}{\kappa(s)}\mbox{${\bf T}$}'(s).

Umræða
~~~~~~

Táknum með :math:`\theta` hornið sem :math:`\mbox{${\bf T}$}` myndar við
grunnvigurinn :math:`\mbox{${\bf i}$}`. Þá er
:math:`\kappa = \frac{d\theta}{ds}`.

.. figure:: krappi.png
   :alt: 

Hjúfurplan
----------

Skilgreining 
~~~~~~~~~~~~~

Látum :math:`\cal C` vera feril í plani eða rúmi og
:math:`\mbox{${\bf r}$}` stikun á :math:`\cal C` með bogalengd.

*Hjúfurplanið* (e. osculating plane) við ferilinn í punkti
:math:`\mbox{${\bf r}$}(s)` er planið sem spannað er af vigrunum
:math:`\mbox{${\bf T}$}(s)` og :math:`\mbox{${\bf N}$}(s)` og liggur um
punktinn :math:`\mbox{${\bf r}$}(s)`.

*Hjúfurhringur* (e. osculating circle) við ferilinn í punkti
:math:`\mbox{${\bf r}$}(s)` er hringur sem liggur í hjúfurplaninu, fer í
gegnum punktinn :math:`\mbox{${\bf r}$}(s)`, hefur geisla
:math:`\rho(s)` og hefur miðju í punktinum
:math:`\mbox{${\bf r}$}(s)+\rho(s)\mbox{${\bf N}$}(s)`.

Tvíþverill
----------

Skilgreining 
~~~~~~~~~~~~~

Látum :math:`\cal C` vera feril í plani eða rúmi og
:math:`\mbox{${\bf r}$}` stikun á :math:`\cal C` með bogalengd. Vigurinn

.. math:: \displaystyle \mbox{${\bf B}$}(s)=\mbox{${\bf T}$}(s)\times \mbox{${\bf N}$}(s)

kallas *tvíþverill* (e. binormal) við ferilinn í
:math:`\mbox{${\bf r}$}(s)`.

:math:`\{\mbox{${\bf T}$}(s),\mbox{${\bf N}$}(s),\mbox{${\bf B}$}(s)\}`
er þverstaðlaður grunnur og kallast **Frenet ramminn**.

Vindingur
---------

Setning og skilgreining 
~~~~~~~~~~~~~~~~~~~~~~~~

Látum :math:`\cal C` vera feril í plani eða rúmi og
:math:`\mbox{${\bf r}$}` stikun á :math:`\cal C` með bogalengd. Vigurinn
:math:`\mbox{${\bf B}$}'(s)` er samsíða vigrinum
:math:`\mbox{${\bf N}$}(s)`, þ.e.a.s. \ :math:`\mbox{${\bf B}$}'(s)` er
margfeldi af :math:`\mbox{${\bf N}$}(s)`. Talan :math:`\tau(s)` þannig
að

.. math:: \displaystyle \mbox{${\bf B}$}'(s)=-\tau(s)\mbox{${\bf N}$}(s)

kallast *vindingur* ferilsins í punktinum :math:`\mbox{${\bf r}$}(s)`.

Frenet-Serret jöfnurnar
-----------------------

Jöfnur
~~~~~~

Látum :math:`\cal C` vera feril í plani eða rúmi og
:math:`\mbox{${\bf r}$}` stikun á :math:`\cal C` með bogalengd. Þá
gildir

.. math:: \displaystyle

   \begin{aligned}
   \mbox{${\bf T}$}'(s)&=\kappa\mbox{${\bf N}$}\\
   \mbox{${\bf N}$}'(s)&=-\kappa\mbox{${\bf T}$}+\tau\mbox{${\bf B}$}\\
   \mbox{${\bf B}$}'(s)&=-\tau\mbox{${\bf N}$}.\end{aligned}

Setning
~~~~~~~

Látum :math:`\cal C` vera feril í plani eða rúmi. Gerum ráð fyrir að
:math:`\mbox{${\bf r}$}` sé þjáll stikaferill sem stikar :math:`\cal C`.
Ritum :math:`\mbox{${\bf v}$}=\mbox{${\bf r}$}'(t)` og
:math:`\mbox{${\bf a}$}=\mbox{${\bf r}$}''(t)`. Þá gildir í punktinum
:math:`\mbox{${\bf r}$}(t)` að

.. math:: \displaystyle

   \mbox{${\bf T}$}=\frac{\mbox{${\bf v}$}}{|\mbox{${\bf v}$}|},\qquad 
   \mbox{${\bf B}$}=\frac{\mbox{${\bf v}$}\times\mbox{${\bf a}$}}{|\mbox{${\bf v}$}\times\mbox{${\bf a}$}|},\qquad
   \mbox{${\bf N}$}=\mbox{${\bf B}$}\times\mbox{${\bf T}$},

einnig er

.. math:: \displaystyle

   \kappa=\frac{|\mbox{${\bf v}$}\times\mbox{${\bf a}$}|}{|\mbox{${\bf v}$}|^3},\qquad\qquad
   \tau=\frac{(\mbox{${\bf v}$}\times\mbox{${\bf a}$})\cdot \frac{d}{dt}\mbox{${\bf a}$}}{|\mbox{${\bf v}$}\times\mbox{${\bf a}$}|^2}.


