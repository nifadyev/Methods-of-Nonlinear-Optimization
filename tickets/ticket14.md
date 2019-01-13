# 14.	Геометрический смысл условий К.-К.-Т при числе переменных n = 2 

### Напомним основные понятия:
- Антиградиент функции:  
 — вектор, компоненты которого совпадают по абсолютной величине с компонентами градиента функции, но имеют противоположный знак. Показывает направление наискорейшего убывания функции.
- Линейная независимость системы векторов:
 — Если линейная комбинация ![](https://latex.codecogs.com/svg.latex?\lambda_{1}\alpha^{(1)}&plus;\lambda_{2}\alpha^{(2)}&plus;..&plus;\lambda_{p}\alpha^{(p)}) представляет собой нулевой вектор только тогда, когда все числа ![](https://latex.codecogs.com/svg.latex?\lambda_{1},\lambda_{2},..,\lambda_{p}) равны нулю, то система векторов ![](https://latex.codecogs.com/svg.latex?\alpha^{(1)},\alpha^{(2)},..,\alpha^{(p)}) называется линейно независимой.
- Условие регулярности Слейтера — Оно применимо только при следующих
условиях: ![](https://latex.codecogs.com/svg.latex?g_{1}(x),..,g_{N}(x)) выпуклы (вниз), ![](https://latex.codecogs.com/svg.latex?h_{1}(x),..,h_{M}(x)) либо отсутствуют,
либо аффинны. Если при этих условиях в множестве D существует
допустимая точка x , все неравенства в которой выполняются строго, т.е.
![](https://latex.codecogs.com/svg.latex?g_{i}(x^{*})<&space;0(i=1,..,N)) , то область D регулярна во всех своих точках.
Для невыпуклого гладкого случая можно использовать достаточное
условие регулярности в форме независимости градиентов: если в точке ![](https://latex.codecogs.com/svg.latex?x^{*})
активны (т.е. обращаются в равенства) ограничения ![](https://latex.codecogs.com/svg.latex?g_{i1}(x^{*})=0,..,g_{ir}(x^{*})=0)
и система векторов ![](https://latex.codecogs.com/svg.latex?\bigtriangledown&space;g_{i1}(x^{*}),..,\bigtriangledown&space;g_{ir}(x^{*}),\bigtriangledown&space;h_{1}(x^{*}),..,\bigtriangledown&space;h_{M}(x^{*}))
линейно независима, то область D регулярна в точке ![](https://latex.codecogs.com/svg.latex?x^{*}).

### Геометрический смысл условий К.-К.-Т при числе переменных n = 2
Предположим, что в точке ![](https://latex.codecogs.com/svg.latex?x^{*}) активны только два ограничения с номерами 1 и 2. Вектора градиентов ![](https://latex.codecogs.com/svg.latex?\bigtriangledown&space;g_{1}(x^{*}),\bigtriangledown&space;g_{2}(x^{*}))для этих ограничений являются внешними нормалями к соответствующим фрагментам
границы допустимого множества. В общем случае, если фрагменты границ
пересекаются без касания, система этих векторов линейно независима,
следовательно, допустимое множество будет регулярно в точке ![](https://latex.codecogs.com/svg.latex?x^{*}) и в системе
условий Куна-Таккера можно принять ![](https://latex.codecogs.com/svg.latex?\lambda_{0}=1). Из условий теоремы ККТ следует, что если ![](https://latex.codecogs.com/svg.latex?x^{*}) –
локальный минимум, то ![](https://latex.codecogs.com/svg.latex?-\bigtriangledown&space;Q(x^{*})=\lambda^{*}_{1}\cdot&space;\bigtriangledown&space;g_{1}(x^{*})&plus;&space;\lambda^{*}_{2}\cdot&space;\bigtriangledown&space;g_{2}(x^{*}))
при ![](https://latex.codecogs.com/svg.latex?\lambda_{1}\geq&space;0,\lambda_{2}\geq&space;0,). Геометрически это означает, что вектор антиградиента
целевой функции в точке x* содержится в замкнутом конусе A(x*) , натянутом
на внешние нормали к границам активных неравенств (рис. 3.1 (а)):
![](https://github.com/nifadyev/Methods-of-Nonlinear-Optimization/blob/master/images/ticket14-1.png?raw=true)
![](https://latex.codecogs.com/svg.latex?A%28x%5E%7B*%7D%29%3D%5Cleft%20%5C%7B%20%5Cnu%20%3A%20%5Cnu%3D%5Clambda_%7B1%7D%5Ccdot%20%5Cbigtriangledown%20g_%7B2%7D%28x%5E%7B*%7D%29&plus;%5Clambda_%7B2%7D%5Ccdot%20%5Cbigtriangledown%20g_%7B1%7D%28x%5E%7B*%7D%29%3B%5Clambda_%7B1%7D%5Cgeq%200%2C%20%5Clambda_%7B2%7D%5Cgeq%200%5Cright%20%5C%7D.)
В случае дифференцируемости функции ∂Q(x*) ∂v = (∇Q(x*), v).
Поэтому направления ее строгого локального убывания образуют открытый
конус B(x*) , показанный на рис. 3.1 (b) где
![](https://latex.codecogs.com/svg.latex?B%28x%5E%7B*%7D%29%3D%5Cleft%20%5C%7B%20%5Cnu%20%3A%28%5Cbigtriangledown%20Q%28x%5E%7B*%7D%29%2Cv%29%3E%200%20%5Cright%20%5C%7D).
Для локальной оптимальности ![](https://latex.codecogs.com/svg.latex?x^{*}) требуется локальная (в окрестности
точки ![](https://latex.codecogs.com/svg.latex?x^{*})) непересекаемость допустимого множества D с конусом B(![](https://latex.codecogs.com/svg.latex?x^{*}))
направлений строгого локального убывания (после перемещения его вершины в
точку ![](https://latex.codecogs.com/svg.latex?x^{*})). Чтобы это требование было выполнено, необходимо и достаточно,
чтобы внутренняя нормаль к границе конуса B(![](https://latex.codecogs.com/svg.latex?x^{*})) (такой нормалью является
вектор антиградиента функции) не покидала конуса A(![](https://latex.codecogs.com/svg.latex?x^{*})) , а это означает
возможность разложения (3.4) с неотрицательными коэффициентами.
На рис. 3.2 показан пример ситуации, когда в окрестности точки ![](https://latex.codecogs.com/svg.latex?x^{*})
возникло пересечение D с B(![](https://latex.codecogs.com/svg.latex?x^{*})). При этом в разложении (3.4) окажется ![](https://latex.codecogs.com/svg.latex?\lambda^{*}_{1}>0,&space;\lambda^{*}_{2}<0).
![](https://github.com/nifadyev/Methods-of-Nonlinear-Optimization/blob/master/images/ticket14-2.png?raw=true)
Появление отрицательного значения у множителя Лагранжа
свидетельствует о возможности строгого уменьшения значения Q(![](https://latex.codecogs.com/svg.latex?x^{*})) за счет
ухода с фрагмента границы ![](https://latex.codecogs.com/svg.latex?g_{2}(x)=0) множества D (при этом точка,
естественно, не должна покидать допустимое множество).
