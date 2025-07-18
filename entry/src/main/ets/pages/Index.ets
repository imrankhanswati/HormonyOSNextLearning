import { HeaderUI } from './UI/HeaderUI'
import { BodyUI } from './UI/BodyUI'
import { FooterUI } from './UI/FooterUI'

@Entry
@Component
struct Index {
  build() {
    Column() {
      HeaderUI()
      BodyUI()
      FooterUI()
    }
    .height('100%')
    .width('100%')
  }
}