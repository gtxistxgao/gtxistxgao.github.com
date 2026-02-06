+++
title = "期权交易中的各种策略"
tags = ["option", "strategies"]
+++

## Date: 01/31/2021 Frank Gao

学习笔记 https://www.investopedia.com/trading/options-strategies/

## Short covered call

首先购买100股某股票，假设价格是100元每股。这时候选择一个call的strike价格比如102元。这个call的价格假设是2元。这时用已经购买的股票作为保障，就可以卖一个covered call。别人会以200元的价格购买你的call。

- 假设股票涨到了101。别人肯定不会行权，那不算股票最大的盈利就是200元。
- 假设股票开始跌了，但是只跌到98元。这时候别人肯定不会行权。虽然股票的价格上我们跌了200，但是因为别人给了200。所以等于没赚没赔。
- 假设股票跌到了97元。那等于亏了300 - 200 = 100元。这也比自己买一百股亏300元要好。

总结就是Short covered call可以用来对冲股票小跌的风险。

|pros|cons|
|--|--|
| 马上拿到钱 | 最多盈利也固定了 |
| 相当于买股票的价格降了call价格，等于打折了 ||

![Short covered call](https://www.investopedia.com/thmb/ZzaILbSBL3ji2whFO65Z2-oFFKs=/3274x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/10OptionsStrategiesToKnow-01-5cbad2a9fe294e679f467f3ebc57890d.png)

## Married Put

首先会购买100股某股票。然后同时购买一个put来保护大跌的情况。

![Married Put](https://www.investopedia.com/thmb/m_nEhd3JbKiFXwqmNw1Xbis9u14=/3274x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/10OptionsStrategiesToKnow-02_2-c1aed6a1ee3545068e2336be660d4f81.png)

## Bull Call Spread

不买正股。在X价位买一个call的同时在X+Y的价位卖一个call。这两个call的过期时间相同。这样在大涨的时候就能盈利。

![Bull Call Spread](https://www.investopedia.com/thmb/Cy9owdJGrN7FFspvh1XyVVS1XZk=/3274x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/10OptionsStrategiesToKnow-03-762dd3eb350a4e0daffdb7626ffcf6d4.png)

## Bear Put Spread

不买正股。在X价位买一个put然后在X-Y价位卖一个put。这两个put的过期时间相同。这样股票大跌的时候就能盈利。

![Bear Put Spread](https://www.investopedia.com/thmb/nAybiL_o5hYE6rL8qGyR8vZdI-4=/3274x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/10OptionsStrategiesToKnow-04-d02438bef9d24de79e98dd8d29b157f8.png)

## Protective Collar

这是在你有一百股的时候，比如股价cost是100刀。买一个95的put的同时卖一个105的call。这样可以保证股价就算大跌，损失也是稳定的。股价要是小涨，盈利也是有封顶的。这个策略的好处是大大的降低了风险，同时也保护了这100股，所以叫Protective Collar

![Protective Collar](https://www.investopedia.com/thmb/frnqDOipk6xhxszNE6-ezYHAnGg=/3274x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/10OptionsStrategiesToKnow-05-00a2698cbc5c449eb0f11b4f67167eca.png)

## Long Straddle

不买正股。同时买入call和put在同一个strike price和同一个expire date。这是在预判价格会要么大涨要么大跌。

![Long Straddle](https://www.investopedia.com/thmb/f6hdLdxONfM7DryhWc63GNaSHV0=/3274x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/10OptionsStrategiesToKnow-06_2-b0aa70d4f6004811811f8b07f034efd4.png)

## Long Strangle

不买正股。在低位买一个put，在高位买一个call。这样买option的成本会低但是盈利平衡点也会扩大。只有在股票大涨或者大跌的时候才有可能盈利。

![Long Strangle](https://www.investopedia.com/thmb/fno_rMO-PCPR-zH73B6NVcldAW0=/3274x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/10OptionsStrategiesToKnow-07-d42b5b21cecb4979a299053479786a3f.png)