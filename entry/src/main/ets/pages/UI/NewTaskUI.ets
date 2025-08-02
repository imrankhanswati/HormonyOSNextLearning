import { UIStateManager } from '../Managers/UIStateManager'

let animationDuration: number = 100

@Component
export struct NewTaskUI {
  private uiManager: UIStateManager = UIStateManager.getInstance();
  @State private isVisible: boolean = false;

  aboutToAppear() {
    setTimeout(() => {
      this.isVisible = true;
    }, 50);
  }

  onBackPress() {
    this.hideWithAnimation()
  }

  build() {
    Stack() {
      // Semi-transparent overlay
      Column()
        .width('100%')
        .height('100%')
        .backgroundColor($r('app.color.secondary_Background'))
        .onClick(() => {
          this.hideWithAnimation();
        })

      // Main panel that slides up
      Column() {
        Column() {
          TextInput({ placeholder: 'Enter your task' })
            .onChange(value => {
            })
            .border({ width: 1, color: Color.Gray })
            .borderRadius(10)
            .backgroundColor($r('app.color.background_body'))
            .width('100%')
        }

        Blank()

        Button('Add Task')
          .onClick(() => {
            this.hideWithAnimation();
          })
          .width(120)
          .height(40)
      }
      .width('99%')
      .height('30%')
      .border({ width: 1, color: $r('app.color.secondary_panel_border') })
      .backgroundColor($r('app.color.secondary_panel'))
      .borderRadius({ topLeft: 16, topRight: 16 })
      .padding(16)
      .position({ x: '0.5%', y: this.isVisible ? '70%' : '100%' })
      .animation({
        duration: animationDuration,
        curve: Curve.EaseOut
      })
    }
    .width('100%')
    .height('100%')
  }

  private hideWithAnimation() {
    this.isVisible = false;
    setTimeout(() => {
      this.uiManager.emit('hideNewTask');
    }, animationDuration);
  }
}