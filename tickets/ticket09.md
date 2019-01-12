# 9. Теорема Ферма.

![](https://latex.codecogs.com/svg.latex?minQ(x),x&space;\in&space;R^{n})

**Необходимое условие:**
-   Нахождение условия экстремума первого порядка при отсутствии ограничений

**Формулировка:**

Если ![](https://latex.codecogs.com/svg.latex?x^{0}) - локальный min функции Q в ![](https://latex.codecogs.com/svg.latex?R^{n}), Q дифференцируема в ![](https://latex.codecogs.com/svg.latex?x^{0}), то градиент ![](https://latex.codecogs.com/svg.latex?\bigtriangledown&space;Q(x^{0})=0)

**Доказательство:**

Пусть ![](https://latex.codecogs.com/svg.latex?\bigtriangledown&space;Q(x^{0})\neq0)
![](https://latex.codecogs.com/svg.latex?V=\frac{\bigtriangledown&space;Q(x^{0})}{|\bigtriangledown&space;Q(x^{0})|})
![](https://latex.codecogs.com/svg.latex?Q%28x%5E%7B0%7D&plus;%5Ctilde%7B%5Ciota%7DV%29%3DQ%28x%5E%7B0%7D%29&plus;%5Cfrac%7BdQ%28x%5E%7B0%7D&plus;%5Ctilde%7B%5Ciota%7DV%29%7D%7Bd%5Ctilde%7B%5Ciota%7D%7D%5Ctilde%7B%5Ciota%7D&plus;O%28%5Ctilde%7B%5Ciota%7D%29%3DQ%28x%5E%7B0%7D%29&plus;%28%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%2CV%29%5Ctilde%7B%5Ciota%7D&plus;O%28%5Ctilde%7B%5Ciota%7D%29%3DQ%28x%5E%7B0%7D%29&plus;%7C%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%7C%20%5Cfrac%7B%7C%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%7C%7D%7B%7C%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%7C%7D%28-1%29%5Ctilde%7B%5Ciota%7D&plus;O%28%5Ctilde%7B%5Ciota%7D%29%3DQ%28x%5E%7B0%7D%29-%5Ctilde%7B%5Ciota%7D%7C%5Cbigtriangledown%20Q%28x%5E%7B0%7D%29%7C&plus;O%28%5Ctilde%7B%5Ciota%7D%29%3CQ%28x%5E%7B0%7D%29)

Получено противоречие, значит предположение неверно.
