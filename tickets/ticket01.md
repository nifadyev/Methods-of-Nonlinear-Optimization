# 1. Постановка задачи динамического программирования (можно на примере).

## Общая постановка задачи динамического программирования

Найти такое начальное состояние ![](<https://latex.codecogs.com/svg.latex?x_{0}^{*}=x_{0}(t^{s})\in&space;X^{s}>) и такой допустимый набор управлений ![](https://latex.codecogs.com/svg.latex?u_{1}^{*},u_{2}^{*},\dots,u_{N}^{*}), переводящий систему в одно из состояний ![](<https://latex.codecogs.com/svg.latex?x_{N}^{*}=x^{*}(t_{f})\in&space;X^{f}>), чтобы общие затраты, являющиеся аддитивной функцией затрат, были минимальны (или максимальны, если прибыль).

Пояснения к постановке задачи:

![](https://latex.codecogs.com/svg.latex?u_{k}=u(t_{k})) - **управление** в момент времени ![](https://latex.codecogs.com/svg.latex?t_{k})

![](https://latex.codecogs.com/svg.latex?x_{k}=x(t_{k})) - **состояние** в момент времени ![](https://latex.codecogs.com/svg.latex?t_{k})

**Динамическая система (ДС)** - объект, для которого можно однозначно определить ![](https://latex.codecogs.com/svg.latex?x(t),&space;\forall&space;\bar{t}&space;>&space;t) при известном управлении ![](https://latex.codecogs.com/svg.latex?u(\tilde{\iota&space;}),&space;\tilde{\iota&space;}&space;\in&space;\left&space;[&space;t,&space;\bar{t}&space;\right&space;]), и зная описание x(t) данного объекта.

ДС определяется набором ![](https://latex.codecogs.com/svg.latex?\left&space;\langle&space;X,T,F,U&space;\right&space;\rangle), где:
-   X - множество состояний
    -   ![](https://latex.codecogs.com/svg.latex?X_{0}) - множество начальных состояний
    -   ![](https://latex.codecogs.com/svg.latex?X_{N}) - множество конечных состояний
-   T - множество допустимых моментов времени
-   F - множество операторов или оператор, позволяющий по x(t) определить x(![](https://latex.codecogs.com/svg.latex?\bar{t}))
-   U - множество значений управлений, зависящих от момента времени и текущего состояния 

Оператор ДС/определение ДС - ![](https://latex.codecogs.com/svg.latex?x_{k&plus;1}=f_{k&plus;1}(x_{k},U_{k&plus;1}))

![](https://latex.codecogs.com/svg.latex?d_{k&plus;1}(x_{k},U_{k&plus;1})) - функция доходов/затрат на текущем шаге

Требования к ДС:
-   новые состояния и функции затрат/доходов зависят только от предыдущего состояния, управления и момента времени
-   управление зависит от предыдущего состояния и момента времени
