import { UIStateManager } from '../Managers/UIStateManager'

@Component
export struct FooterUI {
  private uiManager: UIStateManager = UIStateManager.getInstance();

  build() {
    Column() {
      Column() {
        Text('I am footer')
          .alignSelf(ItemAlign.Center)
      }
      .width('100%')
      .height('50%')
      .justifyContent(FlexAlign.Center)

      Column() {
        Button('+')
          .onClick(() => {
            this.uiManager.emit('showNewTask');
          })
          .width('30%')
          .height('80%')
          .fontSize(40)
      }
      .width('100%')
      .height('50%')
      .justifyContent(FlexAlign.Center)
    }
    .height('20%')
    .width('100%')
    .backgroundColor($r('app.color.background_body'))
  }
}