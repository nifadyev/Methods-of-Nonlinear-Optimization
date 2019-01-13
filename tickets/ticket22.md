# 22.	Метод Ньютона 

- Данный метод использует локальные квадратичные аппроксимации функций. набором линейных и/или нелинейных равенств и/или неравенств.
- - Аппроксимацией (приближением) функции f(x) называется нахождение такой функции (аппроксимирующей функции) g(x), которая была бы близка заданной.


Рассмотрим произвольную дважды непрерывно дифференцируемую функцию. Пусть в точке ![](https://latex.codecogs.com/svg.latex?x^{k}) для Q(x) измерено значение ![](https://latex.codecogs.com/svg.latex?Q_{k}=Q(x^{k})), градиент
![](https://latex.codecogs.com/svg.latex?\bigtriangledown&space;Q_{k}=\bigtriangledown&space;Q(x^{k})) и матрица вторых производных ![](https://latex.codecogs.com/svg.latex?\bigtriangledown^{2}_{xx}&space;Q_{k}=\bigtriangledown^{2}_{xx}&space;Q(x^{k}))  Построим локальную квадратичную аппроксимацию целевой функции:
![](https://latex.codecogs.com/svg.latex?P_{k}(x)=Q_{k}&plus;(\bigtriangledown&space;Q_{k},x-x^{k})&plus;(x-x^{k})^{T}\bigtriangledown&space;^{2}_{xx}Q_{k}(x-x^{k})/2)
Условие, определяющее стационарную точку ![](https://latex.codecogs.com/gif.latex?\bar{x}) полинома ![](https://latex.codecogs.com/gif.latex?P_{k}(x)), имеет вид:
![](https://latex.codecogs.com/svg.latex?\bigtriangledown&space;P_{k}(\bar{x})=\bigtriangledown&space;Q_{k}&plus;\bigtriangledown&space;^{2}_{xx}Q_{k}(\bar{x}-x^{k})=0)

![](https://github.com/nifadyev/Methods-of-Nonlinear-Optimization/blob/master/images/22-1.png?raw=true)

- Если принять точку ![](https://latex.codecogs.com/gif.latex?\bar{x}) за точку очередного испытания ![](https://latex.codecogs.com/gif.latex?x^{k+1}), получим метод Ньютона:
-  - ![](https://latex.codecogs.com/gif.latex?x^{k+1}=x^{k}-d^{k}_{newton})
-  где ![](https://latex.codecogs.com/gif.latex?d^{k}_{newton}) определяется из решения линейной системы вида 
-  - ![](https://latex.codecogs.com/gif.latex?\bigtriangledown^{2}_{xx}&space;Q_{k}\cdot&space;d^{k}_{newton}=-\bigtriangledown&space;Q_{k})

Свойства
Свойство 1. Для квадратичной функции Q(x) при невырожденности ![](https://latex.codecogs.com/gif.latex?\bigtriangledown^{2}_{xx}&space;Q_{k})
метод Ньютона из любой начальной точки ![](https://latex.codecogs.com/svg.latex?x^{0}) переходит за один шаг в ![](https://latex.codecogs.com/svg.latex?x^{*})–
стационарную точку функции Q(x), которая, в зависимости от характера знакоопределенности матрицы ![](https://latex.codecogs.com/gif.latex?\bigtriangledown^{2}_{xx}&space;Q_{k}), может быть точкой минимума,
максимума, а также – седловой точкой.
Доказательство. Вытекает из по способа построения метода

Там еще 3 свойства, но я ебал их писать, ребят. Потому что это ебанина редкая и нам она их не объясняла.Это методичка Городецкого, страница 111, так идите туда, если нужно
