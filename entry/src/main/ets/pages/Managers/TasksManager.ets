export enum TaskState {
  InComplete = 'inComplete',
  Complete = 'complete',
  InProgress = 'inProgress',
  Deleted = 'deleted'
}

export enum TaskPriority {
  Lowest = 0,
  Low = 1,
  Normal = 2,
  High = 3,
  Highest = 4
}

export interface Task {
  description: string
  state: TaskState
  priority: TaskPriority
}