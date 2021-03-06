Metric Spaces
===============================

.. index:: Metric
.. index:: Metric space
.. index:: Distance

.. _def:metric:metric:

.. definition:: 

    A **metric** or a **distance** :math:`d` on a nonempty set :math:`X` is a function :math:`d : X \times X \to \RR` which satisfies
    following properties

    i. :math:`d(x, y) \geq 0 \Forall x, y \in X` non-negativity axiom [M1];
    #. :math:`d(x, y)  = 0 \iff x  = y` coincidence axiom [M2]; 
    #. :math:`d(x, y ) = d(y, x) \Forall x, y \in X` symmetry [M3];
    #. :math:`d(x, y) \leq d(x, z) + d(z, y) \Forall x, y, z \in X`
       triangle inequality or sub-additivity [M4].
    
    The pair :math:`(X, d)` is called a **metric space**.



.. _lem:metric:alternative triangle inequality:

.. lemma:: 


    In a metric space :math:`(X, d)`, the inequality
    
    
    .. math::
        :label: eq:metric:alternative triangle inequality
    
        | d(x, z) - d(y, z)| \leq d(x, y)
    
    holds for all points :math:`x, y, z \in X`.



.. proof:: 

    
    
    .. math:: 
    
        d(x, z)  \leq d(x, y) + d(y, z)
        \implies d(x, z) - d(y, z) \leq d(x, y).
    
    Interchanging :math:`x` and :math:`y` we get
    
    
    .. math:: 
    
        d(y, z) - d(x, z) \leq d(y, x)  = d(x, y).
    
    Combining the two, we get the result.




.. example:: Real line as metric space

    We show different metrics for the set of real numbers :math:`\RR`. Let :math:`x, y, z \in \RR`. Define:
    
    
    .. math:: 
    
        d_1 (x, y) = | x - y |.
    
    Since the absolute value of any real number is non-negative, M1 is satisfied.
    
    :math:`| x- y |  = 0 \iff x - y = 0 \iff x = y`. Thus, M2 is satisfied. 
    
    Now,
    
    
    .. math:: 
    
        d_1 (x, y) = | x - y | = | - (x - y) | = | y - x | = d_1 (y, x).
    
    Thus, M3 is satisfied.
    
    Finally, 
    
    
    .. math:: 
    
        d_1(x, y) + d_1(y, z) =  | x - y | + | y - z | \leq  | x - y  + y - z | = | x - z | = d_1 (x, z).
     
    Thus, M4 is satisfied and :math:`(\RR, d_1)` is a metric space.




.. index:: Taxicab metric
.. index:: Euclidean metric

.. example:: General Euclidean metrics

    We consider metrics defined on :math:`\RR^n` (the set of n-tuples).
    
    Let :math:`x = (x_1, \dots, x_n) \in \RR^n` and :math:`y = (y_1, \dots, y_n) \in \RR^n`.
    
    The **taxicab metric** is defined as
    
    
    .. math::
        :label: eq:metric:taxicab_metric
    
        d_1(x, y) = \sum_{i = 1}^n | x_i - y_i|.
    
    
    The **Euclidean metric** is defined as
    
    
    .. math::
        :label: eq:metric:euclidean_metric
    
        d_2(x, y) = \left ( \sum_{i = 1}^n | x_i - y_i|^2 \right )^{\frac{1}{2}}.
    
    
    The **general Euclidean metric** is defined as
    
    
    .. math::
        :label: eq:metric:general_euclidean_metric
    
        d_p(x, y) = \left ( \sum_{i = 1}^n | x_i - y_i|^p \right )^{\frac{1}{p}} \quad r =2,3, \dots.
    
    
    For :math:`p = \infty`, metric is defined as
    
    
    .. math::
        :label: eq:metric:max_euclidean_metric
    
        d_{\infty}(x, y) = \underset{1 \leq i \leq n}{\max}{ | x_i - y_i|}.
    
    
    We now prove that above are indeed a metric. We start with taxicab metric.
    M1 is straightforward since 
    
    
    .. math:: 
    
        d_1(x, y) = \sum_{i = 1}^n | x_i - y_i| \geq 0.
    
    M2 is also easy
    
    
    .. math:: 
    
        \sum_{i = 1}^n | x_i - y_i|  = 0 \iff | x_i - y_i| = 0 \iff x_i = y_i \iff x  = y.
    
    M3 is straightforward too
    
    
    .. math:: 
    
        d_1(x, y) = \sum_{i = 1}^n | x_i - y_i|  = \sum_{i = 1}^n | y_i - x_i| = d_1 (y, x).
    
    We will prove M4 (triangle inequality) inductively. For :math:`n=1`
    
    
    .. math:: 
    
        d_1(x, z) + d_1(z, y) =  | x_1 - z_1 | + | z_1 - y_1 | \geq | x_1 - z_1 + z_1 - y_1 | = | x_1 - y_1| = d_1(x, y).
    
    Thus M1 is true for :math:`n=1`.
    

    TODO finish it.



 
