/**
 * Basic list item data bean.
 */
export class ListItemData {
  /**
   * Indicates unique id for list item.
   */
  id: number;
  
  /**
   * Indicates list item title.
   */
  title: Resource;

  /**
   * Indicates list item icon.
   */
  icon: Resource;

  /**
   * Indicates list item summary.
   */
  summary: Resource;

  /**
   * Constructor for ListItemData.
   * @param id - Unique id for the list item.
   * @param title - Title of the list item.
   * @param icon - Icon of the list item.
   * @param summary - Summary of the list item.
   */
  constructor(id: number, title: Resource, icon: Resource, summary: Resource) {
    this.id = id;
    this.title = title;
    this.icon = icon;
    this.summary = summary;
  }

}