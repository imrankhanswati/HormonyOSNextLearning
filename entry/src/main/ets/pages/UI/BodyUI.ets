@Component
export struct BodyUI {
  build() {
    Column() {
      Text('I am body')
    }
    .height('60%')
    .width('100%')
    .backgroundColor(Color.Gray)
  }
}