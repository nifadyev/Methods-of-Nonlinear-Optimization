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
