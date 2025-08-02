// Define specific event types
export type UIEventType = 'showNewTask' | 'hideNewTask';

// State manager for UI interactions
export class UIStateManager {
  private static instance: UIStateManager;
  private listeners: Map<UIEventType, () => void> = new Map();

  static getInstance(): UIStateManager {
    if (!UIStateManager.instance) {
      UIStateManager.instance = new UIStateManager();
    }
    return UIStateManager.instance;
  }

  subscribe(event: UIEventType, callback: () => void) {
    this.listeners.set(event, callback);
  }

  emit(event: UIEventType) {
    const callback = this.listeners.get(event);
    if (callback) {
      callback();
    }
  }
}