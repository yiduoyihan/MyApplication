@Entry
@Component
struct ForeachPage {
  @State message: string = '循环渲染'
  @State imageurl: string = 'https://t7.baidu.com/it/u=2621658848,3952322712&fm=193&f=GIF'
  @State list: string[] = ['mate60', 'mate60pro', 'mate60max']
  @State listJson: object[] = [
    {
      id: '1',
      content: 'mate60'
    }, {
    id: '2',
    content: 'mate60pro'
  }, {
    id: '3',
    content: 'mate60max'
  }, {
    id: '4',
    content: 'mate60max'
  }
  ]

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Divider()

        ForEach(this.listJson, (item, index) => {
          // Text(item.id + '-'+item.content)
          Text(`${item.id}-${item.content}`)
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }, (item, index) => {
          return item.id
        })

        Image($r('app.media.icon')).width(50).height(50)
        Divider()
        //加载网络图片需要添加权限
        Image(this.imageurl).width(400).objectFit(ImageFit.Contain)
      }
      .width('100%')
    }
    .height('100%')
  }
}