Open sets
--------------------------------------


.. index:: Open ball

.. _def:metric:open_ball:

.. definition:: 


    Let :math:`(X, d)` be a metric space. An **open ball** at  any :math:`x \in X` with radius :math:`r > 0`
    is the set 
    
    
    .. math::
        :label: eq:metric:open_ball
    
        B(x, r) \triangleq \{ y \in X : d(x, y) < r\}.
    




.. lemma:: 

    
    
    .. math::
        B(x, r_1) \subseteq B(x, r) \text{ whenever } r_1 \leq r.
    
.. proof:: 

    Let :math:`z \in B(x, r_1)`. Then :math:`d(x, z) < r_1 \leq r \implies z \in B(x, r)`.



.. index:: Open set

.. _def:metric:open_set:

.. definition:: 


    A set :math:`A \subseteq X` is called **open** if for every :math:`x \in A` there exists some :math:`r > 0` 
    such that :math:`B(x, r) \subseteq A`.



.. _lem:metric:open_ball_open_set:

.. lemma:: 


    Every open ball :math:`B(x, r)` is an open set.



.. proof:: 

    Let :math:`A = B(x, r)`. 
    We need to show that for for every :math:`y \in A` there exists an open ball :math:`B(y, r_1) \subseteq A`. 
    
    Let :math:`r_1 = r - d(x, y)`.  Since :math:`d(x, y) < r \forall y \in A`, hence :math:`r_1 > 0`. 
    We can also write :math:`d(x, y) = r - r_1`.
    Consider :math:`C = B(y, r_1)`. For any :math:`z \in C` we have :math:`d(y, z) < r_1`.
    Further using triangle inequality:
    
    
    .. math:: 
    
        d(x, z) \leq d(x, y) + d(y, z) \leq r - r_1 + d(y, z) <  r - r_1 + r_1 =  r. 
    
    Thus :math:`z \in B(x, r) \Forall z \in C`, hence :math:`C \subseteq B(x, r)`. Hence :math:`B(x, r)` is open.



.. _thm:metric:metric_space_properties:

.. theorem:: 


    For a metric space :math:`(X, d)` following statements hold

    i.  :math:`X` and :math:`\EmptySet` are open sets.
    #.  Arbitrary unions of open sets are open sets.
    #.  Finite intersections of open sets are open sets.
    



.. proof:: 

    Since :math:`\EmptySet` doesn't contain any element hence (i) is vacuously true for :math:`\EmptySet`.
    For any :math:`x \in X` and any :math:`r > 0`, :math:`B(x, r) \subseteq X` by definition. Hence :math:`X` is open.
    
    Let :math:`\{A_i\}_{i \in I}` be an arbitrary family of open sets with :math:`A_i \subseteq X`. 
    Let :math:`C = \bigcup A_i`. Let :math:`x \in C`. Then there exists some :math:`A_i` such that :math:`x \in A_i`.
    Since :math:`A_i` is open hence there exists an open ball :math:`B(x, r) \subseteq A_i \subseteq C`.
    Thus for every :math:`x \in C` there exists an open ball :math:`B(x, r) \subseteq C`. Hence :math:`C` is open.
    
    Let :math:`\{A_1, \dots, A_n\}` be a finite collection of open subsets of :math:`X`.   Let
    :math:`C = \bigcap A_i`. Let :math:`x \in C`. Then :math:`x \in A_i \Forall 1 \leq i \leq n`. Thus
    there exists an open ball :math:`B(x, r_i) \subseteq A_i \Forall 1 \leq i \leq n`. Now
    let :math:`r = \min(r_1, \dots, r_n)`. Since :math:`r_i > 0` and we are taking a minimum over
    finite set of numbers hence :math:`r > 0`. Thus :math:`B(x, r) \subseteq B(x, r_i) \subseteq A_i \Forall 1 \leq i \leq n`.
    Thus :math:`B(x, r) \subseteq C`. Thus C is open. 



.. index:: Interior point


.. _def:metric:interior_point:

.. definition:: 

    Let :math:`(X, d)` be a metric space. Let :math:`A \subseteq X`. A point  :math:`a \in A`  is called
    an **interior point** of :math:`A` if there exists an open ball :math:`B(a, r)` such that
    :math:`B(a, r) \subseteq A`. 


.. index:: Interior

.. _def:metric:interior:

.. definition:: 


    The set of all interior points of a set :math:`A` is 
    called its **interior**. It
    is denoted by :math:`\Interior{A}`.



.. _lem:metric:interior_is_open:

