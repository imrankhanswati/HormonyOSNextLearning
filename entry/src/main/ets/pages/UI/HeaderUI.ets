@Component
export struct HeaderUI {
  build() {
    Column() {
      Text('I am header')
        .alignSelf(ItemAlign.Center)
    }
    .height('20%')
    .width('100%')
    .align(Alignment.Center)
    .backgroundColor(Color.Green)
  }
}