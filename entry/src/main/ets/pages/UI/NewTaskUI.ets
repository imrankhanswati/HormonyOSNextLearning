import { UIStateManager } from '../Managers/UIStateManager'

@Component
export struct NewTaskUI {
  private uiManager: UIStateManager = UIStateManager.getInstance();

  build() {
    Column() {
      Text('Welcome to new Task UI')
      Button('Add Task')
        .onClick(() => {
          this.uiManager.emit('hideNewTask');
        })
    }
    .width('100%')
    .height('50%')
    .backgroundColor(Color.Yellow)
  }
}