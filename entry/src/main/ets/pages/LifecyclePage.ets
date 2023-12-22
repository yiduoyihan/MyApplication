import router from '@ohos.router'

@Entry
@Component
struct LifecyclePage {
  @State message: string = 'Hello World'

  //onpageShow:页面显示时候触发
  //onPageHide:页面隐藏时候触发
  //onBackPress：点击手机返回按钮触发
  //aboutToAppear：组件即将出现时回调此接口，具体为创建自定义组件的新实例
  //后，在执行build()函数之前
  //aboutToDisappear：在自定义组件即将销毁时候执行

  build() {
    Row() {
      Column({space:20}) {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.pushUrl({ url: 'pages/TestPage' })
          })
        Divider()
        SonCom()
      }
      .width('100%')
    }
    .height('100%')
  }

  onPageShow() {
    console.log('LOG:', '--------onPageShow')
  }

  onPageHide() {
    console.log('LOG:', '--------onPageHide')
  }

  onBackPress() {
    console.log('LOG:', '--------onBackPress')
  }
}

@Component
struct SonCom {
  build() {
    Column() {
      Text('子组件的内容')
    }
  }
  //添加
  aboutToAppear(){
    console.log("LOG","--------aboutToAppear")
  }
  //删除
  aboutToDisappear(){
    console.log("LOG","--------aboutToDisappear")
  }
}