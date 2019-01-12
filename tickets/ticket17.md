# 17. Условия К.-К.-Т для невыпуклой задачи - разобрать на примере.

## Условия Каруша-Куна-Таккера
Если функции ![](https://latex.codecogs.com/svg.latex?g_{1}(x),g_{2}(x),\dots,g_{N}(x)) выпуклы (вниз), ограничения – равенства либо
отсутствуют, либо аффинны, функция Q(x) выпукла (вниз), то такая **задача**
называется **выпуклой**. В противном случае **задача невыпукла**.

Для задач, **не обладающих выпуклостью**, необходимые условия наличия в ![](https://latex.codecogs.com/svg.latex?x^{*}) локального минимума дает следующая **теорема Каруша-Куна-Таккера**.

Для того, чтобы точка ![](https://latex.codecogs.com/svg.latex?x^{*}) была локальным минимумом рассматриваемой задачи, необходимо выполнение группы условий:
- ![](https://latex.codecogs.com/svg.latex?x^{*}\in&space;D) - допустимость
- ![](https://latex.codecogs.com/svg.latex?\exists(\lambda_{0}^{*},\lambda_{1}^{*},\dots\lambda_{N}^{*},\mu_{1}^{*},\mu_{2}^{*},\dots\mu_{M}^{*})\neq0) - нетривиальность
- ![](https://latex.codecogs.com/svg.latex?\lambda_{0}^{*}\geqslant0,\lambda_{1}^{*}\geqslant0,\dots\lambda_{N}^{*}\geqslant0) - неотрицательность
- ![](https://latex.codecogs.com/svg.latex?-\lambda_{0}^{*}\bigtriangledown&space;Q(x^{*})=\sum_{i=1}^{N}\lambda_{i}^{*}\bigtriangledown&space;g_{i}(x^{*})&plus;\sum_{j=1}^{M}\mu_{j}^{*}\bigtriangledown&space;h(x^{*})) - разложимость
- ![](https://latex.codecogs.com/svg.latex?\lambda_{j}^{*}g_{j}(x^{*})=0,&space;j\in\left&space;[1,N&space;\right]) - условие дополняющей нежесткости

## Пример невыпуклой задачи