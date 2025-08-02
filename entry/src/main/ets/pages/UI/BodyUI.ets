import { App } from "@kit.ArkUI"

@Component
export struct BodyUI {
  build() {
    Column() {
      Text('I am body')
    }
    .height('60%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor($r('app.color.background_body'))
  }
}