import { CommonConstants } from '../common/constants/CommonConstants';
import { ListItemData } from '../common/bean/ListItemData';

/**
 * This is the general detail page component that can add multiple items to the list.
 */
@Component
export struct DetailListComponent {
  private detailList: Array<ListItemData>;

  build() {
    Column() {
      List() {
        ForEach(this.detailList, (listItemData: ListItemData) => {
          ListItem() {
            Row() {
              Text(listItemData.title)
                .fontSize($r('app.float.name_text_size'))
                .fontColor($r('app.color.text'))
              Blank()
              Text(listItemData.summary)
                .fontSize($r('app.float.app_info_sub_title_size'))
                .fontColor($r('app.color.text_opacity'))
            }
            .width(CommonConstants.ROW_WIDTH_PERCENT)
            .height($r('app.float.list_height'))
          }
        }, (listItemData, index) => index + JSON.stringify(listItemData))
      }
      .divider({
        strokeWidth: $r('app.float.divider_stroke_width'),
        color: $r('app.color.divider')
      })
    }
    .width(CommonConstants.DETAIL_LIST_WIDTH_PERCENT)
    .padding({
      top: $r('app.float.list_padding_top'),
      bottom: $r('app.float.list_padding_bottom'),
      left: $r('app.float.list_padding_left'),
      right: $r('app.float.list_padding_right')
    })
    .margin({ top: $r('app.float.name_text_padding_top') })
    .backgroundColor($r('app.color.start_window_background'))
    .borderRadius($r('app.float.detail_list_radius'))
  }
}