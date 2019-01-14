# 5. Критерий Сильвестра, матрица Гессе.

## Матрица Гессе

**Матрица Гессе** - матрица вторых производных

![](https://latex.codecogs.com/svg.latex?%5Ctriangledown%5E2%20Q%28x%29%3D%20%5Cbegin%7Bpmatrix%7D%20%5Cfrac%7B%5Cpartial%5E2%20Q%7D%7B%5Cpartial%20x_%7B1%7D%5E%7B2%7D%7D%26%20%5Cfrac%7B%5Cpartial%5E2%20Q%7D%7B%5Cpartial%20x_%7B1%7D%20%5Cpartial%20x_%7B2%7D%7D%26%5C%5C%20%5Cfrac%7B%5Cpartial%5E2%20Q%7D%7B%5Cpartial%20x_%7B2%7D%20%5Cpartial%20x_%7B1%7D%7D%26%20%5Cfrac%7B%5Cpartial%5E2%20Q%7D%7B%5Cpartial%20x_%7B2%7D%5E%7B2%7D%7D%20%5Cend%7Bpmatrix%7D)

Пусть А - симметричная матрица

-   А **неотрицательно определена** (![](https://latex.codecogs.com/svg.latex?A\geqslant&space;0)), если ![](https://latex.codecogs.com/svg.latex?\forall&space;d&space;:&space;d^{T}Ad\geqslant&space;0)
-   А **положительно определена** (![](https://latex.codecogs.com/svg.latex?A>&space;0)), если ![](https://latex.codecogs.com/svg.latex?\forall&space;d&space;:&space;d^{T}Ad>&space;0)
-   А **знаконеопределена**, если ![](https://latex.codecogs.com/svg.latex?\exists&space;d':&space;(d')^{T}Ad'>0,&space;d'':(d'')^{T}Ad''<0)

## Критерий Сильвестра

**Критерий Сильвестра** связывает положительную определенность матрицы с положительной определенностью ее главных миноров (![](https://latex.codecogs.com/svg.latex?\Delta_{i},&space;i&space;\in\left&space;[&space;1,n&space;\right&space;]), где n - размерность матрицы).

Матрица **положительна определена**, если ![](https://latex.codecogs.com/svg.latex?\forall\Delta_{i}>0,&space;i&space;\in\left&space;[&space;1,n&space;\right&space;])

Матрица **отрицательно определена**, если знаки главных миноров чередуются, то есть ![](https://latex.codecogs.com/svg.latex?\Delta_{1}<0,\Delta_{2}>0,\Delta_{3}<0,\Delta_{4}>0,\dots)

Если хотя бы 1 главный минор обращается в 0, то критерий Сильвестра **неприменим**.
