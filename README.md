# ZCMBProgressHUD
对MBProgressHUD一些简单的封装，方便在项目中调用

#### 1 项目中，大部分的网络加载时都会加上一个等待菊花框，MBProgressHUD是一个很好用的第三方库，在MBProgressHUD基础上进行了一些封装，在项目中用到的机会比较大，希望对你们有用。

##### 1.1 第一种就是就是普通的菊花，如下图：
![mum.png](https://upload-images.jianshu.io/upload_images/1930004-c3ea5f778b3177e9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)



##### 1.2 提示Toast，网络请求提示，报错，提醒之类的，如下图：
![toast.png](https://upload-images.jianshu.io/upload_images/1930004-808f912faaf87366.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


##### 1.3 gif图类型的菊花，现在大部分都不用系统的菊花了，都会用gif图代替，如下图：（图好像截的有问题，具体效果看代码）
![GIf.gif](https://upload-images.jianshu.io/upload_images/1930004-da6f0c84acfbc5ef.gif?imageMogr2/auto-orient/strip)

#### 2.下面上代码：
[github地址](https://github.com/ZCLemo/ZCMBProgressHUD)

#### 3.提示一下，有时候一个控制器可能同时进行多个网络请求，需要多个请求结束后再隐藏菊花，里面也提供了方法，使用- (void)hiddenWaitingForTransaction方法，里面也有例子，对于gif型菊花和普通型菊花都适用。
