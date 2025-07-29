import { HeaderUI } from './UI/HeaderUI'
import { BodyUI } from './UI/BodyUI'
import { FooterUI } from './UI/FooterUI'
import { NewTaskUI } from './UI/NewTaskUI'
import { UIStateManager } from './Managers/UIStateManager'

@Entry
@Component
struct Index {
  @State isNewTaskUI: boolean = false;
  private uiManager: UIStateManager = UIStateManager.getInstance();

  aboutToAppear() {
    // Subscribe to UI events
    this.uiManager.subscribe('showNewTask', () => {
      this.isNewTaskUI = true;
    });

    this.uiManager.subscribe('hideNewTask', () => {
      this.isNewTaskUI = false;
    });
  }

  build() {
    Stack() {
      Column() {
        HeaderUI()
        BodyUI()
        FooterUI()
      }
      .height('100%')
      .width('100%')

      if (this.isNewTaskUI) {
        NewTaskUI()
      }
    }
  }
}