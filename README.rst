Documentation
=============

Documentation for AirMast products. Source files written on reStructuredText_ serve both for online (HTML) and offline (PDF) documentation.

Available on: https://airmast.github.io

Building 
========

Prerequisites
-------------

Linux OS is supported only.

For generating online (HTML) documentation:

* Node.js_
* rst2html5_

For generating offline (PDF) documentation:

* Node.js_
* rst2pdf_
* svglib_
* Inkscape_
* Fonts:
   - `PT Mono <https://fonts.google.com/specimen/PT+Mono>`__
   - `PT Sans <https://fonts.google.com/specimen/PT+Sans>`__
   - `PT Sans Narrow <https://fonts.google.com/specimen/PT+Sans+Narrow>`__
   - `PT Serif <https://fonts.google.com/specimen/PT+Serif>`__

Online (HTML)
-------------

::

    make html


Start server::

    make serve

Then open URL in browser: http://localhost:3100/

Offline (PDF)
-------------

::

    make pdf


License
=======

All contents are licensed under `Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License <https://creativecommons.org/licenses/by-nc-nd/4.0/>`_.

|cc| |by| |nc| |nd|

.. _Inkscape: https://inkscape.org/
.. _Node.js: https://nodejs.org/
.. _reStructuredText: http://docutils.sourceforge.net/rst.html
.. _rst2html5: https://pypi.python.org/pypi/rst2html5
.. _rst2pdf: https://pypi.python.org/pypi/rst2pdf
.. _svglib: https://pypi.python.org/pypi/svglib

.. |cc| image:: /img/cc.svg
   :width: 30px
   :alt: CC
.. |by| image:: /img/by.svg
   :width: 30px
   :alt: BY
.. |nc| image:: /img/nc-eu.svg
   :width: 30px
   :alt: NC-EU
.. |nd| image:: /img/nd.svg
   :width: 30px
   :alt: ND
