# Экзаменационный билет №3
## 1.Выпуклое множество – определение, примеры.

Отрезком [x, y] в  ![](https://latex.codecogs.com/svg.latex?R^{n}) называется  геометрическое место точек  {![](https://latex.codecogs.com/svg.latex?{x^{\alpha&space;}:x^{\alpha&space;}=\alpha&space;*x&plus;(1-\alpha&space;)*y,&space;\alpha&space;\in&space;[0,1]})}
Элемент отрезка может быть записан как: ![](https://latex.codecogs.com/svg.latex?x^{\alpha}=y&plus;\alpha(x-y))
![](https://latex.codecogs.com/svg.latex?x^{\alpha}=\alpha&space;x+y-\alpha&space;y)

**Выпуклое множество** в _аффинном_ или _векторном_ пространстве — множество, в котором все точки отрезка, образуемого любыми двумя точками данного множества, также принадлежат данному множеству.

Непустое множество ![](https://latex.codecogs.com/svg.latex?D\subseteq&space;R^{n}) называется **выпуклым множеством**, если
для любых элементов _x_ и _y_ из _D_ соединяющий их отрезок ![](https://latex.codecogs.com/svg.latex?[x,y]\subset&space;D), т.е.
![](https://latex.codecogs.com/svg.latex?\forall&space;x,y\in&space;D) и ![](https://latex.codecogs.com/svg.latex?\forall&space;\alpha\in[0,1]) 
![](https://latex.codecogs.com/svg.latex?x^{\alpha}=\alpha*x&plus;(1-\alpha)*y\in&space;D)

Пустое множество считается выпуклым по определению.
Операция пересечения, примененная к совокупности (конечной или бесконечной) выпуклых множеств не нарушает выпуклости, а операция объединения может ее нарушить.
Операции сложения, вычитания, домножения на числа не нарушают
выпуклости.

**Примеры**

![](https://github.com/nifadyev/Methods-of-Nonlinear-Optimization/blob/master/images/ticket03-1.png?raw=true)



Пусть ![](https://latex.codecogs.com/svg.latex?G_{i}) выпуклое множество, ![](https://latex.codecogs.com/svg.latex?i=\overline{1,n})
Доказать, что ![](https://latex.codecogs.com/svg.latex?\bigcap_{i=1}^{n}G_{i}) выпукло


![](https://latex.codecogs.com/svg.latex?G_{1},G_{2}) - выпуклые;   ![](https://latex.codecogs.com/svg.latex?G_{1}\cap&space;G_{2}) - выпуклое?

Пусть x и y принадлежат этому пересечению ![](https://latex.codecogs.com/svg.latex?\widetilde{(G)})
Доказать, что    ![](https://latex.codecogs.com/svg.latex?\alpha&space;x&plus;(1-\alpha)*y\in\widetilde{G})
**Доказательство:**

![](https://latex.codecogs.com/svg.latex?x\in\widetilde{G},x\in&space;G_{1},x\in&space;G_{2}) - выпуклое
![](https://latex.codecogs.com/svg.latex?y\in\widetilde{G},y\in&space;G_{1},y\in&space;G_{2}) - выпуклое
![](https://latex.codecogs.com/svg.latex?z^{\alpha}=\alpha&space;x&plus;(1-\alpha)*y\in&space;G_{1}) (т.к. G1 - выпуклое)
![](https://latex.codecogs.com/svg.latex?z^{\alpha}=\alpha&space;x&plus;(1-\alpha)*y\in&space;G_{2}) (т.к. G2 - выпуклое)
![](https://latex.codecogs.com/svg.latex?%5Cleft.%5Cbegin%7Bmatrix%7Dz%5E%7B%5Calpha%7D%5Cin%20G_%7B1%7D%20%5C%5C%20z%5E%7B%5Calpha%7D%5Cin%20G_%7B2%7D%20%5C%5C%20%5Cwidetilde%7BG%7D%3DG_%7B1%7D%5Ccap%20G_%7B2%7D%20%5Cend%7Bmatrix%7D%5Cright%5C%7D%5CRightarrow%20z%5E%7B%5Calpha%7D%5Cin%20%5Cwidetilde%7BG%7D%5CRightarrow%20%5Cwidetilde%7BG%7D)  выпуклое