.. lemma:: 


    For any set :math:`A \subseteq X`, 
    its interior :math:`\Interior{A}` is an open set.



.. proof:: 

    We need to show that for every :math:`x \in \Interior{A}`, there exists an open ball
    :math:`B(x, r)  \subseteq \Interior{A}`.
    
    Let :math:`x \in \Interior{A}`. Then there exists an open ball :math:`B(x, r) \subseteq A`. 
    Since :math:`B( x, r)` is open hence for every :math:`y \in B (x, r)` there exists 
    an open ball :math:`B (y , r_1) \subseteq B(x, r) \subseteq A`. Thus :math:`y` is an interior point of :math:`A`.
    Hence :math:`B(x, r) \subseteq \Interior{A}`.



.. _lem:metric:interior_largest_open_set:

.. lemma:: 


    For any set :math:`A \subseteq X`, its interior 
    :math:`\Interior{A}` is the largest open set 
    included in :math:`A`.



.. proof:: 

    Let :math:`C \subseteq A` be open. Let :math:`x \in C`. Then there exists an open ball :math:`B(x, r) \subseteq C \subseteq A`.
    Thus :math:`x` is an interior point of :math:`A`. Hence :math:`x \in \Interior{A}`. Thus :math:`C \subseteq \Interior{A}`. Thus
    every open subset of :math:`A` is a subset of interior of :math:`A`. We have already shown that \Interior{A} is open. 
    Hence  \Interior{A} is the largest open set contained in :math:`A`.



.. _lem:metric:a_open_and_equals_interior:

.. lemma:: 


    :math:`A` is open if and only if :math:`\Interior{A} = A`.



.. proof:: 

    Let :math:`A` be open. Hence for every :math:`x \in A`, there exists an open ball :math:`B(x, r) \subseteq A`. Thus
    :math:`x` is an interior point of :math:`A`. Thus :math:`A \subseteq \Interior{A}`. But since :math:`\Interior{A} \subseteq A`, hence
    :math:`\Interior{A} = A`. 
    
    Now the converse. Let :math:`\Interior{A} = A`. Thus for every point :math:`x \in A`, there exists 
    an open ball :math:`B(x, r) \subseteq A` since :math:`x \in \Interior{A}`. Hence :math:`A` is open.




 
Closed sets
---------------


.. index:: Closed set

.. _def:metric:closed_set:

.. definition:: 


    A subset :math:`A` of a metric space :math:`(X, d)` is called **closed** if its complement :math:`X \setminus A` 
    denoted as :math:`A^c` is open.



.. _thm:metric:closed_set_properties:

.. theorem:: 


    For a metric space :math:`(X, d)` the following statements hold:

    a.  :math:`X` and :math:`\EmptySet` are closed sets.
    #.  Arbitrary intersections of closed sets are closed sets.
    #.  Finite unions of closed sets are closed sets.
    




.. proof:: 

    Since :math:`\EmptySet` is open hence :math:`X = X \setminus \EmptySet` is closed.
    Since :math:`X` is open hence :math:`\EmptySet = X \setminus X` is closed.
    
    Let :math:`\{A_i\}_{i \in I}` be an arbitrary family of closed sets with :math:`A_i \subseteq X`. 
    Then :math:`A_i^c` are open. Thus :math:`\bigcup A_i^c` is open.
    Thus :math:`\left ( \bigcup A_i^c \right )^c` is closed. By De Morgan's law,  :math:`\bigcap A_i` is closed.
    
    
    Let :math:`\{A_1, \dots, A_n\}` be a finite collection of closed subsets of :math:`X`. 
    Then :math:`A_i^c` are open. Hence their finite intersection :math:`\bigcap A_i^c` is open.
    Hence :math:`\left ( \bigcap A_i^c \right )^c` is closed. By De Morgan's law, :math:`\bigcup A_i` is closed.
    




.. remark:: 

    A set :math:`A` is open if and only if :math:`A^c` is closed. Similarly a set :math:`A` is closed
    if and only if :math:`A^c` is open.



.. index:: Closure point

.. _def:metric:closure_point:

.. definition:: 


    A point :math:`x \in X` is called a **closure point** of  a set :math:`A \subseteq X` if every open ball
    at :math:`x` contains at least one element of :math:`A`; i.e. :math:`B(x, r) \cap A \neq \EmptySet \Forall r > 0`.


Note that a closure point of :math:`A` need not belong to :math:`A`. At the same time, every point in :math:`A` 
is a closure point of :math:`A`. 


.. index:: Closure

.. _def:metric:closure: 

.. definition:: 


    The set of all closure points of a set :math:`A \subseteq X` is called **closure** of :math:`A` and is 
    denoted by :math:`\Closure{A}`.


Clearly :math:`A \subseteq \Closure{A}`.


.. _lem:closure_is_closed: 

