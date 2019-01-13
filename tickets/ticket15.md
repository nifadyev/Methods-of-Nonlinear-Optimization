# Экзаменационный билет №15
## 1.Выпуклая задача математического программирования. Условия К.-К.-Т для выпуклой задачи.

Если функции ![](https://latex.codecogs.com/svg.latex?g_%7B1%7D%2C...%2Cg_%7BN%7D) выпуклы (вниз), ограничения – равенства либо отсутствуют, либо аффинны, функция Q(x) выпукла (вниз), то такая задача называется выпуклой. В выпуклой задаче математического программирования все локальные минимумы являются глобальными.

Если задача математического программирования выпукла и при этом допустимая область D регулярна в точке x* (регулярность области в точке – это свойство, гарантирующее, что условия оптимальности всегда выполняются в этой точке при ![](https://latex.codecogs.com/svg.latex?\lambda_{0}^{*}\neq&space;0)), то условия теоремы Каруша-Куна-Таккера (а)-(e)

a) ![](https://latex.codecogs.com/svg.latex?x^{*}\in&space;D) - допустимость

b) ![](https://latex.codecogs.com/svg.latex?\exists(\lambda_{0}^{*},\lambda_{1}^{*},\dots\lambda_{N}^{*},\mu_{1}^{*},\mu_{2}^{*},\dots\mu_{M}^{*})\neq0) - нетривиальность

c) ![](https://latex.codecogs.com/svg.latex?\lambda_{0}^{*}\geqslant0,\lambda_{1}^{*}\geqslant0,\dots\lambda_{N}^{*}\geqslant0) - неотрицательность

d) ![](https://latex.codecogs.com/svg.latex?-\lambda_{0}^{*}\bigtriangledown&space;Q(x^{*})=\sum_{i=1}^{N}\lambda_{i}^{*}\bigtriangledown&space;g_{i}(x^{*})&plus;\sum_{j=1}^{M}\mu_{j}^{*}\bigtriangledown&space;h(x^{*})) - разложимость

e) ![](https://latex.codecogs.com/svg.latex?\lambda_{i}^{*}g_{i}(x^{*})=0,(i\in1,...,N)) - условие дополняющей нежесткости


будут не только необходимыми, но и достаточными условиями, определяющими точку глобального минимума x*.