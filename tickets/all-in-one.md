# 1. Постановка задачи динамического программирования (можно на примере).

## Общая постановка задачи динамического программирования

Найти такое начальное состояние ![](<https://latex.codecogs.com/svg.latex?x_{0}^{*}=x_{0}(t^{s})\in&space;X^{s}>) и такой допустимый набор управлений ![](https://latex.codecogs.com/svg.latex?u_{1}^{*},u_{2}^{*},\dots,u_{N}^{*}), переводящий систему в одно из состояний ![](<https://latex.codecogs.com/svg.latex?x_{N}^{*}=x^{*}(t_{f})\in&space;X^{f}>), чтобы общие затраты, являющиеся аддитивной функцией затрат, были минимальны (или максимальны, если прибыль).

Пояснения к постановке задачи:

-   ![](<https://latex.codecogs.com/svg.latex?u_{k}=u(t_{k})>) - **управление** в момент времени ![](https://latex.codecogs.com/svg.latex?t_{k})
-   ![](<https://latex.codecogs.com/svg.latex?x_{k}=x(t_{k})>) - **состояние** в момент времени ![](https://latex.codecogs.com/svg.latex?t_{k})

**Динамическая система (ДС)** - объект, для которого можно однозначно определить ![](https://latex.codecogs.com/svg.latex?x(t),&space;\forall&space;\bar{t}&space;>&space;t) при известном управлении ![](<https://latex.codecogs.com/svg.latex?u(\tilde{\iota&space;}),&space;\tilde{\iota&space;}&space;\in&space;\left&space;[&space;t,&space;\bar{t}&space;\right&space;]>), и зная описание x(t) данного объекта.

ДС определяется набором ![](https://latex.codecogs.com/svg.latex?\left&space;\langle&space;X,T,F,U&space;\right&space;\rangle), где:

-   X - множество состояний
    -   ![](https://latex.codecogs.com/svg.latex?X_{0}) - множество начальных состояний
    -   ![](https://latex.codecogs.com/svg.latex?X_{N}) - множество конечных состояний
-   T - множество допустимых моментов времени
-   F - множество операторов или оператор, позволяющий по x(t) определить x(![](https://latex.codecogs.com/svg.latex?\bar{t}))
-   U - множество значений управлений, зависящих от момента времени и текущего состояния

**Оператор ДС/определение ДС** - ![](<https://latex.codecogs.com/svg.latex?x_{k+1}=f_{k+1}(x_{k},U_{k+1})>)

![](<https://latex.codecogs.com/svg.latex?d_{k+1}(x_{k},U_{k+1})>) - функция доходов/затрат на текущем шаге

**Требования к ДС:**

-   новые состояния и функции затрат/доходов зависят только от предыдущего состояния, управления и момента времени
-   управление зависит от предыдущего состояния и момента времени


# 2. Общий вид рекуррентных уравнений Беллмана

### Обозначения:

-   ![](https://latex.codecogs.com/svg.latex?u_{k}) - управление
-   ![](https://latex.codecogs.com/svg.latex?x_{k}) - состояние
-   ![](https://latex.codecogs.com/svg.latex?f_{k}) - оператор динамической системы, позволяет по x(t) определить x(t1) для любого допустимого
    момента времени t1 > t
-   ![](https://latex.codecogs.com/svg.latex?Y_{k}) множество состояний, из которых (при использовании допустимых управлений) можно ровно за k шагов попасть в одно из состояний финального множества ![](https://latex.codecogs.com/svg.latex?X_{N},Y_{0}=X_{N})
-   U - множество возможных значений управлений, зависящее от текущего момента времени и текущего состояния

Для решения задач динамического программирования используется подход, разработанный в лаборатории Р. Беллмана в 50-х годах XX века

Обозначим через ![](<https://latex.codecogs.com/svg.latex?S_{k}(x_{N-k})>) **функцию, описывающую зависимость оптимальных затрат от состояния** ![](https://latex.codecogs.com/svg.latex?x_{N-k}) за k последних шагов, переводящих систему из состояния ![](https://latex.codecogs.com/svg.latex?x_{N-k}) в ![](https://latex.codecogs.com/svg.latex?x_{N}). Такие функции называют **функциями Беллмана**.

Функция оптимальных затрат ![](<https://latex.codecogs.com/svg.latex?S_{1}(x_{N-k})>) может быть записана следующим образом:

-   ![](https://latex.codecogs.com/svg.latex?S_{1}%28x_%7BN-k%7D%29%3Dmin%5Cleft%20%5C%7Bd_%7BN%7D%28x_%7BN-1%7D%2Cu_%7BN%7D%29%5Cright%20%5C%7D) (1.1)
Условия:
-   ![](<https://latex.codecogs.com/svg.latex?u_{N}\in&space;U_{N}(x_{N-1})>) ;
-   ![](<https://latex.codecogs.com/svg.latex?f_{N}(x_{N-1},u_{N})\epsilon&space;x_{N}>)

Второе ограничение необходимо для того, чтобы гарантировать достижение заданного финального множества ![](https://latex.codecogs.com/svg.latex?x_{N})

Можно доказать, что функция оптимальных затрат ![](<https://latex.codecogs.com/svg.latex?S_{k+1}(x_{N-k-1})>) каждой следующей задачи рекуррентно выражается через предыдущую

-   ![](<https://latex.codecogs.com/svg.latex?S_{k}(x_{N-k})>) , а именно, для ![](https://latex.codecogs.com/svg.latex?x_{N-k-1}\in&space;Y_{k+1}) :
    ![](https://latex.codecogs.com/svg.latex?S_%7Bk+1%7D%28x_%7BN-k-1%7D%29%3Dmin%20%5Cleft%20%5C%7B%20d_%7BN-k%7D%28x_%7BN-k-1%7D%2Cu_%7BN-k%7D%29%20+%20S_%7Bk%7D%28f_%7BN-k%7D%28x_%7BN-k-1%7D%2Cu_%7BN-k%7D%29%29%20%5Cright%20%5C%7D) (1.2)
Условия:
-   ![](<https://latex.codecogs.com/svg.latex?u_{N-k}\in&space;U_{N-k}(x_{N-k-1})>) ;
-   ![](<https://latex.codecogs.com/svg.latex?f_{N-k}(x_{N-k-1},u_{N-k})\epsilon&space;Y_{k}>)

где в ограничениях последнее условие обеспечивает попадание точки ![](https://latex.codecogs.com/svg.latex?x_{N-k}) в
область определения функции ![](https://latex.codecogs.com/svg.latex?S_{k}).

Пусть ![](<https://latex.codecogs.com/svg.latex?u_{N-k}^{*}(x_{N-k-1})>) – значение управления, при котором достигается минимум затрат в (1.2). Выражения (1) ![](<https://latex.codecogs.com/svg.latex?u_{k}^{*}(x_{k-1})>) определяют для каждого момента времени оптимальные правила управления в виде функций от текущего состояния динамического процесса, т.е. задают закон оптимального управления в форме оптимального регулятора по состоянию.

Оптимальное начальное состояние ![](https://latex.codecogs.com/svg.latex?x_{0}^{*}) можно получить из решения
следующей задачи:
![](https://latex.codecogs.com/svg.latex?x_%7B0%7D%5E%7B*%7D%3Dargmin%5Cleft%20%5C%7B%20S_%7BN%7D%28x_%7B0%7D%3Ax_%7B0%7D%5Cin%20X_%7B0%7D%20%29%20%5Cright%20%5C%7D) (1.3)

Систему (1.1)-(1.3) называют **рекуррентными уравнениями Беллмана**.
Значения оптимального управления в явном виде можно последовательно определить следующим образом: ![](<https://latex.codecogs.com/svg.latex?u_{1}^{*}=u_{1}^{*}(x_{0}),&space;x_{1}^{*}=f_{1}(x_{0}^{*},u_{1}^{*}),..,u_{1}^{*}=u_{k}^{*}(x_{k-1}),&space;x_{k}^{*}=f_{k}(x_{k-1}^{*},u_{k}^{*})>),
и так далее, включая ![](https://latex.codecogs.com/svg.latex?u_{N}^{*}) и ![](https://latex.codecogs.com/svg.latex?x_{N}^{*}) .

Заметим, что уравнения (1.1), (1.2) определяют следующее правило построения управления: вне зависимости от того, каким образом управляемый процесс на шаге k попал в состояние ![](https://latex.codecogs.com/svg.latex?x_{k}) , далее надо применять управление, оптимальное для этого состояния в завершающем (N − k)-шаговом процессе с учетом оптимального продолжения, и в состоянии ![](https://latex.codecogs.com/svg.latex?x_{k}) нужно применять правило ![](<https://latex.codecogs.com/svg.latex?u_{k+1}^{*}(x_{k})>) , определяющее первый «такт» такого управления.


# 3. Выпуклое множество – определение, примеры.

Отрезком [x, y] в ![](https://latex.codecogs.com/svg.latex?R^{n}) называется геометрическое место точек {![](<https://latex.codecogs.com/svg.latex?{x^{\alpha&space;}:x^{\alpha&space;}=\alpha&space;*x+(1-\alpha&space;)*y,&space;\alpha&space;\in&space;[0,1]}>)}

Элемент отрезка может быть записан как: ![](<https://latex.codecogs.com/svg.latex?x^{\alpha}=y+\alpha(x-y)>)
![](https://latex.codecogs.com/svg.latex?x^{\alpha}=\alpha&space;x+y-\alpha&space;y)

**Выпуклое множество** в _аффинном_ или _векторном_ пространстве — множество, в котором все точки отрезка, образуемого любыми двумя точками данного множества, также принадлежат данному множеству.

Непустое множество ![](https://latex.codecogs.com/svg.latex?D\subseteq&space;R^{n}) называется **выпуклым множеством**, если
для любых элементов _x_ и _y_ из _D_ соединяющий их отрезок ![](https://latex.codecogs.com/svg.latex?[x,y]\subset&space;D), т.е.
![](https://latex.codecogs.com/svg.latex?\forall&space;x,y\in&space;D) и ![](https://latex.codecogs.com/svg.latex?\forall&space;\alpha\in[0,1])

![](<https://latex.codecogs.com/svg.latex?x^{\alpha}=\alpha*x+(1-\alpha)*y\in&space;D>)

Пустое множество считается выпуклым по определению.
Операция пересечения, примененная к совокупности (конечной или бесконечной) выпуклых множеств не нарушает выпуклости, а операция объединения может ее нарушить.
Операции сложения, вычитания, домножения на числа не нарушают
выпуклости.

**Примеры**

![](../images/ticket03-1.png)

Пусть ![](https://latex.codecogs.com/svg.latex?G_{i}) выпуклое множество, ![](https://latex.codecogs.com/svg.latex?i=\overline{1,n})
Доказать, что ![](https://latex.codecogs.com/svg.latex?\bigcap_{i=1}^{n}G_{i}) выпукло

![](https://latex.codecogs.com/svg.latex?G_{1},G_{2}) - выпуклые; ![](https://latex.codecogs.com/svg.latex?G_{1}\cap&space;G_{2}) - выпуклое?

Пусть x и y принадлежат этому пересечению ![](<https://latex.codecogs.com/svg.latex?\widetilde{(G)}>)
Доказать, что ![](<https://latex.codecogs.com/svg.latex?\alpha&space;x+(1-\alpha)*y\in\widetilde{G}>)

**Доказательство:**

![](https://latex.codecogs.com/svg.latex?x\in\widetilde{G},x\in&space;G_{1},x\in&space;G_{2}) - выпуклое

![](https://latex.codecogs.com/svg.latex?y\in\widetilde{G},y\in&space;G_{1},y\in&space;G_{2}) - выпуклое

![](<https://latex.codecogs.com/svg.latex?z^{\alpha}=\alpha&space;x+(1-\alpha)*y\in&space;G_{1}>) (т.к. G1 - выпуклое)

![](<https://latex.codecogs.com/svg.latex?z^{\alpha}=\alpha&space;x+(1-\alpha)*y\in&space;G_{2}>) (т.к. G2 - выпуклое)

![](https://latex.codecogs.com/svg.latex?%5Cleft.%5Cbegin%7Bmatrix%7Dz%5E%7B%5Calpha%7D%5Cin%20G_%7B1%7D%20%5C%5C%20z%5E%7B%5Calpha%7D%5Cin%20G_%7B2%7D%20%5C%5C%20%5Cwidetilde%7BG%7D%3DG_%7B1%7D%5Ccap%20G_%7B2%7D%20%5Cend%7Bmatrix%7D%5Cright%5C%7D%5CRightarrow%20z%5E%7B%5Calpha%7D%5Cin%20%5Cwidetilde%7BG%7D%5CRightarrow%20%5Cwidetilde%7BG%7D) выпуклое


# 4. Выпуклая функция – определение, пояснение с помощью рисунка.

### Определения

-   **Функцию** Q , определенную на выпуклом множестве D , называют **выпуклой** на D , если epiQ (D ) - выпуклое множество.
    -   Пусть на множестве ![](https://latex.codecogs.com/svg.latex?D%5Csubseteq%20R%5E%7Bn%7D) задана функция Q. Множество ![](https://latex.codecogs.com/svg.latex?epiQ%28D%29%5Csubseteq%20R%5E%7Bn+1%7D) называют ее **надграфиком** (**эпиграфом**), если
        ![](https://latex.codecogs.com/svg.latex?epiQ%28D%29%3D%5C%7B%28x%3Bu%29%3Ax%5Cin%20D%2Cu%5Cin%20%5C%5BQ%28x%29%2C%5Cinfty%20%5C%5D%5C%7D)
-   **Функция** Q , определенная на выпуклом множестве ![](https://latex.codecogs.com/svg.latex?D%5Csubseteq%20R%5E%7Bn%7D), называется **выпуклой** (**выпуклой вниз**) на D , если ![](https://latex.codecogs.com/svg.latex?%5Cforall%20x%2Cy%20%5Cin%20D%2C%5Cforall%20%5Calpha%20%5Cin%20%5C%5B0%2C1%5C%5D)
  
    ![](https://latex.codecogs.com/svg.latex?Q%28%5Calpha%20x+%281-%5Calpha%29y%29%5Cleqslant%20%5Calpha%20Q%28x%29+%281-%5Calpha%29Q%28y%29)
-   Если при тех же условиях вместо неравенства вида «≤» выполняется неравенство вида «≥», то **функция** называется **вогнутой (выпуклой вверх)**. Если ![](https://latex.codecogs.com/svg.latex?%5Cforall%20x%2Cy%20%5Cin%20D%2C%5Cforall%20%5Calpha%20%5Cin%20%5C%5B0%2C1%5C%5D)
    
    ![](https://latex.codecogs.com/svg.latex?Q%28%5Calpha%20x+%281-%5Calpha%29y%29%3C%28%3E%29%20%5Calpha%20Q%28x%29+%281-%5Calpha%29Q%28y%29) функция называется **строго выпуклой (строго вогнутой)**.
-   Согласно последних определений **выпуклость функции** Q на D
    **геометрически** означает, что для всякого отрезка [x, y], включенного в D, график этого отрезка (![](https://latex.codecogs.com/svg.latex?0%20%5Cleqslant%20%5Calpha%20%5Cleqslant%201)) проходит нестрого ниже соответствующей хорды, опирающейся на значения Q (x) и Q (y) (рис. 2.1).

![](../images/ticket04-1.png)

-   Если **функция** Q является **аффинной**, т.е. Q (x) = a ⋅ x + b , то она **одновременно и выпукла и вогнута**.

### Критерий выпуклости дифференцируемой функции Q (x)

На открытом выпуклом множестве D функция Q (x) выпукла тогда и только тогда, когда ![](https://latex.codecogs.com/svg.latex?%5Cforall%20x%2Cy%20%5Cin%20D%20%3AQ%28x%29%5Cgeqslant%20Q%28y%29+%28%5Cbigtriangledown%20Q%28y%29%2Cx-y%29)

Неравенство означает, что график (поверхность) функции всюду проходит нестрого выше ее линейного приближения (касательной гиперплоскости), построенного по измерениям функции Q и ее градиента ∇Q в произвольной точке y из D.


# 1. Постановка задачи динамического программирования (можно на примере).

## Общая постановка задачи динамического программирования

Найти такое начальное состояние ![](<https://latex.codecogs.com/svg.latex?x_{0}^{*}=x_{0}(t^{s})\in&space;X^{s}>) и такой допустимый набор управлений ![](https://latex.codecogs.com/svg.latex?u_{1}^{*},u_{2}^{*},\dots,u_{N}^{*}), переводящий систему в одно из состояний ![](<https://latex.codecogs.com/svg.latex?x_{N}^{*}=x^{*}(t_{f})\in&space;X^{f}>), чтобы общие затраты, являющиеся аддитивной функцией затрат, были минимальны (или максимальны, если прибыль).

Пояснения к постановке задачи:

-   ![](<https://latex.codecogs.com/svg.latex?u_{k}=u(t_{k})>) - **управление** в момент времени ![](https://latex.codecogs.com/svg.latex?t_{k})
-   ![](<https://latex.codecogs.com/svg.latex?x_{k}=x(t_{k})>) - **состояние** в момент времени ![](https://latex.codecogs.com/svg.latex?t_{k})

**Динамическая система (ДС)** - объект, для которого можно однозначно определить ![](https://latex.codecogs.com/svg.latex?x(t),&space;\forall&space;\bar{t}&space;>&space;t) при известном управлении ![](<https://latex.codecogs.com/svg.latex?u(\tilde{\iota&space;}),&space;\tilde{\iota&space;}&space;\in&space;\left&space;[&space;t,&space;\bar{t}&space;\right&space;]>), и зная описание x(t) данного объекта.

ДС определяется набором ![](https://latex.codecogs.com/svg.latex?\left&space;\langle&space;X,T,F,U&space;\right&space;\rangle), где:

-   X - множество состояний
    -   ![](https://latex.codecogs.com/svg.latex?X_{0}) - множество начальных состояний
    -   ![](https://latex.codecogs.com/svg.latex?X_{N}) - множество конечных состояний
-   T - множество допустимых моментов времени
-   F - множество операторов или оператор, позволяющий по x(t) определить x(![](https://latex.codecogs.com/svg.latex?\bar{t}))
-   U - множество значений управлений, зависящих от момента времени и текущего состояния

**Оператор ДС/определение ДС** - ![](<https://latex.codecogs.com/svg.latex?x_{k+1}=f_{k+1}(x_{k},U_{k+1})>)

![](<https://latex.codecogs.com/svg.latex?d_{k+1}(x_{k},U_{k+1})>) - функция доходов/затрат на текущем шаге

**Требования к ДС:**

-   новые состояния и функции затрат/доходов зависят только от предыдущего состояния, управления и момента времени
-   управление зависит от предыдущего состояния и момента времени


# 6.	Критерий выпуклости для дважды непрерывно дифференцируемой функции.


### Сначала разберемся в некоторых в понятиях:
- **Матрица Гессе**: 
Матрицей Гессе функции m переменных ![](https://latex.codecogs.com/svg.latex?y(x_{1},..,x_{n})) называется матрица, составленная из вторых ![](https://latex.codecogs.com/svg.latex?y(x_{1},..,x_{n})) по всем переменным
- **Гессиан функции**: 
симметрическая квадратичная форма, описывающая поведение функции во втором порядке.
Для функции f, дважды дифференцируемой в точке ![](https://latex.codecogs.com/svg.latex?x\in&space;R^{n})
![](https://latex.codecogs.com/svg.latex?H(x)=\sum_{i=1}^{n}\sum_{j=1}^{n}a_{ij}x_{i}x_{j}),
описывающую наилучшее квадратичное приближение функции в некоторой окрестности точки x и имеющую матрицу вида:
![](https://wikimedia.org/api/rest_v1/media/math/render/svg/389411defb8c9662a366a1d87c25c197c1c56dc4) 
так называемую матрицу Гессе, определитель которой обычно подразумевается под **Гессианом**
Про квадратичную форму можно почитать [здесь](https://studfiles.net/preview/6144690/page:5/)

- ![](https://latex.codecogs.com/svg.latex?d}) - скорее всего подразумевается вектор 
- ![](https://latex.codecogs.com/svg.latex?d^{T}) - транспонированный вектор 
- Непрерывная функция - функция y=f(x) называется непрерывной в точке ![](https://latex.codecogs.com/svg.latex?x_{0}), если ![](https://latex.codecogs.com/svg.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=f(x_{0}))
- Симеетричная матрица ![](https://latex.codecogs.com/svg.latex?A^{T}=A) 
- дважды непрерывно дифференцируемые функции — функции имеющие непрерывную вторую производную.

### Теперь попробуем разобраться в билете
Пусть Q определена на открытом выпуклом множестве D. Q выпукла на D тогда и только тогда, когда матрица Гессе (обозначим ее ![](https://latex.codecogs.com/svg.latex?\triangledown_{2}Q(x))) неотрицательно определена на D, т.е. ∀x∈D и произвольного d ![](https://latex.codecogs.com/svg.latex?d^{T}\triangledown_{2}Q(x)d\geq0). Заметим, что в силу непрерывности вторых частных производных матрица Гессе будет симметрической.

**Комментарий**: Напомним, что характер знакоопределенности симметрической матрицы ![](https://latex.codecogs.com/svg.latex?A^{T}=A)  определяется по знаку квадратичной формы ![](https://latex.codecogs.com/svg.latex?d^{T}Ad)  для ![](https://latex.codecogs.com/svg.latex?d\neq&space;0) . Если знак может быть различен для разных d , то матрицу A называют знаконеопределенной.

В интернете существует еще одно определение для частного случая. Для того чтобы функция f, дважды дифференцируемая в интервале (a,b), была выпуклой вниз (вверх) на (a,b), необходимо и достаточно, чтобы ![](https://latex.codecogs.com/svg.latex?f^{''}(x)\geq&space;0) (![](https://latex.codecogs.com/svg.latex?f^{''}(x)\leq&space;0) ) во всех точках ![](https://latex.codecogs.com/svg.latex?x\in&space;(a,b)).


# 7. Связь знакоопределенности симметрической матрицы со знаками собственных чисел.

Пусть A - симметрическая матрица. A называется неотрицательно определенной (A>=0), если для любого d
![](https://latex.codecogs.com/svg.latex?d^{T}Ad\geq&space;0), где d - вектор

Положительно определена ![](https://latex.codecogs.com/svg.latex?d^{T}Ad>&space;0)

Знаконеопределена, если существует вектор d', что
![](https://latex.codecogs.com/svg.latex?(d')^{T}Ad'>&space;0) и ![](https://latex.codecogs.com/svg.latex?(d'')^{T}Ad''<&space;0)

Положительная определенность матрицы связана с положительностью ее главных миноров

Матрица положительно определена, если ![](https://latex.codecogs.com/svg.latex?\Delta_{1}>0,\Delta_{2}>0,...,\Delta_{n}>0)

![](../images/ticket07-1.png)

Матрица отрицательно определена, если знаки главных миноров чередуются.
![](https://latex.codecogs.com/svg.latex?\Delta_{1}<0,\Delta_{2}>0,\Delta_{3}<0,\Delta_{4}>0)
Если хотя бы 1 минор обратился в 0, то критерий не применим(Критерий Сильвестра)

Напомним, что характер знакоопределенности симметрической матрицы ![](https://latex.codecogs.com/svg.latex?A&space;=&space;A^{T}) определяется по знаку квадратичной формы ![](https://latex.codecogs.com/svg.latex?d^{T}Ad) для d ≠ 0. Если знак может быть различен для разных d , то матрицу A называют знаконеопределенной.

Известно, что собственные числа ![](https://latex.codecogs.com/svg.latex?\lambda_{1},\lambda_{2},...,\lambda_{n}) симметрической матрицы всегда действительны, а представление соответствующей ей квадратичной формы в каноническом виде приводит к выражению ![](https://latex.codecogs.com/svg.latex?\sum_{i=1}^{n}\lambda_{i}*u_{i}^{2}). Таким образом, знаки набора собственных чисел ![](https://latex.codecogs.com/svg.latex?\lambda_{1},\lambda_{2},...,\lambda_{n}) полностью определяют характер знакоопределенности матрицы, например при ![](<https://latex.codecogs.com/svg.latex?\lambda_{i}\geq0(i=1,...,n)>) матрица A будет неотрицательно определена.


# 8. Градиент. Производная по направлению.

## Из методички

## Вектор градиента и касательная гиперплоскость
Будем обозначать вектор градиента следующим образом
![](https://latex.codecogs.com/svg.latex?%5Cbigtriangledown%20Q%28x%29%5Cbegin%7Bpmatrix%7D%20%5Cfrac%7B%5Cpartial%20Q%7D%7B%5Cpartial%20x_%7B1%7D%7D%28x%29%5C%5C%20%5Cdots%20%5C%5C%20%5Cfrac%7B%5Cpartial%20Q%7D%7B%5Cpartial%20x_%7Bn%7D%7D%28x%29%20%5Cend%7Bpmatrix%7D)

Рассмотрим геометрическое место точек x, для которых Q(x) = C. В общем случае (а именно, при выполнении условия, когда ![](https://latex.codecogs.com/svg.latex?\bigtriangledown&space;Q(x)\neq&space;0) во всех точках указанного множества), это будет поверхность, которую называют **поверхностью (гиперповерхностью) равного уровня**. Пусть она проходит через точку ![](https://latex.codecogs.com/svg.latex?x^{0}) . Тогда ![](https://latex.codecogs.com/svg.latex?C=Q(x^{0})) и на поверхности равного уровня выполняется равенство
![](https://latex.codecogs.com/svg.latex?Q(x)=Q(x^{0}))

Если функция Q(x) дифференцируема в точке ![](https://latex.codecogs.com/svg.latex?x^{0}) , то
![](https://latex.codecogs.com/svg.latex?Q(x)=Q(x^{0})&plus;\sum_{i=1}^{n}\frac{\partial&space;Q(x^{0})}{\partial&space;x_{i}}(x_{i}-x_{i}^{0})&plus;o(||x-x^{0}||))

При этом с использованием векторной формы записи:
![](https://latex.codecogs.com/svg.latex?%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%5Cfrac%7B%5Cpartial%20Q%28x%5E%7B0%7D%29%7D%7B%5Cpartial%20x_%7Bi%7D%7D%28x_%7Bi%7D-x_%7Bi%7D%5E%7B0%7D%29%3D%28%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%2Cx-x%5E%7B0%7D%29)

Подставляя эти выражения в (3.3) и сокращая на Q(![](https://latex.codecogs.com/svg.latex?x^{0})), получим следующее представление поверхности равного уровня:
![](https://latex.codecogs.com/svg.latex?%28%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%2Cx-x%5E%7B0%7D%29&plus;o%28%7C%7Cx-x%5E%7B0%7D%7C%7C%29%3D0)

Отбрасывая последний нелинейный член суммы, будем иметь **линейную аппроксимацию поверхности** в окрестности ![](https://latex.codecogs.com/svg.latex?x^{0}):
![](https://latex.codecogs.com/svg.latex?%28%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%2Cx-x%5E%7B0%7D%29%3D0)

Мы получили **уравнение касательной** в точке ![](https://latex.codecogs.com/svg.latex?x^{0}) гиперплоскости. Очевидно, вектор ∇Q(![](https://latex.codecogs.com/svg.latex?x^{0})) ортогонален к ней. Следовательно, вектор градиента локально ортогонален также поверхности равного уровня функции в точке ![](https://latex.codecogs.com/svg.latex?x^{0}).

![](../images/ticket08-2.png)

## Производная по направлению, множество направлений строгого локального убывания

Пусть v – вектор направления. Считаем его нормированным (![](https://latex.codecogs.com/svg.latex?||v||=1)).
По определению
![](https://latex.codecogs.com/svg.latex?%5Cfrac%7B%5Cpartial%20Q%7D%7B%5Cpartial%20%5Cnu%7D%28x%5E%7B0%7D%29%3D%5Cfrac%7BdQ%28x%5E%7B0%7D&plus;%5Ctau%20%5Cnu%29%7D%7Bd%5Ctau%7D%7C_%7Bx%3D&plus;0%7D%3D%5Clim_%7Bx%5Crightarrow%20&plus;0%7D%5Cfrac%7BQ%28x%5E%7B0%7D&plus;%5Ctau%20%5Cnu%29-Q%28x%5E%7B0%7D%29%7D%7B%5Ctau%7D)

####Замечание.
Производная по направлению может существовать и при отсутствии дифференцируемости Q в точке ![](https://latex.codecogs.com/svg.latex?x^{0}). В качестве примера можно указать на недифференцируемую в x = 0 функцию скалярного аргумента Q(x) = |x|, у которой производные по двум направлениям v = ±1 в точке 0 существуют и обе равны 1.

Получим **выражение для производной по направлению** в случае дифференцируемости функции в точке ![](https://latex.codecogs.com/svg.latex?x^{0}), используя представление (3.4).
![](https://latex.codecogs.com/svg.latex?%5Cfrac%7B%5Cpartial%20Q%28x%5E%7B0%7D%29%7D%7B%5Cpartial%20%5Cnu%7D%3D%5Clim_%7Bx%5Crightarrow%20&plus;0%7D%5Cfrac%7BQ%28x%5E%7B0%7D%29&plus;%28Q%28x%5E%7B0%7D%29%2C%5Ctau%20%5Cnu&plus;o%28%5Ctau%20%7C%7C%5Cnu%7C%7C%29-Q%28x%5E%7B0%7D%29%7D%7B%5Ctau%7D%3D%28%5Cbigtriangledown%20Q%28x%5E%7B0%7D%2C%5Cnu%29%29)

#### Замечание.
Множество направлений строгого локального убывания функции, дифференцируемой в точке ![](https://latex.codecogs.com/svg.latex?x^{0}), есть открытое полупространство вида:
![](https://latex.codecogs.com/svg.latex?%5C%7B%5Cnu%20%3A%28%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%2C%5Cnu%29%3C0%5C%7D)
с границей, ортогональной ∇Q(![](https://latex.codecogs.com/svg.latex?x^{0}))

![](../images/ticket08-4.png)

![](../images/ticket08-5.png)

## Из лекций

**Градиент** - направление наибольшего возрастания функции
![](https://latex.codecogs.com/svg.latex?%28%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%2C%5Cnu%29%5Crightarrow%20min)

![](https://latex.codecogs.com/svg.latex?cos%5Cvarphi%20%3D-1)

![](https://latex.codecogs.com/svg.latex?%5Cvarphi%20%3D%5Cpi) - ![](https://latex.codecogs.com/svg.latex?%5Cnu) направлен противоположно градиенту

![](https://latex.codecogs.com/svg.latex?%5Cnu%20%3D%20-%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29) - **антиградиент**


# 9. Теорема Ферма.

![](https://latex.codecogs.com/svg.latex?minQ(x),x&space;\in&space;R^{n})

**Необходимое условие:**
-   Нахождение условия экстремума первого порядка при отсутствии ограничений

**Формулировка:**

Если ![](https://latex.codecogs.com/svg.latex?x^{0}) - локальный min функции Q в ![](https://latex.codecogs.com/svg.latex?R^{n}), Q дифференцируема в ![](https://latex.codecogs.com/svg.latex?x^{0}), то градиент ![](https://latex.codecogs.com/svg.latex?\bigtriangledown&space;Q(x^{0})=0)

**Доказательство:**

Пусть ![](https://latex.codecogs.com/svg.latex?\bigtriangledown&space;Q(x^{0})\neq0)

![](https://latex.codecogs.com/svg.latex?V=\frac{\bigtriangledown&space;Q(x^{0})}{|\bigtriangledown&space;Q(x^{0})|})

![](https://latex.codecogs.com/svg.latex?Q%28x%5E%7B0%7D&plus;%5Ctau%20V%29%3DQ%28x%5E%7B0%7D%29&plus;%5Cfrac%7BdQ%28x%5E%7B0%7D&plus;%5Ctau%20V%29%7D%7Bd%5Ctau%20%7D%5Ctau%20&plus;O%28%5Ctau%20%29%3DQ%28x%5E%7B0%7D%29&plus;%28%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%2CV%29%5Ctau%20&plus;O%28%5Ctau%20%29%3DQ%28x%5E%7B0%7D%29&plus;%7C%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%7C%20%5Cfrac%7B%7C%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%7C%7D%7B%7C%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%7C%7D%28-1%29%5Ctau%20&plus;O%28%5Ctau%20%29%3DQ%28x%5E%7B0%7D%29-%5Ctau%20%7C%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%7C&plus;O%28%5Ctau%20%29%3CQ%28x%5E%7B0%7D%29)

Получено противоречие, значит предположение неверно.


# 10.	Функция Лагранжа для общей задачи математического программирования.

### Для начала разберем понятие математического программирования:
- **Оптимизация**: 
  - в математике, информатике и исследовании операций задача нахождения экстремума (минимума или максимума) целевой функции в некоторой области конечномерного векторного пространства, ограниченной набором линейных и/или нелинейных равенств и/или неравенств.
  - Теорию и методы решения задачи оптимизации изучает математическое программирование.
- **Математическое программирование** — это область математики, разрабатывающая теорию, численные методы решения многомерных задач с ограничениями. 
- **Постановка задачи оптимизации**
  В процессе проектирования ставится обычно задача определения наилучших, в некотором смысле, структуры или значений параметров объектов. Такая задача называется оптимизационной.
- Стандартная математическая задача оптимизации формулируется таким образом. Среди элементов χ, образующих множества Χ, найти такой элемент χ*, который доставляет минимальное значение f(χ*) заданной функции f(χ). 
Для того, чтобы корректно поставить задачу оптимизации, необходимо задать:
  - Допустимое множество ;
  - Целевую функцию — отображение 
  - Критерий поиска (max или min)
- [Подробно здесь](https://ru.wikipedia.org/wiki/%D0%9E%D0%BF%D1%82%D0%B8%D0%BC%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F_(%D0%BC%D0%B0%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B0)#%D0%9F%D0%BE%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0_%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8_%D0%BE%D0%BF%D1%82%D0%B8%D0%BC%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8)
- **Комментарий**: Задачи оптимизации, в которых целевая функция f(x) и функции-ограничения являются линейными функциями, разрешаются так называемыми методами линейного программирования.
В противном случае имеют дело с задачей нелинейного программирования и применяют соответствующие методы.(вот это и есть МНО, господа)

### Задача математического программирования по записям в тетради:
min Q(x)
![](https://latex.codecogs.com/svg.latex?x%5Cin%20D%2C%20D%3D%5Cleft%20%5C%7B%20x%5Cin%20R%5E%7Bn%7D%2C%20g_%7Bi%7D%28x%29%5Cleq%200%2C%20i%3D%5Cbar%7B1%2CN%7D%2C%20h_%7Bj%7D%28x%29%3D0%2Cj%3D%5Cbar%7B1%2CM%7D%20%5Cright%20%5C%7D)
Существует минимум двух типов:
- x* - точка глобального минимума, если ![](https://latex.codecogs.com/svg.latex?\forall&space;x\in&space;D,&space;Q(x^{*})\leq&space;Q(x))
- x* - точка локального минимума, если существует окрестность U(x*): выполняется ![](https://latex.codecogs.com/svg.latex?\forall&space;x\in&space;U(x^{*})\bigcap&space;D,&space;Q(x^{*})\leq&space;Q(x))

### Функция Лагранджа

![](https://latex.codecogs.com/svg.latex?L(\lambda&space;_{0},\lambda&space;_{i},\mu&space;_{j},x)=\lambda&space;_{0}Q(x)&plus;\sum_{i=1}^{n}\lambda&space;_{i}g_{i}(x)&plus;\sum_{j=1}^{M}\mu&space;_{j}h_{j}(x))
![](https://latex.codecogs.com/svg.latex?\lambda&space;_{i},\mu&space;_{j}) - СКОРЕЕ ВСЕГО это коэффициенты Лагранджа
![](https://latex.codecogs.com/svg.latex?\triangledown&space;L=0) - Так можно записать условие разложимости (одно из условий того, что x* является минимумом рассматриваемой функции)

#### Метод множителей Лагранжа
применяемый для решения задач математического программирования (в частности, линейного программирования) — метод нахождения условного экстремума функции f(x), где ![](https://latex.codecogs.com/svg.latex?x\in\mathbb{R}^{n}), относительно m ограничений ![](https://latex.codecogs.com/svg.latex?\varphi_{i}(x)=0), где  i меняется от единицы до m.
- [Метод Лагранджа (без ограничений-неравенств)](https://ru.wikipedia.org/wiki/%D0%9C%D0%B5%D1%82%D0%BE%D0%B4_%D0%BC%D0%BD%D0%BE%D0%B6%D0%B8%D1%82%D0%B5%D0%BB%D0%B5%D0%B9_%D0%9B%D0%B0%D0%B3%D1%80%D0%B0%D0%BD%D0%B6%D0%B0)
- это условие(метод Лагранджа) носит необходимый, но не достаточный характер.


# 11. Теорема Лагранжа – условие оптимальности для задач с равенствами.

**Функция Лагранжа**:
![](https://latex.codecogs.com/svg.latex?L%28%5Clambda_%7B0%7D%2C%5Clambda_%7Bi%7D%2C%5Cmu_%7Bj%7D%2Cx%29%3D%5Clambda_%7B0%7DQ%28x%29+%5Csum_%7Bi%3D1%7D%5E%7BN%7D%5Clambda_%7Bi%7D*g_%7Bi%7D%28x%29+%5Csum_%7Bi%3D1%7D%5E%7BM%7D%5Cmu_%7Bj%7D*h_%7Bj%7D%28x%29)

Для того, чтобы точка x* была локальным минимумом рассматриваемой задачи, необходимо выполнение группы условий:
- требование нетривиальности : ![](https://latex.codecogs.com/svg.latex?(\lambda_{i}^{*},\mu*{1}^{\*},...,\mu*{M}^{\*})\neq&space;0)

Если ввести функцию Лагранжа, записав ее с использованием векторных обозначений:
![](https://latex.codecogs.com/svg.latex?L%28x%2C%5Clambda_%7B0%7D%2C%5Clambda%2C%5Cmu%29%3D%5Clambda_%7B0%7DQ%28x%29+%28%5Clambda%2Cg%28x%29%29+%28%5Cmu%2Ch%28x%29%29)
условие разложимости можно представить как условие стационарности
функции Лагранжа: ![](<https://latex.codecogs.com/svg.latex?\nabla&space;L(x^{*},\lambda_{0}^{*},\lambda^{*},\mu^{*})>)=0)

Чтобы ![](<https://latex.codecogs.com/svg.latex?x_{0}>) была локальным экстремумом функции Q(x) с ограничениями ![](<https://latex.codecogs.com/svg.latex?h_{i}(x)=0,i=\overline{1,p}>) , необходимо выполнение условий стационарности ф.Лагранжа по всем ее переменным ![](https://latex.codecogs.com/svg.latex?\nabla&space;h&space;x_{i}\mu=0), ![](https://latex.codecogs.com/svg.latex?%5Cfrac%7B%5Cdelta%20h%7D%7B%5Cdelta%20x%7D%3D0%2C%5Cfrac%7B%5Cdelta%20L%7D%7B%5Cdelta%20%5Cmu_%7B1%7D%7D%3D0%2C...%2C%5Cfrac%7B%5Cdelta%20L%7D%7B%5Cdelta%20%5Cmu_%7Bp%7D%7D%3D0)


# 12. Теорема Каруша – Куна – Таккера.

Для того, чтобы точка ![](https://latex.codecogs.com/svg.latex?x^{*}) была локальным минимумом рассматриваемой задачи, необходимо выполнение группы условий:

a) ![](https://latex.codecogs.com/svg.latex?x^{*}\in&space;D) - **допустимость**

b) ![](<https://latex.codecogs.com/svg.latex?\exists(\lambda_{0}^{*},\lambda_{1}^{*},\dots\lambda_{N}^{*},\mu_{1}^{*},\mu_{2}^{*},\dots\mu_{M}^{*})\neq0>) - **нетривиальность**

c) ![](https://latex.codecogs.com/svg.latex?\lambda_{0}^{*}\geqslant0,\lambda_{1}^{*}\geqslant0,\dots\lambda_{N}^{*}\geqslant0) - **неотрицательность**

d) ![](<https://latex.codecogs.com/svg.latex?-\lambda_{0}^{*}\bigtriangledown&space;Q(x^{*})=\sum_{i=1}^{N}\lambda_{i}^{*}\bigtriangledown&space;g_{i}(x^{*})+\sum_{j=1}^{M}\mu_{j}^{*}\bigtriangledown&space;h(x^{*})>) - **разложимость**

e) ![](<https://latex.codecogs.com/svg.latex?\lambda_{i}^{*}g_{i}(x^{*})=0,(i\in1,...,N)>) - **условие дополняющей нежесткости**

Ограничения-неравенства, обращающиеся в ноль в точке x*, называют активными в этой точке. Для множества номеров активных в точке x* неравенств удобно ввести специальное обозначение – I (x*) .

Укажем на содержательный смысл условий дополняющей нежесткости. Из (е) следует, что для неактивных в точке x* неравенств ![](https://latex.codecogs.com/svg.latex?\lambda_{i}=0) . Следовательно, неактивные ограничения не входят в условие разложимости (d) и не влияют на выполнение условий оптимальности. Фактически, в (d) суммирование выполняется только по номерам ![](https://latex.codecogs.com/svg.latex?i\in&space;I(x^{*})) .

Если неравенство активное, то ![](https://latex.codecogs.com/svg.latex?g_{i}(x^{*})=0) , то ![](https://latex.codecogs.com/svg.latex?g_{r}(x^{*})<0) , тогда ![](https://latex.codecogs.com/svg.latex?\lambda&space;_{r}^{*}=0).

Заметим, что для задач без ограничений-равенств аналогичную теорему обычно называют теоремой **_Куна-Таккера_** (при этом все, что связано с равенствами, из условий теоремы следует исключить), а для задач без ограничений-неравенств – теоремой **_Лагранжа_**.

# 13. Активные ограничения. Условия дополняющей нежесткости.

![](<https://latex.codecogs.com/svg.latex?\lambda_{j}^{*}g_{j}(x^{*})=0,&space;j\in\left&space;[1,N&space;\right]>) - **условие дополняющей нежесткости**

-   ![](https://latex.codecogs.com/svg.latex?x^{*}) - точка локального минимума
-   ![](https://latex.codecogs.com/svg.latex?\lambda_{j}) - константа
-   ![](https://latex.codecogs.com/svg.latex?g_{j}) - ограничение

**Активное ограничение** - ограничение неравенства, обращающееся в 0 в точке ![](https://latex.codecogs.com/svg.latex?x^{*})

![](<https://latex.codecogs.com/svg.latex?I(x^{*})>) - множество номеров, активных в точке ![](https://latex.codecogs.com/svg.latex?x^{*}) неравенств

Неактивные неравенства не входят в условие разложимости.

-   Если неравенство активно, то ![](<https://latex.codecogs.com/svg.latex?g_{i}(x^{*})=0>).
-   Если неравенство неактивно, ![](<https://latex.codecogs.com/svg.latex?g_{r}(x^{*})<0>), тогда ![](https://latex.codecogs.com/svg.latex?\lambda_{r}^{*}=0) (из условия дополняющей нежесткости)


# 14.	Геометрический смысл условий К.-К.-Т при числе переменных n = 2 

### Напомним основные понятия:
- **Антиградиент функции**:  
 — вектор, компоненты которого совпадают по абсолютной величине с компонентами градиента функции, но имеют противоположный знак. Показывает направление наискорейшего убывания функции.
- **Линейная независимость системы векторов**:
 — Если линейная комбинация ![](https://latex.codecogs.com/svg.latex?\lambda_{1}\alpha^{(1)}&plus;\lambda_{2}\alpha^{(2)}&plus;..&plus;\lambda_{p}\alpha^{(p)}) представляет собой нулевой вектор только тогда, когда все числа ![](https://latex.codecogs.com/svg.latex?\lambda_{1},\lambda_{2},..,\lambda_{p}) равны нулю, то система векторов ![](https://latex.codecogs.com/svg.latex?\alpha^{(1)},\alpha^{(2)},..,\alpha^{(p)}) называется линейно независимой.
- **Условие регулярности Слейтера**:
Оно применимо только при следующих условиях:
![](https://latex.codecogs.com/svg.latex?g_{1}(x),..,g_{N}(x)) выпуклы (вниз), ![](https://latex.codecogs.com/svg.latex?h_{1}(x),..,h_{M}(x)) либо отсутствуют,
либо аффинны.
Если при этих условиях в множестве D существует
допустимая точка x , все неравенства в которой выполняются строго, т.е. ![](https://latex.codecogs.com/svg.latex?g_{i}(x^{*})<&space;0(i=1,..,N)) , то область D регулярна во всех своих точках.
Для невыпуклого гладкого случая можно использовать достаточное условие регулярности в форме независимости градиентов: если в точке ![](https://latex.codecogs.com/svg.latex?x^{*}) активны (т.е. обращаются в равенства) ограничения ![](https://latex.codecogs.com/svg.latex?g_{i1}(x^{*})=0,..,g_{ir}(x^{*})=0) и система векторов ![](https://latex.codecogs.com/svg.latex?\bigtriangledown&space;g_{i1}(x^{*}),..,\bigtriangledown&space;g_{ir}(x^{*}),\bigtriangledown&space;h_{1}(x^{*}),..,\bigtriangledown&space;h_{M}(x^{*})) линейно независима, то область D регулярна в точке ![](https://latex.codecogs.com/svg.latex?x^{*}).

### Геометрический смысл условий К.-К.-Т при числе переменных n = 2
Предположим, что в точке ![](https://latex.codecogs.com/svg.latex?x^{*}) активны только два ограничения с номерами 1 и 2.

Вектора градиентов ![](https://latex.codecogs.com/svg.latex?\bigtriangledown&space;g_{1}(x^{*}),\bigtriangledown&space;g_{2}(x^{*}))для этих ограничений являются внешними нормалями к соответствующим фрагментам границы допустимого множества. В общем случае, если фрагменты границ пересекаются без касания, система этих векторов линейно независима, следовательно, допустимое множество будет регулярно в точке ![](https://latex.codecogs.com/svg.latex?x^{*}) и в системе условий Куна-Таккера можно принять ![](https://latex.codecogs.com/svg.latex?\lambda_{0}=1). Из условий теоремы ККТ следует, что если ![](https://latex.codecogs.com/svg.latex?x^{*}) – локальный минимум, то ![](https://latex.codecogs.com/svg.latex?-\bigtriangledown&space;Q(x^{*})=\lambda^{*}_{1}\cdot&space;\bigtriangledown&space;g_{1}(x^{*})&plus;&space;\lambda^{*}_{2}\cdot&space;\bigtriangledown&space;g_{2}(x^{*})) при ![](https://latex.codecogs.com/svg.latex?\lambda_{1}\geq&space;0,\lambda_{2}\geq&space;0,).

Геометрически это означает, что вектор антиградиента целевой функции в точке x* содержится в замкнутом конусе A(x*) , натянутом на внешние нормали к границам активных неравенств (рис. 3.1 (а)):

![](../images/ticket14-1.png)

![](https://latex.codecogs.com/svg.latex?A%28x%5E%7B*%7D%29%3D%5Cleft%20%5C%7B%20%5Cnu%20%3A%20%5Cnu%3D%5Clambda_%7B1%7D%5Ccdot%20%5Cbigtriangledown%20g_%7B2%7D%28x%5E%7B*%7D%29&plus;%5Clambda_%7B2%7D%5Ccdot%20%5Cbigtriangledown%20g_%7B1%7D%28x%5E%7B*%7D%29%3B%5Clambda_%7B1%7D%5Cgeq%200%2C%20%5Clambda_%7B2%7D%5Cgeq%200%5Cright%20%5C%7D.)
В случае дифференцируемости функции ∂Q(x*) ∂v = (∇Q(x*), v).
Поэтому направления ее строгого локального убывания образуют открытый конус B(x*) , показанный на рис. 3.1 (b) где
![](https://latex.codecogs.com/svg.latex?B%28x%5E%7B*%7D%29%3D%5Cleft%20%5C%7B%20%5Cnu%20%3A%28%5Cbigtriangledown%20Q%28x%5E%7B*%7D%29%2Cv%29%3E%200%20%5Cright%20%5C%7D).

Для локальной оптимальности ![](https://latex.codecogs.com/svg.latex?x^{*}) требуется локальная (в окрестности точки ![](https://latex.codecogs.com/svg.latex?x^{*})) непересекаемость допустимого множества D с конусом B(![](https://latex.codecogs.com/svg.latex?x^{*})) направлений строгого локального убывания (после перемещения его вершины в точку ![](https://latex.codecogs.com/svg.latex?x^{*})). Чтобы это требование было выполнено, необходимо и достаточно, чтобы внутренняя нормаль к границе конуса B(![](https://latex.codecogs.com/svg.latex?x^{*})) (такой нормалью является вектор антиградиента функции) не покидала конуса A(![](https://latex.codecogs.com/svg.latex?x^{*})) , а это означает возможность разложения (3.4) с неотрицательными коэффициентами.

На рис. 3.2 показан пример ситуации, когда в окрестности точки ![](https://latex.codecogs.com/svg.latex?x^{*})возникло пересечение D с B(![](https://latex.codecogs.com/svg.latex?x^{*})). При этом в разложении (3.4) окажется ![](https://latex.codecogs.com/svg.latex?\lambda^{*}_{1}>0,&space;\lambda^{*}_{2}<0).

![](../images/ticket14-2.png)

Появление отрицательного значения у множителя Лагранжа свидетельствует о возможности строгого уменьшения значения Q(![](https://latex.codecogs.com/svg.latex?x^{*})) за счет ухода с фрагмента границы ![](https://latex.codecogs.com/svg.latex?g_{2}(x)=0) множества D (при этом точка, естественно, не должна покидать допустимое множество).


# 15. Выпуклая задача математического программирования. Условия К.-К.-Т для выпуклой задачи.

Если функции ![](https://latex.codecogs.com/svg.latex?g_%7B1%7D%2C...%2Cg_%7BN%7D) выпуклы (вниз), ограничения – равенства либо отсутствуют, либо аффинны, функция Q(x) выпукла (вниз), то такая задача называется выпуклой. В выпуклой задаче математического программирования все локальные минимумы являются глобальными.

Если задача математического программирования выпукла и при этом допустимая область D регулярна в точке x* (регулярность области в точке – это свойство, гарантирующее, что условия оптимальности всегда выполняются в этой точке при ![](https://latex.codecogs.com/svg.latex?\lambda_{0}^{*}\neq&space;0)), то условия теоремы Каруша-Куна-Таккера (а)-(e)

a) ![](https://latex.codecogs.com/svg.latex?x^{*}\in&space;D) - **допустимость**

b) ![](<https://latex.codecogs.com/svg.latex?\exists(\lambda_{0}^{*},\lambda_{1}^{*},\dots\lambda_{N}^{*},\mu_{1}^{*},\mu_{2}^{*},\dots\mu_{M}^{*})\neq0>) - **нетривиальность**

c) ![](https://latex.codecogs.com/svg.latex?\lambda_{0}^{*}\geqslant0,\lambda_{1}^{*}\geqslant0,\dots\lambda_{N}^{*}\geqslant0) - **неотрицательность**

d) ![](<https://latex.codecogs.com/svg.latex?-\lambda_{0}^{*}\bigtriangledown&space;Q(x^{*})=\sum_{i=1}^{N}\lambda_{i}^{*}\bigtriangledown&space;g_{i}(x^{*})+\sum_{j=1}^{M}\mu_{j}^{*}\bigtriangledown&space;h(x^{*})>) - **разложимость**

e) ![](<https://latex.codecogs.com/svg.latex?\lambda_{i}^{*}g_{i}(x^{*})=0,(i\in1,...,N)>) - **условие дополняющей нежесткости**

будут не только необходимыми, но и достаточными условиями, определяющими точку глобального минимума x\*.


# 16. Регулярность допустимой области. Достаточные условия регулярности.

**Регулярность области в точке** – это свойство, гарантирующее, что условия оптимальности всегда выполняются в этой точке при ![](https://latex.codecogs.com/svg.latex?\lambda&space;_{i}^{*}\neq0)

Можно указать простые достаточные условия регулярности для двух классов задач.

1) _Условие регулярности Слейтера_. Оно применимо только при следующих условиях: g1(x),..., gN (x) выпуклы (вниз), h1(x),...,hM (x) либо отсутствуют, либо аффинны(линейны). Если при этих условиях в множестве D из ![](https://latex.codecogs.com/svg.latex?min%5Cleft%5C%7BQ%28x%29%3Ax%5Cin%20D%5Cright%5C%7D) существует допустимая точка ![](https://latex.codecogs.com/svg.latex?\overline{x}) , все неравенства в которой выполняются строго, т.е. ![](https://latex.codecogs.com/svg.latex?g_{i}(\overline{x})<0&space;(i=1,...,N)) , то область D регулярна во всех своих точках. Из условия Слейтера можно получить следующее _удобное следствие_. Если область D задана аффинными ограничениями и D ≠ ∅, то D регулярна во всех своих точках.

2) Для невыпуклого гладкого случая можно использовать достаточное _условие регулярности в форме независимости градиентов_: если в точке x* активны (т.е. обращаются в равенства) ограничения ![](https://latex.codecogs.com/svg.latex?g_{i1}(x^{*})=0,...,g_{ir}(x^{*})=0) и система векторов ![](https://latex.codecogs.com/svg.latex?%5Cnabla%20g_%7Bi1%7D%28x%5E%7B*%7D%29%2C...%2C%5Cnabla%20g_%7Bir%7D%28x%5E%7B*%7D%29%2C%5Cnabla%20h_%7B1%7D%28x%5E%7B*%7D%29%2C...%2C%5Cnabla%20h_%7BM%7D%28x%5E%7B*%7D%29) линейно независима, то область D регулярна в точке x*.

Выполнение условий регулярности, обеспечивающее ![](https://latex.codecogs.com/svg.latex?\lambda&space;_{i}^{*}\neq0) , позволяет принять *![](https://latex.codecogs.com/svg.latex?\lambda&space;_{i}^{*}=1) (за счет замен множителей Лагранжа), а также не рассматривать альтернативный вариант записи основного градиентного соотношения (d) при ![](https://latex.codecogs.com/svg.latex?\lambda&space;_{i}^{*}=0) . Для невыпуклых задач даже при регулярности допустимого множества в точке x* условия (а)-(е) остаются лишь необходимыми условиями локального минимума, тогда как для выпуклых задач при наличии регулярности условия (а)-(е) становятся критерием глобального минимума.

a) ![](https://latex.codecogs.com/svg.latex?x^{*}\in&space;D) - **допустимость**

b) ![](<https://latex.codecogs.com/svg.latex?\exists(\lambda_{0}^{*},\lambda_{1}^{*},\dots\lambda_{N}^{*},\mu_{1}^{*},\mu_{2}^{*},\dots\mu_{M}^{*})\neq0>) - **нетривиальность**

c) ![](https://latex.codecogs.com/svg.latex?\lambda_{0}^{*}\geqslant0,\lambda_{1}^{*}\geqslant0,\dots\lambda_{N}^{*}\geqslant0) - **неотрицательность**

d) ![](<https://latex.codecogs.com/svg.latex?-\lambda_{0}^{*}\bigtriangledown&space;Q(x^{*})=\sum_{i=1}^{N}\lambda_{i}^{*}\bigtriangledown&space;g_{i}(x^{*})+\sum_{j=1}^{M}\mu_{j}^{*}\bigtriangledown&space;h(x^{*})>) - **разложимость**

e) ![](<https://latex.codecogs.com/svg.latex?\lambda_{i}^{*}g_{i}(x^{*})=0,(i\in1,...,N)>) - **условие дополняющей нежесткости**


# 17. Условия К.-К.-Т для невыпуклой задачи - разобрать на примере.

## Условия Каруша-Куна-Таккера

Если функции ![](<https://latex.codecogs.com/svg.latex?g_{1}(x),g_{2}(x),\dots,g_{N}(x)>) выпуклы (вниз), ограничения – равенства либо отсутствуют, либо аффинны, функция Q(x) выпукла (вниз), то такая **задача**
называется **выпуклой**. В противном случае **задача невыпукла**.

Для задач, **не обладающих выпуклостью**, необходимые условия наличия в ![](https://latex.codecogs.com/svg.latex?x^{*}) локального минимума дает следующая **теорема Каруша-Куна-Таккера**.

Для того, чтобы точка ![](https://latex.codecogs.com/svg.latex?x^{*}) была локальным минимумом рассматриваемой задачи, необходимо выполнение группы условий:

-   ![](https://latex.codecogs.com/svg.latex?x^{*}\in&space;D) - допустимость
-   ![](<https://latex.codecogs.com/svg.latex?\exists(\lambda_{0}^{*},\lambda_{1}^{*},\dots\lambda_{N}^{*},\mu_{1}^{*},\mu_{2}^{*},\dots\mu_{M}^{*})\neq0>) - нетривиальность
-   ![](https://latex.codecogs.com/svg.latex?\lambda_{0}^{*}\geqslant0,\lambda_{1}^{*}\geqslant0,\dots\lambda_{N}^{*}\geqslant0) - неотрицательность
-   ![](<https://latex.codecogs.com/svg.latex?-\lambda_{0}^{*}\bigtriangledown&space;Q(x^{*})=\sum_{i=1}^{N}\lambda_{i}^{*}\bigtriangledown&space;g_{i}(x^{*})+\sum_{j=1}^{M}\mu_{j}^{*}\bigtriangledown&space;h(x^{*})>) - разложимость
-   ![](<https://latex.codecogs.com/svg.latex?\lambda_{j}^{*}g_{j}(x^{*})=0,&space;j\in\left&space;[1,N&space;\right]>) - условие дополняющей нежесткости

## Пример невыпуклой задачи

Пусть **требуется найти глобальный минимум** в задаче:
![](https://latex.codecogs.com/svg.latex?min\left&space;{x_{1}x_{3}:x&space;\in&space;D&space;},D={x&space;\in&space;R^{3}:x_{2}\geqslant&space;1-x_{2},x_{1}-2\leqslant&space;x_{3},x_{2}+x_{3}=2})

Допустимая область D задана линейными ограничениями (равенствами и неравенствами) и является выпуклой. Более того, нетрудно подобрать такую допустимую точку, например, ![](https://latex.codecogs.com/svg.latex?x_{1}=1,x_{2}=1,x_{3}=1), что неравенства выполняются строго, следовательно, для области D выполнено достаточное условие регулярности Слейтера. Поскольку все ограничения в задаче аффинны, можно было для выяснения вопроса о регулярности воспользоваться не самим условием Слейтера, а следствием из него для областей такого вида. Тогда было бы достаточно установить только непустоту множества D . Это значит, что в условиях Каруша-Куна-Таккера всегда можно считать ![](https://latex.codecogs.com/svg.latex?\lambda_{0}=1).

**Матрица Гессе** имеет вид:
![](https://latex.codecogs.com/svg.latex?%5Cbigtriangledown_%7Bxx%7D%5E%7B2%7DQ%28x%29%3D%5Cbegin%7Bpmatrix%7D%200%26%200%26%201%5C%5C%200%26%200%26%200%5C%5C%201%26%200%26%200%20%5Cend%7Bpmatrix%7D)

Поскольку **главные миноры** матрицы вторых производных **обращаются в нули**, то по критерию Сильвестра **нельзя выяснить знакоопределенность матрицы**.

Запишем ее характеристический полином относительно переменной p : ![](https://latex.codecogs.com/svg.latex?p^{3}-p). Подсчитав собственные числа, видим, что ![](https://latex.codecogs.com/svg.latex?p_{1}=0,p_{2,3}=\pm&space;1). Следовательно, **матрица Гессе является знаконеопределенной**, а минимизируемая **функция не является выпуклой**.

Поскольку задача не является выпуклой, условия Каруша-Куна-Таккера не будут являться достаточными, а будут лишь необходимыми условиями локального минимума. Поскольку условия оптимальности в этой задаче лишь только необходимы, то сначала следует доказать существование минимума в этой задаче. Если решение существует, то далее придется отыскивать все точки, где эти условия выполняются, и затем, сравнивая значение функции в этих точках, определять глобальный минимум.

В рассматриваемой задаче для упрощения решения можно, используя связь ![](https://latex.codecogs.com/svg.latex?x_{2}+x_{3}=2), исключить ![](https://latex.codecogs.com/svg.latex?x_{2}) из ограничений.
Тогда задача примет вид:
![](<https://latex.codecogs.com/svg.latex?min\left{x_{1}x_{3}:x\in&space;D_{2}},D_{2}={(x_{1},x_{3})\in&space;R^{2}:x_{3}-x_{1}\geqslant&space;1,x_{1}-x_{3}\leqslant&space;2}>)

Поскольку в пространстве переменных ![](https://latex.codecogs.com/svg.latex?x_{1},x_{3}) матрица вторых производных минимизируемой функции новой задачи
![](https://latex.codecogs.com/svg.latex?%5CGamma%20%3D%5Cbegin%7Bpmatrix%7D%200%26%201%5C%5C%201%26%200%20%5Cend%7Bpmatrix%7D)
имеет собственные числа ![](https://latex.codecogs.com/svg.latex?p_{1,2}=\pm1),то поверхность ![](https://latex.codecogs.com/svg.latex?z=x_{1}x_{3}) является седловой (что, впрочем, непосредственно видно из ее формулы) и функция не имеет конечных безусловных минимумов. При этом либо минимума вообще нет, либо он достигается на границах области. Проанализируем вопрос о существовании минимума.

**Проведем исследование**. Область ![](https://latex.codecogs.com/svg.latex?D_{2}) неограниченна. Изучим поведение функции вдоль прямых ![](<https://latex.codecogs.com/svg.latex?x_{1}-x_{3}=c(1\leqslant&space;c&space;\leqslant&space;2)>), параллельных границам области. Введем вектор ![](<https://latex.codecogs.com/svg.latex?v=(1;1)>), направленный вдоль этих прямых. Функция Q (x) имеет по направлению ν положительную вторую производную, поскольку
![](https://latex.codecogs.com/svg.latex?%5Cfrac%7B%5Cpartial%5E%7B2%7DQ%28x%29%7D%7B%5Cpartial%20%5Cnu%5E%7B2%7D%7D%3D%5Cnu%5E%7BT%7D%20%5Cbigtriangledown_%7Bxx%7D%5E%7B2%7DQ%5Cnu%3D%281%3B1%29%5Cbegin%7Bpmatrix%7D%200%26%201%5C%5C%201%26%200%20%5Cend%7Bpmatrix%7D%5Cbegin%7Bpmatrix%7D%201%5C%5C%201%20%5Cend%7Bpmatrix%7D%3D2%3E0)

Отсюда и из квадратичного вида функции Q (x ) следует **существование конечного минимума в задаче**, поскольку **на бесконечности функция будет возрастать равномерно по параметру c**.

Исследуем границу ![](https://latex.codecogs.com/svg.latex?x_{3}-x_{1}=1).Система условий Куна-Таккера примет вид:
![](https://latex.codecogs.com/svg.latex?-x_{3}=-\lambda_{1},&space;x_{3}-x_{1}=1)

![](https://latex.codecogs.com/svg.latex?-x_{1}=\lambda_{1},&space;\lambda\geqslant&space;0)

Они выполняются при ![](https://latex.codecogs.com/svg.latex?x_{1}=\pm1,x_{3}=-1,&space;\lambda_{1}=1) (точка B на рис. 3.4). Значение функции равно − 1 , т.е. меньше, чем в первой найденной точке. Следовательно, **глобальный минимум** вспомогательной задачи **достигается в точке** ![](https://latex.codecogs.com/svg.latex?x_{1}=1,&space;x_{3}=-1), а для исходной задачи — **в точке** ![](https://latex.codecogs.com/svg.latex?x_{1}=1,&space;x_{2}=3,&space;x_{3}=-1)

![](../images/ticket17-1.png)


# 18. Метод дихотомии

**Методы дихотомии** используются для нахождения безусловного минимума унимодальных функций Q(x). Они являются одними из самых простых методов последовательного поиска. Название связано с тем, что каждые два испытания в два раза (или примерно в два раза) сокращают область поиска.

**Унимодальная функция** - функция называется унимодальной, если она имеет единственный локальный минимум (максимум) на всей допустимой области. Для унимодальной функции **локальный минимум (максимум) является также и глобальным**.

### Алгоритм

1. Задать δ > 0 - точность решения.
2. Положить ![](<https://latex.codecogs.com/svg.latex?c=(a+b)/2>) и ![](<https://latex.codecogs.com/svg.latex?Q_{c}=Q(c)>).
3. Пока b − a > δ выполнять шаги 3.1 и 3.2:
   3.1. Вычислить: ![](<https://latex.codecogs.com/svg.latex?x=(a+c)/2>), ![](<https://latex.codecogs.com/svg.latex?Q_{x}=Q(x)>); ![](<https://latex.codecogs.com/svg.latex?y=(c+b)/2>), ![](<https://latex.codecogs.com/svg.latex?Q_{y}=Q(y)>)
   3.2. Если ![](https://latex.codecogs.com/svg.latex?Q_{x}<Q_{c}<Q_{y}), положить b := y, c := x, ![](https://latex.codecogs.com/svg.latex?Q_{c}:=Q_{x&space;}); иначе,
   если ![](https://latex.codecogs.com/svg.latex?Q_{x}>Q_{c}\leq&space;Q_{y}), то положить a := x, b := y; иначе положить
   a := x, c := y, ![](https://latex.codecogs.com/svg.latex?Q_{c}:=Q_{y&space;}).
4. Завершить выполнение метода с интервальной оценкой решения
   ![](https://latex.codecogs.com/svg.latex?x^{*}\in&space;[a,b],&space;b&space;-a&space;\leq&space;\delta)

![](../images/ticket18-1.png)

К недостаткам метода относится его работоспособность только для одноэкстремальных функций R(x) (т.е. таких, которые содержат один экстремум того типа, который мы ищем в задаче), так как в других случаях при сравнении двух критериев в соседних точках невозможно правильно выбрать следующий интервал, где находится минимум (максимум).


# 19. Метод золотого сечения

Рассмотрим методы, которые для очередного сжатия интервала поиска используют только одно новое измерение (кроме начального этапа, требующего проведения сразу двух измерений). Исходя из симметрии задачи, первые два измерения в точках x2 и y2 целесообразно размещать симметрично относительно центра интервала, а на вновь образованных интервалах новое измерение проводить в точке, симметричной точке прежнего измерения, существующей внутри интервала (рис. 4.2).

Обозначим через ![](https://latex.codecogs.com/svg.latex?\lambda_{k}) доли, составленные длинами соответствующих частей текущего интервала по отношению к его собственной длине. Из рис. 4.2 вытекает следующая их взаимосвязь:

![](https://github.com/nifadyev/Methods-of-Nonlinear-Optimization/blob/master/images/ticket19-1.png?raw=true)

Метод золотого сечения использует постоянную пропорцию деления ![](https://latex.codecogs.com/svg.latex?\lambda_{k}=\tau=(\sqrt{5}-1)/2\approx0,62), полученную как стационарное решение уравнения (4.3).

![](../images/ticket19-2.png)


# 20. Метод Фибоначчи.

## Из методички

![](https://pp.userapi.com/c850220/v850220485/b79e5/0xTzxJ_f4Ds.jpg)

![](https://pp.userapi.com/c850220/v850220560/b6e47/cejDINvd3DU.jpg)

![](https://pp.userapi.com/c850220/v850220560/b6e4f/mluBYhDmm_8.jpg)


# 21. Метод касательных.
![](https://latex.codecogs.com/svg.latex?f(x),&space;\[a,b\])
![](https://latex.codecogs.com/svg.latex?f^{'}(a)f^{'}(b)<0)

![](https://latex.codecogs.com/svg.latex?y-y_{0}=f'(x_{0})(x-x_{0})) - уравнение  касательной

Точка ![](https://latex.codecogs.com/svg.latex?%28a%2Cf%28a%29%29%3Ay-f%28a%29%3Df%27%28a%29%28x-a%29)

Точка ![](https://latex.codecogs.com/svg.latex?%28b%2Cf%28b%29%29%3Ay-f%28b%29%3Df%27%28b%29%28x-b%29)

![](https://latex.codecogs.com/svg.latex?f%28a%29&plus;f%27%28a%29%28x-a%29%3Df%28b%29&plus;f%27%28b%29%28x-b%29)
![](https://latex.codecogs.com/svg.latex?%5CRightarrow%20x%3Dc)

Если ![](https://latex.codecogs.com/svg.latex?%7Cf%5E%7B%27%7D%28c%29%7C%3C%5Cdelta), то отрезок [a,b] является оценкой решения.

Если ![](https://latex.codecogs.com/svg.latex?%7Cf%5E%7B%27%7D%28c%29%7C%3E%5Cdelta), то:
- Если ![](https://latex.codecogs.com/svg.latex?f'(a)f'(c)<0), то ![](https://latex.codecogs.com/svg.latex?b=c)
- Если  ![](https://latex.codecogs.com/svg.latex?f'(a)f'(c)>0),то ![](https://latex.codecogs.com/svg.latex?a=c) 



# 22. Метод Ньютона

Данный метод использует локальные квадратичные аппроксимации функций. набором линейных и/или нелинейных равенств и/или неравенств.

**Аппроксимацией (приближением) функции** f(x) называется нахождение такой функции (аппроксимирующей функции) g(x), которая была бы близка заданной.

Рассмотрим произвольную дважды непрерывно дифференцируемую функцию. Пусть в точке ![](https://latex.codecogs.com/svg.latex?x^{k}) для Q(x) измерено значение ![](<https://latex.codecogs.com/svg.latex?Q_{k}=Q(x^{k})>), градиент ![](<https://latex.codecogs.com/svg.latex?\bigtriangledown&space;Q_{k}=\bigtriangledown&space;Q(x^{k})>) и матрица вторых производных ![](<https://latex.codecogs.com/svg.latex?\bigtriangledown^{2}_{xx}&space;Q_{k}=\bigtriangledown^{2}_{xx}&space;Q(x^{k})>)

Построим локальную квадратичную аппроксимацию целевой функции: ![](<https://latex.codecogs.com/svg.latex?P_{k}(x)=Q_{k}+(\bigtriangledown&space;Q_{k},x-x^{k})+(x-x^{k})^{T}\bigtriangledown&space;^{2}_{xx}Q_{k}(x-x^{k})/2>)

Условие, определяющее стационарную точку ![](https://latex.codecogs.com/gif.latex?\bar{x}) полинома ![](<https://latex.codecogs.com/gif.latex?P_{k}(x)>), имеет вид: ![](<https://latex.codecogs.com/svg.latex?\bigtriangledown&space;P_{k}(\bar{x})=\bigtriangledown&space;Q_{k}+\bigtriangledown&space;^{2}_{xx}Q_{k}(\bar{x}-x^{k})=0>)

![](../images/ticket22-1.png)

Если принять точку ![](https://latex.codecogs.com/gif.latex?\bar{x}) за точку очередного испытания ![](https://latex.codecogs.com/gif.latex?x^{k+1}), получим **метод Ньютона**:
-   ![](https://latex.codecogs.com/gif.latex?x^{k+1}=x^{k}-d^{k}_{newton})
- где ![](https://latex.codecogs.com/gif.latex?d^{k}_{newton}) определяется из решения линейной системы вида
-   ![](https://latex.codecogs.com/gif.latex?\bigtriangledown^{2}_{xx}&space;Q_{k}\cdot&space;d^{k}_{newton}=-\bigtriangledown&space;Q_{k})

### Свойства
1. Для квадратичной функции Q(x) при невырожденности ![](https://latex.codecogs.com/gif.latex?\bigtriangledown^{2}_{xx}&space;Q_{k})
метод Ньютона из любой начальной точки ![](https://latex.codecogs.com/svg.latex?x^{0}) переходит за один шаг в ![](https://latex.codecogs.com/svg.latex?x^{*})–
стационарную точку функции Q(x), которая, в зависимости от характера знакоопределенности матрицы ![](https://latex.codecogs.com/gif.latex?\bigtriangledown^{2}_{xx}&space;Q_{k}), может быть точкой минимума,
максимума, а также – седловой точкой.
    - Доказательство.
      Вытекает из по способа построения метода

Там еще 3 свойства, но я ебал их писать, ребят. Потому что это ебанина редкая и нам она их не объясняла.Это методичка Городецкого, страница 111, так идите туда, если нужно


# 23. Методы градиентного поиска.

Рассмотрим задачу ![](<https://latex.codecogs.com/svg.latex?min\left{Q(x):x\in&space;R^{n}\right}>). Большинство методов локальной оптимизации имеют вид итерационных процедур

![](https://latex.codecogs.com/svg.latex?x^{k+1}=x^{k}+t_{k}d^{k}), _k=0, 1, 2_ **(4.4)**

![](https://latex.codecogs.com/svg.latex?k^{k+1},x^{k}) - точки с номерами k, k+1

![](https://latex.codecogs.com/svg.latex?d^{k}) - направление шага, вектор

![](https://latex.codecogs.com/svg.latex?t^{k}) - велечина шага, шаговый множитель

![](<https://latex.codecogs.com/svg.latex?d^{k}=-\nabla&space;Q(x^{k})=-\nabla&space;Q_{k}>) - градиентный поиск

![](https://latex.codecogs.com/svg.latex?Q%28x%5E%7Bk+1%7D%29%3DQ%28x_%7Bk%7D+t_%7Bk%7D*d%5E%7Bk%7D%29%3Dmin%3DQ%28x_%7Bk%7D+t_%7Bk%7D*d%5E%7Bk%7D%29) - **метод наискорейшего градиентного поиска**

![](https://latex.codecogs.com/svg.latex?%5Cleft%20%7C%20%5CDelta%20x%5E%7Bk+1%7D%20%5Cright%20%7C%5Cleq%20q*%5Cleft%20%7C%20%5CDelta%20x%5E%7Bk%7D%20%5Cright%20%7C%5E%7B2%7D)

![](<https://latex.codecogs.com/svg.latex?t^{k}=argminQ(x^{k}+td^{k}),&space;t\geq&space;0>)

![](https://latex.codecogs.com/svg.latex?%5Cleft%20%7C%20%5CDelta%20x%5E%7Bk%7D%20%5Cright%20%7C%3D%5Cleft%20%7C%20x%5E%7Bk%7D-x%5E%7B*%7D%20%5Cright%20%7C)

![](https://latex.codecogs.com/svg.latex?%5Cleft%7C%5CDelta%20x%5E%7Bk+1%7D%5Cright%7C%5Cleq%20q%5Cleft%7C%5CDelta%20x%5E%7Bk%7D%5Cright%7C)

## Из методички

![](../images/ticket23-1.png)

![](../images/ticket23-2.png)


# 24. Метод наискорейшего градиентного спуска.

## Из конспекта:

![](https://pp.userapi.com/c850220/v850220560/b6e5d/3KiEyssfmZc.jpg)

![](https://pp.userapi.com/c850220/v850220560/b6e70/RaOmZwyKODE.jpg)