.. lemma:: 


    The closure of a set :math:`A` in a metric space :math:`(X, d)` is a closed set. 



.. proof:: 

    We will show that :math:`C = \Closure{A}^c` is open. 
    
    Let :math:`x \in C`. Then :math:`x` is  not a closure point of :math:`A`. Hence, there
    exists an open ball :math:`B(x, r)` such that :math:`B(x, r) \cap A  = \EmptySet`.
    Now, consider :math:`z \in B (x, r)`. Since :math:`B(x, r)` is open, there exists :math:`r_1 > 0` such that
    :math:`B (z, r_1) \subseteq B(x, r)`. Thus, :math:`B (z, r_1)  \cap A = \EmptySet`. Hence,
    :math:`z` is not a closure point of :math:`A`. Hence, :math:`z \in C`.  Thus, :math:`B( x, r) \subseteq C`.
    Thus, we have shown that for every :math:`x \in C`, there exists an open ball :math:`B(x, r) \subseteq C`.
    Thus, :math:`C` is open. Consequently, :math:`\Closure{A} = C^c` is closed.





.. _thm:metric:closure_is_smallest:

.. theorem:: 


    For every subset :math:`A` of a metric space :math:`(X, d)` 
    its closure :math:`\Closure{A}` is the smallest
    closed set containing :math:`A`.




.. proof:: 

    Let :math:`C` be a closed set such that :math:`A \subseteq C`. Then, :math:`C^c` is open. Hence, for every
    :math:`x \in C^c`, there exists an open ball :math:`B(x, r) \subseteq C^c`. Thus, 
    :math:`B (x, r) \cap C = \EmptySet \implies B (x, r) \cap A = \EmptySet`. Thus, :math:`x` is not a closure
    point of :math:`A`. Since every point in :math:`C^c` is not a closure point of :math:`A`, hence every closure point
    of :math:`A` belongs to :math:`C`. Thus, :math:`\Closure{A} \subseteq C`.  Finally, since :math:`\Closure{A}` is closed,
    hence it is the smallest closed set containing :math:`A`.




.. lemma:: 

    A set :math:`A` is closed if and only if :math:`A = \Closure{A}`.




.. proof:: 

    Let :math:`A` be closed. Then, :math:`\Closure{A} \subseteq A` 
    due to :ref:`this <thm:metric:closure_is_smallest>`. But since :math:`A \subseteq \Closure{A}`, hence,
    :math:`A = \Closure{A}`. 
    
    Now assume :math:`A = \Closure{A}`. Since :math:`\Closure{A}` is closed, :math:`A` is closed.



.. index:: Closed ball

.. _def:metric:closed_ball:

.. definition:: 


    A set of the form :math:`A = \{x \in X : d(x, a) \leq r \}` is called the **closed ball** 
    at :math:`a` with radius :math:`r`.




.. _lem:metric:closed_ball_is_closed:

.. lemma:: 


    A closed ball at point :math:`a` with radius :math:`r` given by :math:`A = \{x \in X : d(x, a) \leq r \}`
    is a closed set.



.. proof:: 

    We show that :math:`A^c` is open. 
    
    Let :math:`y \in A^c`. Then :math:`d(y, a) > r`. Now consider :math:`r_1 = d(y, a) - r > 0` and an open ball
    :math:`B(y, r_1)`. For any :math:`z \in B(y, r_1)`
    
    
    .. math:: 
    
        d(z, a) \geq d(y, a) - d(z, y) > d(y, a) - r_1 = r. 
    
    Thus, :math:`z \in A^c`. Hence, :math:`B(y, r_1) \subseteq A^c`. Hence, :math:`A^c` is open. Thus, :math:`A` is closed.



.. _lem:closure_of_open_ball:

.. lemma:: 


    The closure of an open ball :math:`B (x, r) =  \{ y \in X : d(x, y) < r\}`
    is the closed ball :math:`A =  \{ y \in X : d(x, y) \leq r\}`.



.. proof:: 

    Any point :math:`y :  d(x, y) < r` is obviously a closure point of :math:`B (x, r)`. 
    
    We show that a point :math:`y : d(x, y) = r` is a closure point of :math:`B (x, r)`.
    For contradiction, suppose :math:`y` is not a closure point of :math:`B (x, r)`. Then,
    there exists an open ball :math:`B(y, r_1)` such that :math:`B (y, r_1) \cap B (x, r) = \EmptySet`.
    
    We show that a point :math:`y : d(x, y) > r` is not a closure point of :math:`B (x, r)`.
    Let :math:`r_1 = d(x, y) -r > 0`. Then, :math:`B ( y, r_1) \cap B (x, r) = \EmptySet`. Hence
    :math:`y` is not a closure point of :math:`B (x, r)`.


.. disqus::

