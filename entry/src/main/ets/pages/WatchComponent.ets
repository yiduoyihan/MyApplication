// @Watch 装饰器：状态变量更改通知，被watch装饰的变量更改时，执行对应操作
import router from '@ohos.router'
// 函数中，不要修改被监视的状态变量，我们要操作其他的业务代码
@Entry
@Component
struct WatchComponent {
  @State @Watch('change') count: number = 1
  @State @Watch('change') add: number = 1
  @State pow: number = 0

  change() {
    //无限循环
    // this.count = this.count + 2
    // this.add = this.count * 2
    this.pow = Math.pow(this.count, this.add)
  }

  build() {
    Row() {
      Column() {
        Text("基数:" + this.count)
          .normalStyle()
          .onClick(() => {
            this.count++
          })
        Divider()
        Text("2倍:" + this.add)
          .normalStyle().onClick(() => {
            this.add ++
        })
        Divider()
        Text("平方:" + this.pow)
          .normalStyle()
      }
      .width('100%')
    }
    .height('100%')
    .onClick(() => {
        router.back()
    })
  }
}

@Extend(Text) function normalStyle() {
  .fontSize(50)
  .fontWeight(FontWeight.Bold)
}