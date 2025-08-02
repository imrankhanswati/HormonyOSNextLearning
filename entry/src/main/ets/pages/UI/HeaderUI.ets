@Component
export struct HeaderUI {
  build() {
    Column() {
      Text('I am header')
        .alignSelf(ItemAlign.Center)
    }
    .height('20%')
    .width('100%')
    .border({ width: { bottom: 1 } })
    .borderColor({ bottom: $r('app.color.light_border') })
    .align(Alignment.Center)
    .backgroundColor($r('app.color.background_header'))
  }
}