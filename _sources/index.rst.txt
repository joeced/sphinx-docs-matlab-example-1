Sphinx Doc -- MATLAB Example 1
==============================

Examples of auto-documenting MATLAB_ source files with Sphinx_, which lets you
create beautiful documentation. The source for this project is found at
https://github.com/joeced/sphinx-docs-matlab-example-1.

.. toctree::
   :maxdepth: 2
   :caption: Contents:

The file structure for this project is, where source files are located in the
``src`` folder.::

   docs
       conf.py
       index.rst
   src
       @ClassFolder
           a_static_func.m
           ClassFolder.m
           classMethod.m
       +package
          func.m
       submodule
          ClassInheritDifferentModules.m
          TestFibonacci.m
       ClassBySource.m
       f_example.m


In ``conf.py``, we have setup the use of `sphinxcontrib-matlabdomain` with::

   matlab_src_dir = os.path.abspath('..')
   primary_domain = 'mat'
   extensions = ['sphinx.ext.autodoc', 'sphinxcontrib.matlab']


.. automodule:: src

.. autoclass:: ClassBySource
   :members:
   :show-inheritance:

.. autoclass:: src.@ClassFolder
   :members:

.. autofunction:: src.@ClassFolder.classMethod
.. autofunction:: src.@ClassFolder.a_static_func

.. autofunction:: src.f_example

.. autofunction:: src.+package.package_func


.. automodule:: src.submodule

.. autoclass:: ClassInheritDifferentModules
   :members:
   :show-inheritance:


.. autoclass:: TestFibonacci
   :members:
   :show-inheritance:

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`


.. _Sphinx: https://www.sphinx-doc.org
.. _sphinxcontrib-matlabdomain: https://pypi.org/project/sphinxcontrib-matlabdomain/
.. _MATLAB: https://mathworks.com
