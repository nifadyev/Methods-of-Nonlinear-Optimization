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
