# 23.Методы градиентного поиска.

Рассмотрим задачу ![](<https://latex.codecogs.com/svg.latex?min\left{Q(x):x\in&space;R^{n}\right}>). Большинство методов локальной оптимизации имеют вид итерационных процедур

![](https://latex.codecogs.com/svg.latex?x^{k+1}=x^{k}+t_{k}d^{k}), _k=0, 1, 2_ **(4.4)**

![](https://latex.codecogs.com/svg.latex?k^{k+1},x^{k}) - точки с номерами k, k+1

![](https://latex.codecogs.com/svg.latex?d^{k}) - направление шага, вектор

![](https://latex.codecogs.com/svg.latex?t^{k}) - велечина шага, шаговый множитель

![](<https://latex.codecogs.com/svg.latex?d^{k}=-\nabla&space;Q(x^{k})=-\nabla&space;Q_{k}>) - градиентный поиск

![](https://latex.codecogs.com/svg.latex?Q%28x%5E%7Bk+1%7D%29%3DQ%28x_%7Bk%7D+t_%7Bk%7D*d%5E%7Bk%7D%29%3Dmin%3DQ%28x_%7Bk%7D+t_%7Bk%7D*d%5E%7Bk%7D%29) - **метод наискорейшего градиентного поиска**

![](https://latex.codecogs.com/svg.latex?%5Cleft%20%7C%20%5CDelta%20x%5E%7Bk+1%7D%20%5Cright%20%7C%5Cleq%20q*%5Cleft%20%7C%20%5CDelta%20x%5E%7Bk%7D%20%5Cright%20%7C%5E%7B2%7D)
![](<https://latex.codecogs.com/svg.latex?t^{k}=argminQ(x^{k}+td^{k}),&space;t\geq&space;0>)

![](https://latex.codecogs.com/svg.latex?%5Cleft%20%7C%20%5CDelta%20x%5E%7Bk%7D%20%5Cright%20%7C%3D%5Cleft%20%7C%20x%5E%7Bk%7D-x%5E%7B*%7D%20%5Cright%20%7C)

![](https://latex.codecogs.com/svg.latex?%5Cleft%7C%5CDelta%20x%5E%7Bk+1%7D%5Cright%7C%5Cleq%20q%5Cleft%7C%5CDelta%20x%5E%7Bk%7D%5Cright%7C)

## Из методички

![](../images/ticket23-1.png)

![](../images/ticket23-2.png)
