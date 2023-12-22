let str1: string = '微信公众号'
let str2: string = "子组件布局内容"
let str3: string = `最下面的一个组件`

@Entry
@Component
struct PageCreate {
  @Provide message: string = '微信公众号'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .Page_text_style()
          .onClick(() => {
            this.message = "网易云音乐"
          })
        Divider()
        //调用下一级组件
        PageCenter()

      }
      .width('100%')
    }
    .height('100%')
  }
}

//中层组件
@Component
struct PageCenter {
  build() {
    Column({ space: 20 }) {
      Text(str2).Page_text_style()
      Divider()
      PageBottom()
    }
  }
}

//下层组件
@Component
struct PageBottom {
  @Consume message:string
  build() {
    Text(this.message).Page_text_style().onClick(() => {
      this.message = "回去"
    })
  }
}


//对text进行样式的抽离
@Extend(Text) function Page_text_style() {
  .fontColor(Color.Red)
  .fontSize(40)
  .fontStyle(FontStyle.Italic)
  .fontWeight(FontWeight.Bold)
}