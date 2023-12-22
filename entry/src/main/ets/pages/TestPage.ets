import router from '@ohos.router'

@Entry
@Component
struct TestPage {
  @State count: number = 0

  build() {
    Row() {
      Column() {
        Text('条件渲染小游戏----逢5过')
          .fontSize(30)
          .fontColor(Color.Green)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            // router.back()
          })

        Text(this.count % 5 === 0 ? '过' : `${this.count}`)
          .fontStyle(FontStyle.Italic)
          .fontWeight(FontWeight.Bold)
          .fontSize(50)
          .fontColor(Color.Red)

        Button("btnContent")
          .onClick(() => {
            this.count++
          })
      }.width('100%')
    }.height('100%')
    .onClick(() => {
      router.back()
    })
  }
}